package com.cow.horse.controller.Upload;

import com.cow.horse.domain.Upload;
import com.cow.horse.service.Upload.UploadService;
import com.cow.horse.utils.ResourceUtil;
import com.cow.horse.utils.UserLoginToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;
import java.util.UUID;

import static java.lang.Integer.parseInt;

/**
 * Description 上传控制层
 * Author: cow.horse
 * Date: 2020/4/29 13:53
 **/
@RestController
@RequestMapping("/api/sms/upload")
public class UploadController {
    @Autowired
    private UploadService uploadService;

    @PostMapping("/headImg")
    @ResponseBody
    public String upload(MultipartFile file, HttpServletRequest request) throws IOException {
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
                // 储存位置
                String staticDir = ResourceUtil.getPath();

                // 图片名
                String ImgName = file.getOriginalFilename();

                String uid = UUID.randomUUID().toString();
                assert ImgName != null;
                // 获取后缀名
                String str = ImgName.substring(ImgName.lastIndexOf("."));
                // 重定义文件名
                String newName = uid + str;

                // 图片存储地址
                Path path = Paths.get(staticDir + newName);
                // 写入文件
                Files.write(path, bytes);
                String imgUrl = "/files/" + newName;

                String userId = request.getParameter("id");
                int level = parseInt(request.getParameter("level"));
                Upload upload = new Upload();
                upload.setUserId(userId);
                upload.setLevel(level);
                upload.setUrl(imgUrl);
                uploadService.upload(upload);

                // url去除"sms"
                return imgUrl;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "";
    }

    @GetMapping("/getHeadImg")
    @UserLoginToken
    public String getAdminList(@RequestParam Map<String, Object> condition, HttpServletRequest httpServletRequest) {
        return uploadService.getHeader(condition);
    }





    @GetMapping("/downLoadFile")
    public void downLoadFile(@RequestParam("path") String pathUrl, @RequestParam("name") String name, HttpServletResponse response) throws Exception {
//    public void downLoadFile(String path, String name, HttpServletResponse response) {
//        String substring = path.substring(12, path.length());

        String path = pathUrl.split("files/")[1]+"_"+name;

        File file = new File(System.getProperty("user.dir")+"\\files\\"+ path );
        System.out.println(System.getProperty("user.dir")+"\\files\\"+ path);
        System.out.println(name);
        System.out.println("============================================");
        byte[] buffer = new byte[1024];
        BufferedInputStream bis = null;
        OutputStream os = null;
        try {
            //文件是否存在
            if (file.exists()) {
                //设置响应
                response.setContentType("application/octet-stream;charset=UTF-8");
                response.setHeader("Access-Control-Expose-Headers", "Content-Disposition");
                response.setHeader("Content-Disposition","attachment;filename="+name);
                response.setHeader("AAAA","BBBBBBBB");
                response.setCharacterEncoding("UTF-8");
                os = response.getOutputStream();
                bis = new BufferedInputStream(new FileInputStream(file));
                while(bis.read(buffer) != -1){
                    os.write(buffer);
                }
            }
        }catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(bis != null) {
                    bis.close();
                }
                if(os != null) {
                    os.flush();
                    os.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
//        return new ResultVO(ResultCode.SUCCESS);
    }
}
