package com.cow.horse.dto;

/**
 * Description 作业信息实体类
 * Author: cow.horse
 * Date: 2020/3/19 10:55
 **/
public class SubHomework {
  /**
   * id
   */
  private Long id;

  /**
   * 作业id
   */
  private String homeworkid;
  // 学生id
  private String userid;
  // 学生姓名
  private String username;
  // 附件
  private String attaurl;
  // 附件
  private String attaname;
  // 创建时间
  private String addtime;


  public SubHomework() {
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getHomeworkid() {
    return homeworkid;
  }

  public void setHomeworkid(String homeworkid) {
    this.homeworkid = homeworkid;
  }

  public String getUserid() {
    return userid;
  }

  public void setUserid(String userid) {
    this.userid = userid;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getAttaurl() {
    return attaurl;
  }

  public void setAttaurl(String attaurl) {
    this.attaurl = attaurl;
  }

  public String getAttaname() {
    return attaname;
  }

  public void setAttaname(String attaname) {
    this.attaname = attaname;
  }

  public String getAddtime() {
    return addtime;
  }

  public void setAddtime(String addtime) {
    this.addtime = addtime;
  }

  @Override
  public String toString() {
    return "SubHomework{" +
            "id=" + id +
            ", homeworkid='" + homeworkid + '\'' +
            ", userid='" + userid + '\'' +
            ", username='" + username + '\'' +
            ", attaurl='" + attaurl + '\'' +
            ", attaname='" + attaname + '\'' +
            ", addtime='" + addtime + '\'' +
            '}';
  }
}
