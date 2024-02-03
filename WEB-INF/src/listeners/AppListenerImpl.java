package listeners;

import javax.servlet.ServletContextListener;
import javax.servlet.ServletContextEvent;
// import javax.servlet.Servlet;
import javax.servlet.ServletContext;

import java.util.ArrayList;

import models.City;
import models.Country;
import models.Category;

public class AppListenerImpl implements ServletContextListener {
    public void contextInitialized(ServletContextEvent ev) {

        ServletContext context = ev.getServletContext();

        System.out.println("###########################");
        System.out.println("############# GRO Starting ############");
        System.out.println("-------------- Data Loading --------------");

        ArrayList<Country> countries = Country.collectAllCountries();
        context.setAttribute("countries", countries);

        ArrayList<City> cities = City.collectAllCities();
        context.setAttribute("cities", cities);
        System.out.println(cities);

        ArrayList<Category> categories = Category.collectAllCategory();
        context.setAttribute("categories", categories);
    }

    public void contextDestroyed(ServletContextEvent ev) {

    }
}
