package com.tang.mall.exception;

/**
 * 异常枚举
 */
public enum MallExceptionEnum {
    REQUEST_PARAM_ERROR(10001, "参数错误"),
    SYSTEM_ERROR(20000, "系统异常");

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
