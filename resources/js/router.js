import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router);

import Blog from './views/Blog.vue'
import Article from './views/Article.vue'
import Create from './views/Create.vue'
import Edit from './views/Edit.vue'


const router = new Router({
    mode: 'history',
    scrollBehavior: (to, from, savedPosition) => {
        if (savedPosition) {
            return savedPosition
        }
        if (to.hash) {
            return {
                selector: to.hash
            }
        }
        return {
            x: 0,
            y: 0
        }
    },
    routes: [{
            path: '/',
            name: 'blog',
            component: Blog
        },
        {
            path: '/article/:id',
            name: 'article',
            component: Article
        },
        {
            path: '/article/:id/edit',
            name: 'edit',
            component: Edit
        },
        {
            path: '/create',
            name: 'create',
            component: Create
        },
        {
            path: '*',
            redirect: '/'
        }
    ]
})

router.beforeResolve((to, from, next) => {

    NProgress.start()
    setTimeout(() => {
        NProgress.set(0.4)
    }, 200);
    setTimeout(() => {
        NProgress.inc()
    }, 400);
    next()
})

router.afterEach((to, from) => {
    // Complete the animation of the route progress bar.
    setTimeout(() => {
        NProgress.done()
    }, 800);
})
export default router;
