package com.tang.mall.mbg.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.math.BigDecimal;

public class UmsMemberLevel implements Serializable {
    private Long id;

    private String name;

    private Integer growthPoint;

    @ApiModelProperty(value = "是否为默认等级：0->不是；1->是")
    private String defaultStatus;

    @ApiModelProperty(value = "免运费标准")
    private BigDecimal freeFreightPoint;

    @ApiModelProperty(value = "每次评价获取的成长值")
    private Integer commentGrowthPoint;

    @ApiModelProperty(value = "是否有免邮特权")
    private String priviledgeFreeFreight;

    @ApiModelProperty(value = "是否有签到特权")
    private String priviledgeSignIn;

    @ApiModelProperty(value = "是否有评论获奖励特权")
    private String priviledgeComment;

    @ApiModelProperty(value = "是否有专享活动特权")
    private String priviledgePromotion;

    @ApiModelProperty(value = "是否有会员价格特权")
    private String priviledgeMemberPrice;

    @ApiModelProperty(value = "是否有生日特权")
    private String priviledgeBirthday;

    private String note;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getGrowthPoint() {
        return growthPoint;
    }

    public void setGrowthPoint(Integer growthPoint) {
        this.growthPoint = growthPoint;
    }

    public String getDefaultStatus() {
        return defaultStatus;
    }

    public void setDefaultStatus(String defaultStatus) {
        this.defaultStatus = defaultStatus;
    }

    public BigDecimal getFreeFreightPoint() {
        return freeFreightPoint;
    }

    public void setFreeFreightPoint(BigDecimal freeFreightPoint) {
        this.freeFreightPoint = freeFreightPoint;
    }

    public Integer getCommentGrowthPoint() {
        return commentGrowthPoint;
    }

    public void setCommentGrowthPoint(Integer commentGrowthPoint) {
        this.commentGrowthPoint = commentGrowthPoint;
    }

    public String getPriviledgeFreeFreight() {
        return priviledgeFreeFreight;
    }

    public void setPriviledgeFreeFreight(String priviledgeFreeFreight) {
        this.priviledgeFreeFreight = priviledgeFreeFreight;
    }

    public String getPriviledgeSignIn() {
        return priviledgeSignIn;
    }

    public void setPriviledgeSignIn(String priviledgeSignIn) {
        this.priviledgeSignIn = priviledgeSignIn;
    }

    public String getPriviledgeComment() {
        return priviledgeComment;
    }

    public void setPriviledgeComment(String priviledgeComment) {
        this.priviledgeComment = priviledgeComment;
    }

    public String getPriviledgePromotion() {
        return priviledgePromotion;
    }

    public void setPriviledgePromotion(String priviledgePromotion) {
        this.priviledgePromotion = priviledgePromotion;
    }

    public String getPriviledgeMemberPrice() {
        return priviledgeMemberPrice;
    }

    public void setPriviledgeMemberPrice(String priviledgeMemberPrice) {
        this.priviledgeMemberPrice = priviledgeMemberPrice;
    }

    public String getPriviledgeBirthday() {
        return priviledgeBirthday;
    }

    public void setPriviledgeBirthday(String priviledgeBirthday) {
        this.priviledgeBirthday = priviledgeBirthday;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", growthPoint=").append(growthPoint);
        sb.append(", defaultStatus=").append(defaultStatus);
        sb.append(", freeFreightPoint=").append(freeFreightPoint);
        sb.append(", commentGrowthPoint=").append(commentGrowthPoint);
        sb.append(", priviledgeFreeFreight=").append(priviledgeFreeFreight);
        sb.append(", priviledgeSignIn=").append(priviledgeSignIn);
        sb.append(", priviledgeComment=").append(priviledgeComment);
        sb.append(", priviledgePromotion=").append(priviledgePromotion);
        sb.append(", priviledgeMemberPrice=").append(priviledgeMemberPrice);
        sb.append(", priviledgeBirthday=").append(priviledgeBirthday);
        sb.append(", note=").append(note);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}