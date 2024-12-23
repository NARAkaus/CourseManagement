package com.cow.horse.service.Course.impl;

import com.cow.horse.dao.Course.CoursewareMapper;
import com.cow.horse.dao.Profession.ProfessionMapper;
import com.cow.horse.dto.Homework;
import com.cow.horse.service.Course.CoursewareService;
import com.cow.horse.utils.PagingResult;
import com.github.pagehelper.PageRowBounds;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Description 作业业务层
 * Author: cow.horse
 * Date2019/10/21 21:09
 **/
@Service
public class CoursewareServiceImpl implements CoursewareService {
    @Resource
    private CoursewareMapper coursewareMapper;

    @Override
    public void addHomework(Homework homework) {
        coursewareMapper.addHomework(homework);
    }

    @Override
    public void delete(List<Long> ids) {
        coursewareMapper.delete(ids);
    }

    @Override
    public void update(Homework homework) {
        coursewareMapper.update(homework);
    }

    @Override
    public PagingResult<Homework> getHomeworkList(RowBounds rowBounds, Map<String, Object> condition) {
        PageRowBounds pageRowBounds = new PageRowBounds(rowBounds.getOffset(), rowBounds.getLimit());
        List<Homework> HomeworkList = coursewareMapper.getHomeworkList(pageRowBounds, condition);
        return new PagingResult<>(HomeworkList, pageRowBounds.getTotal());
    }

    @Override
    public List<Homework> getHomeworkByMap(Map<String, Object> condition) {
        return coursewareMapper.getHomeworkByMap(condition);
    }

}
