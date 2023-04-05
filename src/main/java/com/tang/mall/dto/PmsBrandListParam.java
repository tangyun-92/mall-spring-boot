package com.tang.mall.dto;

import io.swagger.annotations.ApiModelProperty;

public class PmsBrandListParam {

    @ApiModelProperty(value = "品牌名称", name = "name", dataType = "String")
    private String name;

    @ApiModelProperty(value = "是否为品牌制造商：0-不是 1-是", name = "factoryStatus", dataType = "Integer")
    private Integer factoryStatus;

    @ApiModelProperty(value = "当前第几页", name = "pageNum", dataType = "Integer")
    private Integer current=1;

    @ApiModelProperty(value = "每页显示条数", name = "pageSize", dataType = "Integer")
    private Integer pageSize=10;

    @Override
    public String toString() {
        return "PmsBrandListReq{" +
                "name='" + name + '\'' +
                ", factoryStatus=" + factoryStatus +
                ", pageNum=" + current +
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

    public Integer getCurrent() {
        return current;
    }

    public void setCurrent(Integer current) {
        this.current = current;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
