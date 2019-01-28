require('./bootstrap');
import Vue from 'vue';
import router from './router'
import store from './store'

// before a request is made start the nprogress
Axios.interceptors.request.use(config => {
    NProgress.start()
    return config
})

// before a response is returned stop nprogress
Axios.interceptors.response.use(response => {
    NProgress.done()
    return response
})

import App from './App.vue'
import Axios from 'axios';
const app = new Vue({
    render(h) {
        return h(App);
    },
    router,
    store
}).$mount('#app');
