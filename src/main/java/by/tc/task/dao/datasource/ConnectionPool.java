package by.tc.task.dao.datasource;

import by.tc.task.dao.exception.ConnectionPoolException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.concurrent.ArrayBlockingQueue;

import java.util.concurrent.BlockingQueue;

/**
 * Created by Y50-70 on 09.01.2018.
 */
public class ConnectionPool {
    private BlockingQueue<Connection> availableConnections;
    private BlockingQueue<Connection> givenAwayConnections;

    public void initPool() throws ConnectionPoolException {
        try {
            Class.forName(SourceMetaData.DRIVER);
            availableConnections = new ArrayBlockingQueue<>(SourceMetaData.POOL_SIZE);
            givenAwayConnections = new ArrayBlockingQueue<>(SourceMetaData.POOL_SIZE);
            for (int i = 0; i < SourceMetaData.POOL_SIZE; i++) {
                Connection connection = DriverManager.getConnection(SourceMetaData.URL, SourceMetaData.USERNAME, SourceMetaData.PASSWORD);
                availableConnections.add(connection);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            throw new ConnectionPoolException(ex);
        }
    }

    public Connection getConnectionFromPool() throws ConnectionPoolException {
        Connection connection;
        try {
            connection = availableConnections.take();
            givenAwayConnections.add(connection);
        } catch (InterruptedException ex) {
            throw new ConnectionPoolException(ex);
        }
        return connection;
    }

    public void returnConnectionToPool(Connection connection) {
        givenAwayConnections.remove(connection);
        availableConnections.add(connection);
        System.out.println(availableConnections.size() + " available, " + givenAwayConnections.size() + " given away");
    }

    public void closePool() throws ConnectionPoolException{
        try{
            closeQueue(availableConnections);
            closeQueue(givenAwayConnections);
        }catch (SQLException ex){
            throw new ConnectionPoolException(ex);
        }
    }

    private void closeQueue (BlockingQueue<Connection> queue) throws SQLException{
        Connection connection;
        while ((connection = queue.poll()) != null){
            if (!connection.getAutoCommit()){
                connection.commit();
            }
            connection.close();
        }
    }
}

