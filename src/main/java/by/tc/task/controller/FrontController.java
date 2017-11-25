package by.tc.task.controller;

import by.tc.task.controller.command.CommandDirector;
import by.tc.task.exception.ServiceException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Y50-70 on 09.11.2017.
 */

public class FrontController extends HttpServlet {

    /*
        Проблема с томкатом была решена, я редиректом просто посылал вечный запрос в цикле.
        Из локализации не доделал редирект для страницы, где выводится информация из бд, каюсь сразу.
        И эксепшны не залогировал, тоже каюсь, не успел, всё время ушло на раздумья по поводу вечного запроса.

    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String command = request.getParameter("command");
        CommandDirector director = new CommandDirector();
        try{
            director.getCommand(command).execute(request,response);
        }
        catch (ServiceException e){
            PrintWriter out = response.getWriter();
            out.println(e.getMessage());
            out.println(e.getStackTrace().toString());
        }
        }

    }
