package com.cow.horse.service.Homework.impl;

import com.cow.horse.dao.Homework.HomeworkMapper;
import com.cow.horse.dao.Profession.ProfessionMapper;
import com.cow.horse.domain.Profession;
import com.cow.horse.dto.Homework;
import com.cow.horse.service.Homework.HomeworkService;
import com.cow.horse.utils.PagingResult;
import com.github.pagehelper.PageRowBounds;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Description 作业业务层
 * Author: cow.horse
 * Date2019/10/21 21:09
 **/
@Service
public class HomeworkServiceImpl implements HomeworkService {
    @Resource
    private HomeworkMapper homeworkMapper;
    @Resource
    private ProfessionMapper professionMapper;


    @Override
    public void addHomework(Homework homework) {
//        Profession profession =  professionMapper.getProfessionIdByName(homework.getProfession());
//        String id = "";
//        String str = homework.getYear().toString() + "0" + profession.getId() + homework.getTerm();
//        Map<String, Object> condition = new HashMap<>();
//        condition.put("profession", homework.getProfession());
//        condition.put("year", homework.getYear());
//        String value = homeworkMapper.checkCodeCount(condition);
//        String strValue = "";
//        if (value != null) {
//            int num = Integer.parseInt(value.substring(value.length() - 3)) + 1;
//            if (num < 10) {
//                strValue =  "00" + Integer.toString(num);
//            } else if (num < 100) {
//                strValue = "0" + Integer.toString(num);
//            } else {
//                strValue = Integer.toString(num);
//            }
//        } else {
//            strValue = "001";
//        }
//        id = str + strValue;
//        homework.setId(id);
        homeworkMapper.addHomework(homework);
    }

    @Override
    public void delete(List<Long> ids) {
        homeworkMapper.delete(ids);
    }

    @Override
    public void update(Homework homework) {
        homeworkMapper.update(homework);
    }

    @Override
    public PagingResult<Homework> getHomeworkList(RowBounds rowBounds, Map<String, Object> condition) {
        PageRowBounds pageRowBounds = new PageRowBounds(rowBounds.getOffset(), rowBounds.getLimit());
        List<Homework> HomeworkList = homeworkMapper.getHomeworkList(pageRowBounds, condition);
        return new PagingResult<>(HomeworkList, pageRowBounds.getTotal());
    }

    @Override
    public List<Homework> getHomeworkByMap(Map<String, Object> condition) {
        return homeworkMapper.getHomeworkByMap(condition);
    }

}
