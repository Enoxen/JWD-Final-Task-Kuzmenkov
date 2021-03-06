package by.tc.task.dao.datasource;

import java.util.ResourceBundle;

/**
 * Created by Y50-70 on 09.01.2018.
 */
public class SourceMetaData {
    private static final String FILE_PATH = "db";

    private static final String URL_ATTR_NAME = "MYSQL_DB_URL";
    private static final String DRIVER_ATTR_NAME = "MYSQL_DB_DRIVER_CLASS";
    private static final String USERNAME_ATTR_NAME = "MYSQL_DB_USERNAME";
    private static final String PASSWORD_ATTR_NAME = "MYSQL_DB_PASSWORD";
    private static final String POOL_SIZE_ATTR_NAME = "MYSQL_DB_POOL_SIZE";


    public static final String URL;
    public static final String USERNAME;
    public static final String PASSWORD;
    public static final String DRIVER;
    public static final Integer POOL_SIZE;

    static {
        ResourceBundle resourceBundle = ResourceBundle.getBundle(FILE_PATH);
        DRIVER = resourceBundle.getString(DRIVER_ATTR_NAME);
        URL = resourceBundle.getString(URL_ATTR_NAME);
        USERNAME = resourceBundle.getString(USERNAME_ATTR_NAME);
        PASSWORD = resourceBundle.getString(PASSWORD_ATTR_NAME);
        POOL_SIZE = Integer.parseInt(resourceBundle.getString(POOL_SIZE_ATTR_NAME));
    }

    private SourceMetaData(){}
}

