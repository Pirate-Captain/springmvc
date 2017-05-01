/**
 * Zhuyl
 * Created On 2017-05-01
 */
package com.zyl.controller;

import com.zyl.exception.UserException;
import com.zyl.model.User;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
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
        return "user.list";
    }

    @RequestMapping(value="/add", method = RequestMethod.GET)
    public String add(@ModelAttribute("user")User user) {
        return "user.add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@Validated User user, BindingResult bindingResult) {
        if ( bindingResult.hasErrors() ) {
            return "user.add";
        }
        users.put(user.getName(), user);
        return "redirect:/user/list";
    }

    @RequestMapping(value = "/{name}", method = RequestMethod.GET)
    public String show(@PathVariable String name, Model model) {
        model.addAttribute("user", users.get(name));
        return "user.show";
    }

    @RequestMapping(value = "/{name}/update", method = RequestMethod.GET)
    public String update(@PathVariable String name, Model model) {
        model.addAttribute("user", users.get(name));
        return "user.update";
    }

    @RequestMapping(value = "/{name}/update", method = RequestMethod.POST)
    public String update(@PathVariable String name, @Validated User user, BindingResult bindingResult) {
        if ( bindingResult.hasErrors() ) {
            return "user.update";
        }
        users.put(name, user);
        return "redirect:/user/list";
    }

    @RequestMapping(value = "/delete/{name}", method = RequestMethod.GET)
    public String delete(@PathVariable String name) {
        if ( StringUtils.equals("lisi", name) ) {
            throw new UserException("不能删除该用户");
        }
        users.remove(name);
        return "redirect:/user/list";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.GET)
    public String upload(Model model) {
        model.addAttribute("user", new User());
        return "user.upload";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String upload(MultipartFile multipartFile) {
        System.out.println(multipartFile.getOriginalFilename() + "：" + multipartFile.getContentType() + "：" + multipartFile.getSize());
        return "redirect:user/list";
    }

    /**
     * 局部异常，只能控制控制器内的异常
     * @param e
     * @param request
     * @return
     */
//    @ExceptionHandler(value={UserException.class})
//    public String handlerUserException(UserException e, HttpServletRequest request) {
//        request.setAttribute("exception", e);
//        return "user.error";
//    }
}