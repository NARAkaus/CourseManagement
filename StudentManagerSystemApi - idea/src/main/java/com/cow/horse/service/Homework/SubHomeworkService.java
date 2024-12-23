package com.cow.horse.service.Homework;

import com.cow.horse.dto.SubHomework;
import com.cow.horse.utils.PagingResult;
import org.apache.ibatis.session.RowBounds;

import java.util.List;
import java.util.Map;

/**
 * Description 提交作业接口
 * Author: cow.horse
 * Date2019/10/21 21:01
 **/
public interface SubHomeworkService {
    /**
     * description: 新增提交作业信息
     * @param subHomework
     * return void
     * @author cow.horse
     * @Date 2020/3/4 23:05
     */
    void addSubHomework(SubHomework subHomework);

    /**
     * description: 删除提交作业信息
     *
     * @param ids
     * @return void
     * @author cow.horse
     * @date 2019/8/29 14:55
     */
    void delete(List<Long> ids);

    /**
     * description: 修改提交作业信息
     *
     * @param subHomework
     * @return void
     * @author cow.horse
     * @date 2019/8/29 14:55
     */
    void update(SubHomework subHomework);

    /**
     * description: 查询提交作业信息
     * @param: rowBounds
     * @param: condition
     * return: com.jw.zjh.sms.utils.PagingResult
     * Author: cow.horse
     * @Date: 2022/3/11 14:49
     */
    PagingResult<SubHomework> getSubHomeworkList(RowBounds rowBounds, Map<String, Object> condition);

}
