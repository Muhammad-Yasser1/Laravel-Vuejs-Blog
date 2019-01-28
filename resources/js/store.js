import Vue from 'vue'
import Vuex from 'vuex'
import Axios from 'axios';

Vue.use(Vuex);

Axios.defaults.baseURL = 'http://blog.local/';

const store = new Vuex.Store({
    state: {
        articles: [],
        editMode: false,
    },
    getters: {

    },
    mutations: {
        getArticles(state) {

            Axios.get('api/articles').then(res => {
                state.articles = res.data.data;
            }).catch(err => console.log(err))

        },
        createArticle(state, preload) {

            // Axios.post('api/articles', preload).then(res => {
            //     state.articles.push(res.data.data)
            // }).catch(err => console.log(err))

            state.articles.push(preload)
        },
        updateArticle(state, preload) {

            // Axios.put(`api/articles/${preload.id}`, preload).then(res => {
            //     let target = state.articles.findIndex(obj => obj.id == preload.id);
            //     state.articles.splice(target, 1, res.data.data)
            // })

            let target = state.articles.findIndex(obj => obj.id == preload.id);
            state.articles.splice(target, 1, preload)
        },
        deleteArticle(state, preload) {

            // Axios.delete(`api/articles/${preload.id}`);

            let target = state.articles.findIndex(obj => obj.id == preload.id);
            state.articles.splice(target, 1);

        },
        showArticle(state, preload) { // I didn't use this one

            Axios.get(`api/articles/${preload.id}`).then(res => {
                state.article = res.data.data
            })

        }
    },
    actions: {

    }
})

export default store;
