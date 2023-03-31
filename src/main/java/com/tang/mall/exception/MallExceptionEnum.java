package com.tang.mall.exception;

/**
 * 异常枚举
 */
public enum MallExceptionEnum {
    REQUEST_PARAM_ERROR(10001, "参数错误"),
    NAME_EXISTED(10002, "不允许重名"),
    CREATE_FAILED(10003, "创建失败"),
    UPDATE_FAILED(10004, "更新失败"),
    DELETE_FAILED(10005, "删除失败"),
    REGISTER_FAILED(10006, "注册失败"),
    WRONG_PASSWORD(10007, "用户名或密码错误"),
    SYSTEM_ERROR(20000, "系统异常"),
    NOT_AUTH(20001, "没有相关权限，请联系管理员"),
    TOKEN_LOSE_EFFICACY(20002, "暂未登录或token已经过期");

    /**
     * 异常码
     */
    Integer code;
    /**
     * 异常信息
     */
    String msg;

    MallExceptionEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
