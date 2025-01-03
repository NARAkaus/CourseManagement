package com.cow.horse.service.User;

import com.cow.horse.dto.User;

import java.util.List;
import java.util.Map;

/**
 * Description 登陆用户接口
 * Author: cow.horse
 * Date2019/10/21 21:01
 **/
public interface UserService {
  /**
  * description: 根据用户、密码登陆
  * @params: condition
  * @return: com.zjh.student_mis.dto.User
  * @Author: cow.horse
  * @Date: 2021/10/21 21:05
  */
  User getStudentInfo(Map<String, Object> condition);
  /**
   * description: 修改密码
   * @param condition
   * @return void
   * @author cow.horse
   * @Date: 2022/3/4 23:05
   */
  boolean update(Map<String, Object> condition);
  /**
  * description: 获取树状数据
  * return: List<Object>
  * Author: cow.horse
  * @Date: 2022/3/27 22:13
  */
  List<Object> getTree();
  /**
  * description: 获取token
  * @param: User
  * return: String
  * Author: cow.horse
  * @Date: 2022/3/30 23:21
  */
  String getToken(User user, long time);
  /**
  * description: 根据等级和id获取用户信息
  * @param: condition
  * return: User
  * Author: cow.horse
  * @Date: 2022/3/30 23:42
  */
  User findUser(Map<String, Object> condition);
}
