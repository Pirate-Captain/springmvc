package com.zyl.exception; /**
 * Zhuyl
 * Created On 2017-05-01
 */

/**
 * @author zhuyl<a href="zhuyouliangcn@gmail.com">zhu Youliang</a>
 * @version $Id$
 */
public class UserException extends RuntimeException {
    public UserException() {
        super();
    }

    public UserException(String message) {
        super(message);
    }

    public UserException(String message, Throwable cause) {
        super(message, cause);
    }

    public UserException(Throwable cause) {
        super(cause);
    }
}