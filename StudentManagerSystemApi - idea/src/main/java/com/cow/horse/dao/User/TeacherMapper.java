package com.cow.horse.dao.User;

import com.github.pagehelper.PageRowBounds;
import com.cow.horse.dto.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Description 教师用户mapper层
 * Author: cow.horse
 * Date: 2020/3/7 15:11
 **/
@Mapper
public interface TeacherMapper {

  /**
   * description: 新增教师账号信息
   * @param user
   * @return void
   * @author cow.horse
   * @date 2020/3/4 23:05
   */
  void addTeacher(User user);

  /**
   * description: 删除教师账号
   *
   * @param ids
   * @return void
   * @author cow.horse
   * @date 2019/8/29 14:55
   */
  void delete(@Param("ids") List<Integer> ids);

  /**
   * description: 修改教师账号
   *
   * @param user
   * @return void
   * @author cow.horse
   * @date 2019/8/29 14:55
   */
  void update(User user);

  /**
   * description: 获取教师账号信息列表
   * @param rowBounds
   * @author cow.horse
   * @return java.util.List<com.zjh.sms.dto.User>
   * @date 2020/3/4 23:05
   */
  List<User> getTeacherList(PageRowBounds rowBounds, @Param("condition") Map<String, Object> condition);
  /**
   * description:
   * @param:
   * return:
   * Author: cow.horse
   * @Date: 2022/3/30 23:43
   */
  User getUserById(@Param("id") String id);
  /**
   * description: 查看人数
   * return: Integer
   * Author: cow.horse
   * @Date: 2022/3/11 15:03
   */
  Integer checkCodeCount();
}
