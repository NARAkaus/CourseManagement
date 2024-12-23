package com.cow.horse.controller.Course;

import cn.hutool.core.io.FileUtil;
import com.cow.horse.dto.Homework;
import com.cow.horse.service.Course.CoursewareService;
import com.cow.horse.utils.PagingResult;
import com.cow.horse.utils.UserLoginToken;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;
import java.util.stream.Stream;


/**
 * Description  课件控制层
 * Author: cow.horse
 * Date2019/10/21 21:00
 **/
@RestController
@UserLoginToken
@RequestMapping("/api/sms/courseware")
public class CoursewareController {
    @Autowired
    private CoursewareService homeworkService;



    @PostMapping
    public void addHomework(@RequestBody Homework homework) {
        homeworkService.addHomework(homework);
    }

    @PostMapping("/upload")
    public void importFile(String courseId,
                           String name,
                           String desc,
                           String createid,
                           String creater,
                           @RequestParam(value = "file", required = false) MultipartFile file) throws IOException {

        // 上传附件
        String originalFilename = file.getOriginalFilename();  // 获取源文件的名称
        // 定义文件的唯一标识（前缀）
        String flag = UUID.randomUUID().toString();
        String rootFilePath = System.getProperty("user.dir") + "/files/" + flag + "_" + originalFilename;  // 获取上传的路径
        File rootFile = new File(rootFilePath);
        if (!rootFile.getParentFile().exists()) {
            rootFile.getParentFile().mkdirs();
        }
        FileUtil.writeBytes(file.getBytes(), rootFilePath);  // 把文件写入到上传的路径

        String attachment = "http://localhost:9192/files/" + flag;


        // 保存
        Homework homework = new Homework();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String format = sdf.format(new Date());
        homework.setCourseId(courseId);
        homework.setName(name);
        homework.setDesc(desc);
        homework.setAttachmenturl(attachment);
        homework.setAttachmentname(originalFilename);
        homework.setAddtime(format);
        homework.setCreateid(createid);
        homework.setCreater(creater);
        System.out.println(homework.toString());
        homeworkService.addHomework(homework);
    }

    @DeleteMapping("/{ids}")
    public void delete(@PathVariable("ids") String[] ids) {
        List<Long> idsList = Stream.of(ids).map(Long::parseLong).collect(Collectors.toList());
        homeworkService.delete(idsList);
    }

    @PutMapping
    public void update(@RequestBody Homework homework) {
        homeworkService.update(homework);
    }

    @GetMapping("/getHomeworkList")
    private PagingResult<Homework> getHomeworkList(@RequestParam Map<String, Object> condition,
                                               @RequestParam(required = false, name = "$limit", defaultValue = "10") Integer limit,
                                               @RequestParam(required = false, name = "$offset", defaultValue = "0") Integer offset) {
        RowBounds rowBounds = new RowBounds(offset, limit);
        return homeworkService.getHomeworkList(rowBounds, condition);
    }

    @GetMapping("/getHomeworkByMap")
    private List<Homework> getHomeworkByMap(@RequestParam Map<String, Object> condition) {
        return homeworkService.getHomeworkByMap(condition);
    }
}
