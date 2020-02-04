<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png" />
    <el-col>
      <el-col :span="12"
        ><el-input v-model="inputUsername" placeholder="请输入用户名"></el-input
      ></el-col>
      <el-col :span="12"
        ><el-button type="primary" @click="doSearch"
          >查找用户详细信息</el-button
        ></el-col
      >
    </el-col>
    <div>
      <div>{{ user.id }}</div>
      <div>{{ user.username }}</div>
      <div>{{ user.email }}</div>
      <div>{{ user.cellphone }}</div>
      <div>{{ user.createTime }}</div>
      <div>{{ user.updateTime }}</div>
    </div>
  </div>
</template>

<script>
export default {
  name: "home",
  data() {
    return {
      user: { username: "zhangshan", cellphone: "13456789000" },
      inputUsername: ""
    };
  },
  methods: {
    doSearch: function() {
      var inputUsername = this.inputUsername;
      this.$http({
        method: "get",
        url: "/api/users?username=" + inputUsername
      }).then(
        response => {
          console.log("请求成功");
          console.log(response);
          this.user = response.data;
        },
        response => {
          console.log("请求失败");
          console.log(response);
        }
      );
    }
  }
};
</script>
