package org.goskyer.controller;

import org.goskyer.common.FastHttp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private FastHttp httpClient;

    @RequestMapping
    public String login() {
        return "system/login.jsp";
    }

    @RequestMapping("/http")
    @ResponseBody
    public String http() throws IOException {
        return httpClient.get("http://localhost:8080/login");
    }

}
