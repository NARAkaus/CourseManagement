<template>
  <el-dialog v-dialogDrag :title="title" :visible.sync="dialog" :close-on-click-modal=false append-to-body width="800px">
    <el-form ref="form" :rules="rules" :model="form" label-width="90px">
      <el-row>
        <el-col :span="12">
          <el-form-item label="课程名:" prop="name">
            <el-select v-model="form.name" style="width: 100%" @change="nameChange">
              <el-option v-for="item in professionArr" :key="item.id" :label="item.name" :value="item.id + '---' + item.name"></el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="作业描述:" prop="name">
            <el-input v-model="form.desc" clearable maxlength="30"></el-input>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row>
        <el-col :span="12">
          <el-form-item label="作业附件:" prop="name">
            <el-upload class="upload"
                       ref="upload"
                       action="http://localhost:9121/api/sms/homework/upload"
                       :file-list="fileList"
                       :http-request="uploadFile"
                       :on-change="handleChange"
                       :on-preview="handlePreview"
                       :on-remove="handleRemove"
                       multiple="multiple">
              <el-button slot="trigger"
                         size="small"
                         type="primary"
                         @click="delFile">选取文件
              </el-button>
            </el-upload>
          </el-form-item>
        </el-col>
      </el-row>

    </el-form>
    <div slot="footer">
      <el-button type="primary" @click="click('form')" size="small">确定</el-button>
      <el-button @click="cancel" size="small">取消</el-button>
    </div>
  </el-dialog>
</template>

<script>
import VmHomework from '../model/homework-model'
  export default {
    name: "homework-model",
    components:{VmHomework},
    data() {
      return {
        // el-upload组件绑定的属性—— :file-list=“fileList”,渲染后fileList[index]是Object类型,而不是后台所需的File类型,
        // 而这个组件已经把对应的File类型存储到了fileList[index].raw这个属性里,直接拿来用就好.
        fileList: [],
        formData: "",
        userInfo: {},
        //-----------------------------------
        professionArr: [],
        doneNum: 0,
        title: '',
        termArr: [{
          value: 1,
          label: '上学期'
        }, {
          value: 2,
          label: '下学期'
        }],
        yearArr: [],
        formLabelWidth: '100px',
        dialog: false,
        typeArr: [{
          value: 1,
          label: '必修'
        }, {
          value: 2,
          label: '选修'
        }],
        form: {
          name: '',
          credits: '',
          point: '',
          score: '',
          number: '',
          year: '',
          type: 1,
          term: 1,
          profession: ''
        },
        rules: {
          // name: [
          //   { required: true, message: '课程名不能为空', trigger: 'blur' },
          // ],
          // credits: [
          //   { required: true, message: '学分不能为空', trigger: 'blur' },
          // ],
          // point: [
          //   { required: true, message: '绩点不能为空', trigger: 'blur' },
          // ],
          // score: [
          //   { required: true, message: '满分项不能为空', trigger: 'blur' },
          // ],
          // number: [
          //   { required: true, message: '课时不能为空', trigger: 'blur' },
          // ],
          // profession: [
          //   { required: true, message: '专业名不能为空', trigger: 'change' },
          // ],
        }
      }
    },
    created () {
      let today = new Date();
      let year = today.getFullYear();
      for (let i = 2010; i < year + 2; i++) {
        this.yearArr.push(i);
      }
      this.getProfession();
      this.searchCourseList();
      this.userInfo = JSON.parse(localStorage.userInfo);
    },
    methods: {

      searchCourseList() {
        let that = this;
        this.axiosHelper.get(
          '/api/sms/course/getCourseList',
          {params: {
              $limit: 1000,
              $offset: 0,
              code: ''
            }}
        ).then(response => {
         that.professionArr = response.data.items;
        }).catch(error => {
        })
      },


      //点击上传文件触发的额外事件,清空fileList
      delFile() {
        this.fileList = [];
      },
      handleChange(file, fileList) {
        this.fileList = fileList;
        console.log(this.fileList, "handleChange");
      },
      //自定义上传文件
      uploadFile(file) {
        // this.formData.append("file", file.file);
        // console.log(file.file, "uploadFile");
      },
      //删除文件
      handleRemove(file, fileList) {
        console.log(file, fileList);
      },
      // 点击文件
      handlePreview(file) {
        console.log(file);
      },



      init (obj) {
        this.clearForm();
        this.type = obj.type;
        if (obj.type === 'add') {
          this.title = '新增';
        } else if (obj.type === 'edit') {
          this.title = '修改';
          this.form = obj.row
        }
        this.dialog = true;
      },
      clearForm () {
        let year = new Date().getFullYear();
        this.form = {
          name: '',
          credits: '',
          point: '',
          score: '',
          number: '',
          year: year,
          type: 1,
          term: 1,
        };
        if(this.$refs['form'] !== undefined) {
          this.$refs['form'].clearValidate();
        }
      },

      nameChange(){
        let name1 = this.form.name;
        this.form.courseId = name1.split("---")[0]
        this.form.name = name1.split("---")[1]
      },

      click (formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            if (this.type === 'add') {
              this.addMethod();
            } else if (this.type === 'edit') {
              this.editMethod();
            }
          } else {
            return false;
          }
        })
      },
      addMethod () {
        ++this.doneNum;
        if (this.doneNum === 1) {
          this.add();
        }
      },
      add () {

        let formData = new FormData();
        formData.append("file", this.fileList[0].raw);//拿到存在fileList的文件存放到formData中
        //下面数据是我自己设置的数据,可自行添加数据到formData(使用键值对方式存储)
        formData.append("courseId", this.form.courseId);
        formData.append("name", this.form.name);
        formData.append("desc", this.form.desc);
        formData.append("createid", this.userInfo.username);
        formData.append("creater", this.userInfo.realName);

        this.axiosHelper.post(
          '/api/sms/homework/upload', formData, {
            "Content-Type": "multipart/form-data;charset=utf-8"
          }).then(() => {
          this.doneNum = 0;
          this.$message.success({
            message: '新增成功'
          });
          this.dialog = false;
          this.$emit('search')
        }).catch(() => {
          this.doneNum = 0;
          this.$message.error({
            message: '新增失败'
          });
          // this.dialog = false;
        });
      },
      editMethod () {
        this.axiosHelper.put(
          '/api/sms/homework', this.form).then(() => {
          this.$message.success({
            message: '修改成功'
          });
          this.dialog = false;
          this.$emit('search')
        }).catch(() => {
          this.$message.error({
            message: '修改失败'
          });
          this.dialog = false;
        });
      },
      cancel () {
        this.dialog = false;
      },
      getProfession () {
      }
    },





  }
</script>
<style>
  html, body, #app, .login {
    height: 99%;
    padding: 0;
    margin: 0;
  }
</style>
<style scoped>
</style>
