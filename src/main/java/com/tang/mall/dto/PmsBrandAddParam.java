package com.tang.mall.dto;

import io.swagger.annotations.ApiModelProperty;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

public class PmsBrandAddParam {

    @NotBlank(message = "name不能为空")
    @ApiModelProperty(value = "品牌名称", name = "name", dataType = "String", required = true)
    private String name;

    @NotBlank(message = "firstLetter不能为空")
    @ApiModelProperty(value = "首字母", name = "firstLetter", dataType = "String", required = true)
    private String firstLetter;

    @NotNull(message = "sort不能为空")
    @ApiModelProperty(value = "排序", name = "sort", dataType = "Integer", required = true)
    private Integer sort;

    @NotNull(message = "factoryStatus不能为空")
    @ApiModelProperty(value = "是否为品牌制造商：0-不是 1-是", name = "factoryStatus", dataType = "String", required = true)
    private String factoryStatus;

    @ApiModelProperty(value = "显示状态：0-不显示 1-显示", name = "showStatus", dataType = "String")
    private String showStatus;

    @ApiModelProperty(value = "产品数量", name = "productCount", dataType = "Integer")
    private Integer productCount;

    @ApiModelProperty(value = "产品评论数量", name = "productCommentCount", dataType = "Integer")
    private Integer productCommentCount;

    @ApiModelProperty(value = "品牌logo", name = "logo", dataType = "String")
    private String logo;

    @ApiModelProperty(value = "专区大图", name = "bigPic", dataType = "String")
    private String bigPic;

    @ApiModelProperty(value = "品牌故事", name = "brandStory", dataType = "String")
    private String brandStory;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirstLetter() {
        return firstLetter;
    }

    public void setFirstLetter(String firstLetter) {
        this.firstLetter = firstLetter;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getFactoryStatus() {
        return factoryStatus;
    }

    public void setFactoryStatus(String factoryStatus) {
        this.factoryStatus = factoryStatus;
    }

    public String getShowStatus() {
        return showStatus;
    }

    public void setShowStatus(String showStatus) {
        this.showStatus = showStatus;
    }

    public Integer getProductCount() {
        return productCount;
    }

    public void setProductCount(Integer productCount) {
        this.productCount = productCount;
    }

    public Integer getProductCommentCount() {
        return productCommentCount;
    }

    public void setProductCommentCount(Integer productCommentCount) {
        this.productCommentCount = productCommentCount;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getBigPic() {
        return bigPic;
    }

    public void setBigPic(String bigPic) {
        this.bigPic = bigPic;
    }

    public String getBrandStory() {
        return brandStory;
    }

    public void setBrandStory(String brandStory) {
        this.brandStory = brandStory;
    }
}