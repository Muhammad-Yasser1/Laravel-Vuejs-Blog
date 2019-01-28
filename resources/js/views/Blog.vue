<template>
    <div class="row justify-content-around">
        <div
            class="card text-white bg-transparent border-0 col-10 col-sm-8 col-md-6 col-lg-4 p-4"
            v-for="article in articles"
            :key="article.id"
        >
            <a @click="routeTo(article)" style="position: relative">
                <img class="card-img-top" :src="'../../images/'+article.image">
                <div class="title">{{ article.title }}</div>
                <div class="overlay"></div>
                <div class="author">{{ article.updated_at }} by {{ article.author }}</div>
            </a>
        </div>
    </div>
</template>

<script>
export default {
    methods: {
        routeTo(article) {
            if (!this.$store.state.editMode) {
                this.$router.push({
                    name: "article",
                    params: { id: article.id, article }
                });
            } else {
                this.$router.push({
                    name: "edit",
                    params: { id: article.id, article }
                });
            }
        }
    },
    components: {},
    computed: {
        articles() {
            return this.$store.state.articles;
        }
    },
    created() {
        if (!this.$store.state.articles.length) {
            this.$store.commit("getArticles");
        }
    }
};
</script>

<style lang='scss' scoped>
.card {
    .overlay {
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
        background: #000;
        opacity: 0.1;
        transition: all 0.25s;
        z-index: 0;
    }

    a:hover .overlay {
        opacity: 0.5;
    }

    a {
        cursor: pointer;
    }
    .title {
        max-width: 95%;
        text-transform: capitalize;
        position: absolute;
        font-size: 2.2rem;
        color: #fcfdff;
        font-weight: 700;
        letter-spacing: 1px;
        top: 2%;
        left: 5%;
        z-index: 1;
        @media screen and (max-width: 1100px) and (min-width: 992px) {
            font-size: 1.67rem;
        }
    }

    .author {
        position: absolute;
        bottom: 1%;
        left: 5%;
        padding-right: 10px;
        color: #fcfdff;
        text-align: center;
        @media screen and (max-width: 1190px) and (min-width: 1090px) {
            font-size: 0.8rem;
        }
        @media screen and (max-width: 1090px) and (min-width: 992px) {
            font-size: 0.71rem;
        }
        @media screen and (max-width: 815px) and (min-width: 767px) {
            font-size: 0.8rem;
        }
        @media screen and (max-width: 420px) {
            font-size: 0.7rem;
        }
    }
}
</style>