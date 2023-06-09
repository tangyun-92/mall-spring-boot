package com.tang.mall.common;

import com.sun.org.apache.xpath.internal.operations.Bool;
import com.tang.mall.exception.MallExceptionEnum;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 通用返回对象
 * @param <T>
 */
@ApiModel(value = "result", description = "返回值对象")
public class ApiRestResponse<T> {

    @ApiModelProperty(value = "状态：200-成功", name = "status", dataType = "Integer")
    private Integer status;

    private Boolean success;

    @ApiModelProperty(value = "信息提示", name = "msg", dataType = "Integer")
    private String msg;

    @ApiModelProperty(value = "返回数据", name = "data", dataType = "T")
    private T data;

    private static final int OK_CODE = 200;
    private static final String OK_MSG = "SUCCESS";
    private static final Boolean OK_SUCCESS = true;

    public ApiRestResponse(Integer status, String msg, T data) {
        this.status = status;
        this.msg = msg;
        this.data = data;
    }

    public ApiRestResponse(Integer status, Boolean success, String msg) {
        this.status = status;
        this.msg = msg;
        this.success = success;
    }

    public ApiRestResponse() {
        this(OK_CODE, OK_SUCCESS, OK_MSG);
    }

    public static <T> ApiRestResponse<T> success() {
        return new ApiRestResponse<>();
    }

    public static <T> ApiRestResponse<T> success(T result) {
        ApiRestResponse<T> response = new ApiRestResponse<>();
        response.setData(result);
        return response;
    }

    public static <T> ApiRestResponse error(MallExceptionEnum ex) {
        return new ApiRestResponse<>(ex.getCode(), false, ex.getMsg());
    }

    public static ApiRestResponse error(Integer code, Boolean success, String message) {
        return new ApiRestResponse(code, false, message);
    }

    @Override
    public String toString() {
        return "ApiRestResponse{" +
                "status=" + status +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                '}';
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }
}
