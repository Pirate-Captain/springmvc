/**
 * Zhuyl
 * Created On 2017-05-01
 */
package com.zyl.model;


import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

/**
 * @author zhuyl<a href="zhuyouliangcn@gmail.com">zhu Youliang</a>
 * @version $Id$
 */
public class User {
    @NotEmpty(message = "名字不能为空！")
    private String name;
    @NotEmpty(message = "性别不能为空！")
    private String sex;
    @Range(min = 10, max = 30, message = "年龄不合适")
    private int age;

    public User() {

    }

    public User(String name, String sex, int age) {
        this.name = name;
        this.sex = sex;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}