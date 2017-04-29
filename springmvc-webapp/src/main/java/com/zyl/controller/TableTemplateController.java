/**
 * Zhuyl
 * Created On 2017-04-29
 */
package com.zyl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zhuyl<a href="zhuyouliangcn@gmail.com">zhu Youliang</a>
 * @version $Id$
 */
@Controller
@RequestMapping("/table")
public class TableTemplateController {

    @RequestMapping("/template")
    public String tableTemplate() {
        return "tableTemplate";
    }
}