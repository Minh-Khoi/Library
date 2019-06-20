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
public class DealController {
    
    @RequestMapping(value = "/listdeal/{usingUserID}", method = RequestMethod.GET)
    public String list(@PathVariable(value = "usingUserID") int usingUserID, ModelMap mod ){
        DealDAO dao = new DealDAO();
        List<Deal> list = dao.readAll();
        String display = "none";
        UserDAO userdao = new UserDAO();
        User us = userdao.readByID(usingUserID);
        mod.put("list", list);
        if(usingUserID == 1 ){
            display= "";
        }
        mod.put("display", display);
        mod.put("usingUser", us);
        return "searchboard-deal";
    }
}
