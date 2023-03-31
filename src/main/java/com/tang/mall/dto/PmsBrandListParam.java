package com.tang.mall.dto;

import io.swagger.annotations.ApiModelProperty;

public class PmsBrandListParam {

    @ApiModelProperty(value = "品牌名称", name = "name", dataType = "String")
    private String name;

    @ApiModelProperty(value = "是否为品牌制造商：0-不是 1-是", name = "factoryStatus", dataType = "Integer")
    private Integer factoryStatus;

    @ApiModelProperty(value = "当前第几页", name = "pageNum", dataType = "Integer")
    private Integer pageNum=1;

    @ApiModelProperty(value = "每页显示条数", name = "pageSize", dataType = "Integer")
    private Integer pageSize=10;

    @Override
    public String toString() {
        return "PmsBrandListReq{" +
                "name='" + name + '\'' +
                ", factoryStatus=" + factoryStatus +
                ", pageNum=" + pageNum +
                ", pageSize=" + pageSize +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getFactoryStatus() {
        return factoryStatus;
    }

    public void setFactoryStatus(Integer factoryStatus) {
        this.factoryStatus = factoryStatus;
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
