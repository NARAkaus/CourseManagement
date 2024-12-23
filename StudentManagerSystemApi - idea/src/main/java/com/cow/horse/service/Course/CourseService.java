package com.cow.horse.service.Course;

import com.cow.horse.dto.Course;
import com.cow.horse.utils.PagingResult;
import org.apache.ibatis.session.RowBounds;

import java.util.List;
import java.util.Map;

/**
 * Description 课程信息service层
 * Author: cow.horse
 * Date: 2020/3/11 14:49
 **/
public interface CourseService {
  /**
   * description: 新增课程信息
   * @param course
   * return void
   * @author cow.horse
   * @Date 2020/3/4 23:05
   */
  void addCourse(Course course);
  /**
   * description: 删除课程信息
   *
   * @param ids
   * @return void
   * @author cow.horse
   * @date 2019/8/29 14:55
   */
  void delete(List<Long> ids);

  /**
   * description: 修改课程信息
   *
   * @param course
   * @return void
   * @author cow.horse
   * @date 2019/8/29 14:55
   */
  void update(Course course);
  /**
  * description: 查询课程信息
  * @param: rowBounds
  * @param: condition
  * return: com.jw.zjh.sms.utils.PagingResult
  * Author: cow.horse
  * @Date: 2022/3/11 14:49
  */
  PagingResult<Course> getCourseList(RowBounds rowBounds, Map<String, Object> condition);
  /**
  * description: 根据专业、学期获取课程列表
  * @param:  Map<String, Object> condition
  * return: List<Course>
  * Author: cow.horse
  * @Date: 2022/3/31 22:28
  */
  List<Course> getCourseByMap(Map<String, Object> condition);
}

