package com.cow.horse.controller.User;

import com.cow.horse.dto.User;
import com.cow.horse.service.User.TeacherService;
import com.cow.horse.utils.PagingResult;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * Description 教师账号控制层
 * Author: cow.horse
 * Date: 2020/3/7 11:51
 **/
@RestController
@RequestMapping("/api/sms/user/teacher")
public class TeacherController {
  @Autowired
  private TeacherService teacherService;

  @PostMapping
  public void addTeacher(@RequestBody User user) {
    teacherService.addTeacher(user);
  }

  @DeleteMapping("/{ids}")
  public void delete(@PathVariable("ids") Integer[] ids) {
    List<Integer> idsList = Arrays.asList(ids);
    teacherService.delete(idsList);
  }

  @PutMapping
  public void update(@RequestBody User user) {
    teacherService.update(user);
  }

  @GetMapping("/getTeacherList")
  public PagingResult<User> getTeacherList (@RequestParam Map<String, Object> condition,
                                            @RequestParam(required = false, name = "$limit", defaultValue = "10") Integer limit,
                                            @RequestParam(required = false, name = "$offset", defaultValue = "0") Integer offset) {
    RowBounds rowBounds = new RowBounds(offset, limit);
    return teacherService.getTeacherList(rowBounds, condition);
  }
}
