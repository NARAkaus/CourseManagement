package com.cow.horse.service.Homework.impl;

import com.cow.horse.dao.Homework.SubHomeworkMapper;
import com.cow.horse.dto.SubHomework;
import com.cow.horse.service.Homework.SubHomeworkService;
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
public class SubHomeworkServiceImpl implements SubHomeworkService {
    @Resource
    private SubHomeworkMapper subHomeworkMapper;


    @Override
    public void addSubHomework(SubHomework subHomework) {
        subHomeworkMapper.addSubHomework(subHomework);
    }

    @Override
    public void delete(List<Long> ids) {
        subHomeworkMapper.delete(ids);
    }

    @Override
    public void update(SubHomework subHomework) {
        subHomeworkMapper.update(subHomework);
    }

    @Override
    public PagingResult<SubHomework> getSubHomeworkList(RowBounds rowBounds, Map<String, Object> condition) {
        PageRowBounds pageRowBounds = new PageRowBounds(rowBounds.getOffset(), rowBounds.getLimit());
        List<SubHomework> HomeworkList = subHomeworkMapper.getSubHomeworkList(pageRowBounds, condition);
        return new PagingResult<>(HomeworkList, pageRowBounds.getTotal());
    }

}
