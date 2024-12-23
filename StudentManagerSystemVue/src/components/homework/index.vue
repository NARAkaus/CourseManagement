<template>
  <el-card style="margin: 10px;padding: 15px 10px 10px 10px">
    <el-row style="margin-bottom: 10px">
      <el-button type="primary" size="small" @click="addMethod" v-if="userInfo.level!=2">新增</el-button>
      <el-button type="danger" size="small" @click="deleteSelect" v-if="userInfo.level!=2">删除</el-button>
      <el-input style="float:right;width:300px;" size="small" v-model="searchValue.code" placeholder="请输入课程名或专业" clearable @keyup.enter.native="filterData">
        <el-button slot="append" @click="filterData" type="primary">过滤</el-button>
      </el-input>
    </el-row>
    <VmBaseTable
      :setTableHigh="true"
      @on-select-change="select"
      ref="course_table"
      :data="dataTable"
      :columns="dataColumns"
      overflow
      @page-change="pageChange"
      showCheck
      showIndex
      :tableHigh="tableHigh"
    ></VmBaseTable>
    <VmHomework ref="homework" @search="search"></VmHomework>

    <el-dialog v-dialogDrag :title="title" :visible.sync="dialog" :close-on-click-modal=false append-to-body width="800px">
      <el-form ref="form" :model="form" label-width="90px" >
        <el-row>
          <el-col :span="12">
            <el-form-item label="课程名:" prop="name">
              <el-input readonly v-model="form.name" clearable maxlength="30"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="作业描述:" prop="name">
              <el-input readonly v-model="form.desc" clearable maxlength="30"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="发布人:" prop="creater">
              <el-input readonly v-model="form.creater" clearable maxlength="30"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="发布时间:" prop="addtime">
              <el-input readonly v-model="form.addtime" clearable maxlength="30"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="上传作业:" prop="name">
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
        <el-button type="primary" @click="add()" size="small">确定</el-button>
        <el-button @click="cancel" size="small">取消</el-button>
      </div>
    </el-dialog>


    <el-dialog v-dialogDrag :title="title1" :visible.sync="dialog1" :close-on-click-modal=false append-to-body width="1000px">
      <VmBaseTable
        :setTableHigh="true"
        ref="course_table11"
        :data="subData"
        :columns="dataColumns2"
        overflow
        showCheck
        showIndex
        :tableHigh="tableHigh"
      ></VmBaseTable>
    </el-dialog>


  </el-card>
</template>

<script>

import VmBaseTable from '../../base/base-table'
import VmHomework from '../../components/homework/model/homework-model'

