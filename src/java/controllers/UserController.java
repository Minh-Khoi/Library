/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import models.dao.*;
import models.dto.*;
import java.util.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
        
    @RequestMapping(value="/listuser", method = RequestMethod.POST)
    public String list(@ModelAttribute(value = "user") User user, ModelMap mod){
        UserDAO dao = new UserDAO();
        User us = dao.readByID(user.getUserID());
        if(us != null){
            if(us.getPassword().equals(user.getPassword())){
                List<User> list = dao.readAll();
                mod.put("list", list);
                String display="none";
                if (us.getUserID()==1){
                    display = "";
                }
                mod.put("display", display);
                mod.put("usingUser", user);
                return "searchboard-user";
            }
        }
        return "login";
    }
    
    
    
    
}
