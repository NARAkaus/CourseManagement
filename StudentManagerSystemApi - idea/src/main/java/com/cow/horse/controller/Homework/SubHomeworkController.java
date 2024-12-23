package com.cow.horse.controller.Homework;

import cn.hutool.core.io.FileUtil;
import com.cow.horse.dto.SubHomework;
import com.cow.horse.service.Homework.SubHomeworkService;
import com.cow.horse.utils.PagingResult;
import com.cow.horse.utils.UserLoginToken;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;


/**
 * Description 附件控制层
 * Author: cow.horse
 * Date2019/10/21 21:00
 **/
@RestController
@UserLoginToken
@RequestMapping("/api/sms/subHomework")
public class SubHomeworkController {
    @Autowired
    private SubHomeworkService homeworkService;


    @PostMapping
    public void addSubHomework(@RequestBody SubHomework subHomework) {
        homeworkService.addSubHomework(subHomework);
    }

    @PostMapping("/upload")
    public void importFile(String homeworkid,
                           String userid,
                           String username,
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
        SubHomework subHomework = new SubHomework();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String format = sdf.format(new Date());
        subHomework.setHomeworkid(homeworkid);
        subHomework.setUserid(userid);
        subHomework.setUsername(username);
        subHomework.setAttaurl(attachment);
        subHomework.setAttaname(originalFilename);
        subHomework.setAddtime(format);
        System.out.println(subHomework.toString());


        RowBounds rowBounds = new RowBounds(0, 10);
        Map<String, Object> condition = new HashMap<>();
        condition.put("homeworkid", homeworkid);
        condition.put("userid", userid);
        PagingResult<SubHomework> subHomeworkList = homeworkService.getSubHomeworkList(rowBounds, condition);
        if( subHomeworkList.getTotalCount()>0 ){
            homeworkService.update(subHomework);
        }else{
            homeworkService.addSubHomework(subHomework);
        }
    }

    @DeleteMapping("/{ids}")
    public void delete(@PathVariable("ids") String[] ids) {
        List<Long> idsList = Stream.of(ids).map(Long::parseLong).collect(Collectors.toList());
        homeworkService.delete(idsList);
    }

    @PutMapping
    public void update(@RequestBody SubHomework subHomework) {
        homeworkService.update(subHomework);
    }

    @GetMapping("/getSubHomeworkList")
    private PagingResult<SubHomework> getSubHomeworkList(@RequestParam Map<String, Object> condition,
                                               @RequestParam(required = false, name = "$limit", defaultValue = "10") Integer limit,
                                               @RequestParam(required = false, name = "$offset", defaultValue = "0") Integer offset) {
        RowBounds rowBounds = new RowBounds(offset, limit);
        return homeworkService.getSubHomeworkList(rowBounds, condition);
    }
}
