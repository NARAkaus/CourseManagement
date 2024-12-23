package com.cow.horse.dao.Homework;

import com.cow.horse.dto.SubHomework;
import com.github.pagehelper.PageRowBounds;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Description 提交作业mapper层
 * Author: cow.horse
 * Date2019/10/21 21:08
 **/
@Mapper
public interface SubHomeworkMapper {
    /**
     * description: 新增提交作业信息
     *
     * @param subHomework
     * @return void
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
    void delete(@Param("ids") List<Long> ids);

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
     * description: 获取提交作业信息
     * param: rowBounds
     * param: condition
     * return: List<SubHomework>
     * Author: cow.horse
     *
     * @Date: 2022/3/11 15:03
     */
    List<SubHomework> getSubHomeworkList(PageRowBounds rowBounds, @Param("condition") Map<String, Object> condition);


}