export default {
  name: "student",
  components: {
    VmBaseTable, VmHomework
  },
  data () {
    return {
      form:{},
      userInfo:{},
      subData: [],
      fileList: [],
      dialog: false,
      dialog1: false,
      title: "作业上传",
      title1: "作业列表",
      right: true,
      table: null,
      searchValue: {
        $limit: 10,
        $offset: 0,
        code: ''
      },
      searchValue2: {
        $limit: 10000,
        $offset: 0,
        code: ''
      },
      tableHigh: '66vh',
      selectValue: [],
      dataTable: [],
      dataColumns: [
        { label: '课程名称', prop: 'name', style: 'center', minWidth: '100' },
        { label: '作业描述', prop: 'desc', style: 'center', minWidth: '100' },
        { label: '附件', prop: 'attachmentname', style: 'center', minWidth: '100' },
        { label: '发布人', prop: 'creater', style: 'center', minWidth: '100' },
        { label: '发布时间', prop: 'addtime', style: 'center', minWidth: '100' },
        {
          label: '操作',
          style: 'center',
          prop: 'id',
          minWidth: '150',
          render: (h, params) => {
            let btns = [];
            if( this.userInfo.level == 0 ){
              btns = [];
              btns.push(this.getOpBtn(h, '编辑', 'primary', () => {
                this.editMethod(params.row)
              }));
              btns.push(this.getOpBtn(h, '删除', 'danger', () => {
                this.deleteSingle(params.row)
              }));
              btns.push(this.getOpBtn(h, '下载附件', 'success', () => {
                this.downLoadFile(params.row)
              }));
              btns.push(this.getOpBtn(h, '查看作业', 'warning', () => {
                this.lookHomework(params.row)
              }));
            }else if( this.userInfo.level == 1 ){
              btns = [];
              btns.push(this.getOpBtn(h, '编辑', 'primary', () => {
                this.editMethod(params.row)
              }));
              btns.push(this.getOpBtn(h, '删除', 'danger', () => {
                this.deleteSingle(params.row)
              }));
              btns.push(this.getOpBtn(h, '查看作业', 'warning', () => {
                this.lookHomework(params.row)
              }));
            }else if( this.userInfo.level == 2 ){
              btns = [];
              btns.push(this.getOpBtn(h, '下载附件', 'success', () => {
                this.downLoadFile(params.row)
              }));
              btns.push(this.getOpBtn(h, '上传作业', 'danger', () => {
                this.uploadHomework(params.row)
              }));
            }
            return h('div', btns)
          }
        }
      ],
      dataColumns2: [
        { label: '学生姓名', prop: 'username', style: 'center', minWidth: '120' },
        { label: '作业附件', prop: 'attaname', style: 'center', minWidth: '120' },
        { label: '上传时间', prop: 'addtime', style: 'center', minWidth: '120' },
        {
          label: '操作',
          style: 'center',
          prop: 'id',
          minWidth: '120',
          render: (h, params) => {
            let btns = [];
            btns.push(this.getOpBtn(h, '下载附件', 'danger', () => {
              this.downLoadFile2(params.row)
            }));
            return h('div', btns)
          }
        }
      ],
      delBtn: true
    }
  },
  methods: {

    lookHomework( row ){
      //根据id查询 subhomework 表的 homeworkid字段，筛选作业列表
      let that = this;
      that.searchValue2.homeworkid = row.id
      this.axiosHelper.get(
        '/api/sms/subHomework/getSubHomeworkList',
        {params: that.searchValue2}
      ).then(response => {
        console.log( response.data.items, "-------------------------------" );
        this.subData = response.data.items
        this.dialog1 = true;
      }).catch(error => {
        this.$message.error({
          message: '失败'
        }, error)
      })
    },

    uploadHomework(row){
      this.dialog = true;
      this.form = row;
    },

    cancel () {
      this.dialog = false;
    },

    add () {
      let formData = new FormData();
      formData.append("file", this.fileList[0].raw);//拿到存在fileList的文件存放到formData中
      //下面数据是我自己设置的数据,可自行添加数据到formData(使用键值对方式存储)
      formData.append("homeworkid", this.form.id);
      formData.append("userid", this.userInfo.username);
      formData.append("username", this.userInfo.realName);

      this.axiosHelper.post(
        '/api/sms/subHomework/upload', formData, {
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

    //------------------------------------------
    //------------------------------------------
    //------------------------------------------

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

    //------------------------------------------------------------
    //------------------------------------------------------------
    //------------------------------------------------------------

    search() {
      let that = this;
      this.axiosHelper.get(
        '/api/sms/homework/getHomeworkList',
        {params: that.searchValue}
      ).then(response => {
        this.dataTable = response.data.items;
        this.table.total = response.data.totalCount
      }).catch(error => {
        this.$message.error({
          message: '失败'
        }, error)
      })
    },
    pageChange(page) {
      this.searchValue.$limit = page.limit;
      this.searchValue.$offset = page.offset;
      this.search();
    },
    filterData() {
      this.searchValue.$offset = 0;
      // 跳转到第一页
      if (this.$refs['course_table'] !== undefined) {
        this.$refs['course_table'].currentPageToOne();
      }
      this.search()
    },
    addMethod() {
      this.search();
      let type = 'add';
      let params = {
        type
      };
      this.$refs['homework'].init(params);
    },
    editMethod(row) {
      let data = Object.assign({}, row);
      let type = 'edit';
      let params = {
        type,
        row: data
      };
      this.$refs['homework'].init(params);
    },
    select(selection) {
      this.delBtn = selection.length <= 0;
    },
    deleteSingle (obj) {
      let ids = [obj.id];
      this.deleteTable(ids);
    },

    downLoadFile(row) {
      // window.location.href = row.attachmenturl
      this.axiosHelper.get("/api/sms/upload/downLoadFile", {
        params: {
          path: row.attachmenturl,// 文件路径
          name: row.attachmentname, // 文件名称
        },
        responseType: 'blob'
      }).then(res => {
        const blob = new Blob([res.data]);
        const fileName = row.attachmentname;
        if ('download' in document.createElement("a")) {
          const link = document.createElement("a");
          link.download = fileName;
          link.style.display = 'none';
          link.href = URL.createObjectURL(blob);
          document.body.appendChild(link);
          link.click();
          URL.revokeObjectURL(link.href);
          document.body.removeChild(link);
        } else {
          navigator.msSaveBlob(blob, fileName);
        }
      })
    },

    downLoadFile2(row) {
      // window.location.href = row.attachmenturl
      this.axiosHelper.get("/api/sms/upload/downLoadFile", {
        params: {
          path: row.attaurl,// 文件路径
          name: row.attaname, // 文件名称
        },
        responseType: 'blob'
      }).then(res => {
        const blob = new Blob([res.data]);
        const fileName = row.attaname;
        if ('download' in document.createElement("a")) {
          const link = document.createElement("a");
          link.download = fileName;
          link.style.display = 'none';
          link.href = URL.createObjectURL(blob);
          document.body.appendChild(link);
          link.click();
          URL.revokeObjectURL(link.href);
          document.body.removeChild(link);
        } else {
          navigator.msSaveBlob(blob, fileName);
        }
      })
    },

    deleteSelect () {
      let ids = this.table.getIds();
      if (ids.length > 0) {
        this.deleteTable(ids);
      }
    },
    deleteTable(ids) {
      let _this = this;
      this.$confirm('此操作将永久删除该记录, 是否继续?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.deleteMethod(ids, _this);
      }).catch(() => {
        this.$message.info({
          message: '已取消删除'
        });
      });
    },
    deleteMethod(params, _this) {
      console.log(params)

      _this.axiosHelper.delete(
        '/api/sms/homework/' + params
      ).then(response => {
        let status = response.status;
        if (status === 200) {
          // 若删除当前页的最后一条时，加载上一页信息
          if ((_this.table.total - params.length) % 10 === 0 && _this.searchValue.$offset !== 0) {
            _this.searchValue.$offset -= 10
          }
          _this.$message.success({
            message: '删除成功'
          });
          _this.search()
        }
      }).catch(error => {
        _this.$message.error({
          message: '删除失败'
        }, error)
      })
    },
  },
  mounted () {
    this.userInfo = JSON.parse(localStorage.userInfo);
    this.table = this.$refs['course_table'];
    this.search();
  }
}

</script>
