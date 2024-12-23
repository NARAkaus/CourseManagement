package com.cow.horse.dto;

/**
 * Description 作业信息实体类
 * Author: cow.horse
 * Date: 2020/3/19 10:55
 **/
public class Homework {
  /**
   * id
   */
  private Long id;
  /**
   * 课程id
   */
  private String courseId;
  // 课程名称
  private String name;
  // 作业描述
  private String desc;
  // 附件
  private String attachmenturl;
  // 附件
  private String attachmentname;
  // 创建时间
  private String addtime;
//  创建人
  private String createid;
//  创建人
  private String creater;


  public Homework() {
  }


  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getCourseId() {
    return courseId;
  }

  public void setCourseId(String courseId) {
    this.courseId = courseId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDesc() {
    return desc;
  }

  public void setDesc(String desc) {
    this.desc = desc;
  }

  public String getAttachmenturl() {
    return attachmenturl;
  }

  public void setAttachmenturl(String attachmenturl) {
    this.attachmenturl = attachmenturl;
  }

  public String getAttachmentname() {
    return attachmentname;
  }

  public void setAttachmentname(String attachmentname) {
    this.attachmentname = attachmentname;
  }

  public String getAddtime() {
    return addtime;
  }

  public void setAddtime(String addtime) {
    this.addtime = addtime;
  }

  public String getCreateid() {
    return createid;
  }

  public void setCreateid(String createid) {
    this.createid = createid;
  }

  public String getCreater() {
    return creater;
  }

  public void setCreater(String creater) {
    this.creater = creater;
  }

  @Override
  public String toString() {
    return "Homework{" +
            "id=" + id +
            ", courseId='" + courseId + '\'' +
            ", name='" + name + '\'' +
            ", desc='" + desc + '\'' +
            ", attachmenturl='" + attachmenturl + '\'' +
            ", attachmentname='" + attachmentname + '\'' +
            ", addtime='" + addtime + '\'' +
            ", createid='" + createid + '\'' +
            ", creater='" + creater + '\'' +
            '}';
  }
}
