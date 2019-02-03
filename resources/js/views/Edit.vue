<template>
    <div class="container p-5">
        <h1 class="mb-3">Edit this Article:</h1>
        <div class="form-group">
            <label for="title">Title:</label>
            <input
                type="text"
                class="form-control"
                name="title"
                id="title"
                aria-describedby="helpId"
                placeholder="Write your article title here"
                v-model="article.title"
            >
        </div>
        <div class="form-group">
            <label for="content">Content:</label>
            <textarea
                class="form-control"
                name="content"
                id="content"
                rows="10"
                placeholder="Write your article content here"
                v-model="article.content"
            ></textarea>
        </div>
        <div class="form-group">
            <label for="author">Author Name:</label>
            <input
                class="form-control"
                name="author"
                id="author"
                placeholder="Write your Name here"
                v-model="article.author"
            >
        </div>
        <button type="button" @click="edit(article)" class="btn btn-warning">Edit</button>
        <button type="button" @click="Delete(article)" class="btn btn-danger">Delete</button>
        <router-link tag="button" :to="{name:'blog'}" type="button" class="btn btn-dark">Cancel</router-link>
    </div>
</template>

<script>
export default {
    methods: {
        edit(article) {
            this.$store.commit("updateArticle", article);
            this.$router.push({ name: "blog" });
        },
        Delete(article) {
            this.$store.commit("deleteArticle", article);
            this.$router.push({ name: "blog" });
        }
    },
    computed: {
        article() {
            return this.$route.params.article;
        }
    }
};
</script>

<style lang='scss' scoped>
h1 {
    @media screen and (max-width: 600px) {
        font-size: 2rem !important;
    }
    @media screen and (max-width: 420px) {
        font-size: 1.3rem !important;
    }
}
</style>