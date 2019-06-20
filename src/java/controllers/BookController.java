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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookController {
    
    @RequestMapping(value = "/listbook/{usingUserID}", method = RequestMethod.GET)
    public String list(@PathVariable(value = "usingUserID") int usingUserID, ModelMap mod){
        BookDAO dao = new BookDAO();
        List<Book> list = dao.readAll();
        UserDAO userdao = new UserDAO();
        User us = userdao.readByID(usingUserID);
        String display="none";
        if(usingUserID==1){
            display="";
        }
        mod.put("list", list);
        mod.put("display", display);
        mod.put("usingUser", us);
        mod.addAttribute("usingUser", us);
        return "searchboard-book";
    }

    @RequestMapping(value = "/addBook", method = RequestMethod.POST)
    public String moveToAddBook(@ModelAttribute(value = "usingUser") User us, ModelMap mod){
        if (us.getUserID() == 1){
            mod.put("usingUser", us);
            mod.addAttribute("usingUser", us);
            mod.addAttribute("addingBook", new Book());
            return "addUser";
        }
        return "login";
    }
    
//    @RequestMapping(value = "/addBook/{usingUserID}", method = RequestMethod.GET)
//    public String moveToAddBook(@PathVariable(value = "usingUserID") int usingUserID, ModelMap mod){
//        if (usingUserID == 1){
//            UserDAO userdao = new UserDAO();
//            User us = userdao.readByID(usingUserID);
//            mod.put("usingUser", us);
//            return "addBook";
//        }
//        return "login";
//    }
    
//    @RequestMapping(value = "/listbook/1", method = RequestMethod.POST)
//    public String addBook(@ModelAttribute(value = "book") Book book, ModelMap mod){
//        return "searchboard-book";
//    }
}
