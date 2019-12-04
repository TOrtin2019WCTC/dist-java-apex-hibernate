package hibernate.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
public class HomeController {

    @RequestMapping("/home")
    public String showHomePage(){
        return "index";
    }

    @RequestMapping("/")
    public String defaultPage(){
        return"index";
    }

    @RequestMapping("/error")
    public String showErrorPage(HttpServletRequest request, Model theModel){
        int httpErrorCode = (Integer)request.getAttribute("javax.servlet.error.status_code");

        String message;

        switch(httpErrorCode){
            case 404:
                message = "Error 404: Resource not found";
                break;
            case 500:
                message = "Error 500: Internal server error";
                break;
            case 402:
                message = "Error 402: Payment Required";
                break;
            default:
                message = "Mistakes were made. Errors have been found";
        }

        theModel.addAttribute("errorMessage", message);
        return "errors";
    }

    @RequestMapping("/octane")
    public String octane(){
        return "octane";
    }

    @RequestMapping("/wraith")
    public String wraith(){
        return "wraith";
    }

    @RequestMapping("/map")
      public String map(){
        return "map";
    }

    @RequestMapping("/legends")
    public String legends(){
        return "legends";
    }








}
