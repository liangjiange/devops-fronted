import Vue from "vue";

import ElementUI from "element-ui";
import "element-ui/lib/theme-chalk/index.css";
import locale from "element-ui/lib/locale/lang/zh-CN"; // lang i18n

import App from "./App.vue";
import router from "./router";
import store from "./store";
import axios from "axios";

Vue.use(ElementUI, { locale });
Vue.config.productionTip = false;
Vue.prototype.$http = axios;
axios.defaults.baseURL = "http://localhost:9000";
axios.defaults.timeout = 1000;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
