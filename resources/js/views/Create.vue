<template>
    <div class="container p-5">
        <form @submit.prevent="Create">
            <h1 class="mb-3">Create a new Article:</h1>
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
            <button type="submit" class="btn btn-primary">Create</button>
            <router-link tag="button" :to="{name:'blog'}" type="button" class="btn btn-dark">Cancel</router-link>
        </form>
    </div>
</template>

<script>
export default {
    data() {
        return {
            article: {
                id: "",
                title: "",
                content: "",
                image: "default-image.jpeg",
                author: "",
                updated_at: new Date().toDateString()
            }
        };
    },
    methods: {
        Create() {
            this.article.id =
                this.$store.state.articles[
                    this.$store.state.articles.length - 1
                ].id + 1;
            console.log(this.article.id);

            this.$store.commit("createArticle", this.article);
            this.$router.push({ name: "blog" });
        }
    }
};
</script>

<style scoped lang='scss'>
h1 {
    @media screen and (max-width: 600px) {
        font-size: 2rem !important;
    }
    @media screen and (max-width: 420px) {
        font-size: 1.3rem !important;
    }
}
</style>