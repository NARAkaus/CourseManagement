package com.cow.horse.controller.User;

import com.cow.horse.dto.User;
import com.cow.horse.service.User.UserService;
import com.cow.horse.utils.PassToken;
import com.cow.horse.utils.UserLoginToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;


/**
 * Description 登陆用户控制层
 * Author: cow.horse
 * Date2019/10/21 21:00
 **/
@RestController
@UserLoginToken
@RequestMapping("/api/sms/user")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/login")
    @PassToken
    public User getStudentInfo(@RequestParam Map<String, Object> condition) {
        Map<String, Object> map = new HashMap<>();
        map.put("username", condition.get("username").toString());
        map.put("password", condition.get("password").toString());
        map.put("level", condition.get("level"));
        User user = userService.getStudentInfo(map);
        if(user == null) {
            return null;
        }
        String token = userService.getToken(user, 24 * 60 * 60 * 1000);
        String refreshToken = userService.getToken(user, 24 * 60 * 60 * 1000); // 有效期一天
        user.setToken(token);
        user.setRefreshToken(refreshToken);
        return user;
    }

    @GetMapping("/edit/password")
    public boolean update(@RequestParam Map<String, Object> condition) {
        Map<String, Object> map = new HashMap<>();
        map.put("username", condition.get("username").toString());
        map.put("password", condition.get("password").toString());
        map.put("passwordAgain", condition.get("passwordAgain").toString());
        ;
        map.put("level", condition.get("level").toString());
        return userService.update(map);
    }

    @GetMapping("/getTree")
    public List<Object> getTree() {
        return userService.getTree();
    }
}
