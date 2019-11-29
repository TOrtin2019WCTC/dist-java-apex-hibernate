package hibernate.controllers;

import hibernate.UserService;
import hibernate.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/list")
    public String listUsers(Model theModel){
        List<User> theList = userService.getUsers();

        theModel.addAttribute("users", theList);

        return "users/list-users";
    }

    @GetMapping("/search")
    public String search(@RequestParam("searchTerm") String theSearchTerm, Model theModel){
        List<User> theList = userService.getUsersByName(theSearchTerm);

        theModel.addAttribute("users", theList);

        return "users/list-users";
    }

    @GetMapping("/delete")
    public String deleteUser(@RequestParam("userId") int theId){
        userService.deleteUser(theId);

        return"redirect:/user/list";
    }

    @RequestMapping("/showUpdateUserForm")
    public String showUpdateUserForm(@RequestParam("userId") int theId, Model theModel){
        User existingUser = userService.getUser(theId);

        theModel.addAttribute("aUser", existingUser);

        return"users/add-user-form";
    }

    @RequestMapping("/add-user-form")
    public String showAddUserForm(Model theModel){
        User newUser = new User();

        theModel.addAttribute("aUser", newUser);

        return"users/add-user-form";
    }

    @PostMapping("/save")
    public String saveUser(@Valid @ModelAttribute(name = "aUser") User newUser, BindingResult bindingResult, Model theModel, HttpServletRequest
                           request){
        if (bindingResult.hasErrors()) {
            System.out.println(bindingResult);
            return "users/add-user-form";
        }

        userService.saveUser(newUser, request.getServletContext().getRealPath("/"));

        return "redirect:/users/list";

    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder){
        StringTrimmerEditor ste = new StringTrimmerEditor(true);

        webDataBinder.registerCustomEditor(String.class, ste);
    }

}
