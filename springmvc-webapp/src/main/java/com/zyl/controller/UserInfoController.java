/**
 * Zhuyl
 * Created On 2017-05-01
 */
package com.zyl.controller;

import com.zyl.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashMap;
import java.util.Map;

/**
 * @author zhuyl<a href="zhuyouliangcn@gmail.com">zhu Youliang</a>
 * @version $Id$
 */
@Controller
@RequestMapping("/user")
public class UserInfoController {
    private Map<String, User> users = new HashMap<String, User>();

    public UserInfoController() {
        users.put("zhangsan", new User("zhangsan", "男", 20));
        users.put("lisi", new User("lisi", "女", 20));
        users.put("wangwu", new User("wangwu", "男", 21));
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("user", users);
        return "userlist";
    }
}