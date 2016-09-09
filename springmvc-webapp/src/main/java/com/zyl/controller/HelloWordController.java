/**
 * Created on 2016年9月9日
 */
package com.zyl.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zhuyl<a href="mailto:zhuyl@chsi.com.cn">zhu Youliang</a>
 * @version $Id$
 */
@Controller
@RequestMapping("/mvc")
@Scope("prototype") //这个注解用来注释用户是否是单例模式
public class HelloWordController {
    private Logger log = LoggerFactory.getLogger(this.getClass());
    private int times = 0;
    
    @RequestMapping("/helloword")
    public String hello() {
        System.out.println(times);
        log.info("Somebody has visited this info,the times is {}!", times);
        times++;
        return "hello";
    }
}