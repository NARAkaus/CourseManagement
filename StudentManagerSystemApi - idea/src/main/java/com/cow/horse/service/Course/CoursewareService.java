package com.cow.horse.service.Course;

import com.cow.horse.dto.Homework;
import com.cow.horse.utils.PagingResult;
import org.apache.ibatis.session.RowBounds;

import java.util.List;
import java.util.Map;

/**
 * Description 作业接口
 * Author: cow.horse
 * Date2019/10/21 21:01
 **/
public interface CoursewareService {
    /**
     * description: 新增作业信息
     * @param homework
     * return void
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
    void delete(List<Long> ids);

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
     * description: 查询作业信息
     * @param: rowBounds
     * @param: condition
     * return: com.jw.zjh.sms.utils.PagingResult
     * Author: cow.horse
     * @Date: 2022/3/11 14:49
     */
    PagingResult<Homework> getHomeworkList(RowBounds rowBounds, Map<String, Object> condition);

    /**
     * description: 根据专业、学期获取作业列表
     * @param:  Map<String, Object> condition
     * return: List<Homework>
     * Author: cow.horse
     * @Date: 2022/3/31 22:28
     */
    List<Homework> getHomeworkByMap(Map<String, Object> condition);
}
