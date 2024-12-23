package com.cow.horse.service.User;

import com.cow.horse.dto.User;
import com.cow.horse.utils.PagingResult;
import org.apache.ibatis.session.RowBounds;

import java.util.List;
import java.util.Map;

/**
 * Description 学生账号接口
 * Author: cow.horse
 * Date: 2020/3/7 15:04
 **/
public interface StudentService {
  /**
  * description: 新增学生账号
  * @param user
  * @return void
  * @author cow.horse
  * @date 2020/3/4 23:05
  */
  void addStudent(User user);

  /**
   * description: 删除学生账号
   *
   * @param ids
   * @return void
   * @author cow.horse
   * @date 2019/8/29 14:55
   */
  void delete(List<String> ids);

  /**
   * description: 修改学生账号
   *
   * @param user
   * @return void
   * @author cow.horse
   * @date 2019/8/29 14:55
   */
  void update(User user);

  /**
   * description: 获取学生账号信息列表
   * @param rowBounds
   * @param condition
   * @author cow.horse
   * @return com.jw.zjh.sms.utils.PagingResult
   * @date 2020/3/4 23:05
   */
  PagingResult<User> getStudentList(RowBounds rowBounds, Map<String, Object> condition);
}
