package com.cow.horse.dao.Course;

import com.cow.horse.dto.Homework;
import com.github.pagehelper.PageRowBounds;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Description 作业mapper层
 * Author: cow.horse
 * Date2019/10/21 21:08
 **/
@Mapper
public interface CoursewareMapper {
    /**
     * description: 新增作业信息
     *
     * @param homework
     * @return void
     * @author cow.horse
     * @Date 2020/3/4 23:05
     */
    void addHomework(Homework homework);

    /**
     * description: 删除作业信息
     *
     * @param ids
     * @return void
     * @author cow.horse
     * @date 2019/8/29 14:55
     */
    void delete(@Param("ids") List<Long> ids);

    /**
     * description: 修改作业信息
     *
     * @param homework
     * @return void
     * @author cow.horse
     * @date 2019/8/29 14:55
     */
    void update(Homework homework);

    /**
     * description: 获取作业信息
     * param: rowBounds
     * param: condition
     * return: List<Homework>
     * Author: cow.horse
     *
     * @Date: 2022/3/11 15:03
     */
    List<Homework> getHomeworkList(PageRowBounds rowBounds, @Param("condition") Map<String, Object> condition);



    /**
     * description: 根据专业、学期获取作业列表
     *
     * @param: condition
     * return:  List<Homework>
     * Author: cow.horse
     * @Date: 2022/3/31 22:29
     */
    List<Homework> getHomeworkByMap(@Param("condition") Map<String, Object> condition);

    /**
     * description: 根据作业id获取作业信息
     *
     * @param: String
     * return: Homework
     * Author: cow.horse
     * @Date: 2022/3/31 22:29
     */
    Homework getHomeworkById(@Param("homeworkId") String homeworkId);
}
