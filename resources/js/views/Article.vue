<template>
    <div>
        <div class="row p-4">
            <div class="col-lg-4 col-md-6 col-9 mx-auto">
                <img class="img-fluid" :src="'../../images/asset '+ article.id + '.jpeg'" alt>
            </div>
            <div class="col-11 col-md-6 col-lg-8 mx-auto my-3 my-lg-0">
                <h1 class="title">{{ article.title }}</h1>
                <div class="my-3 mb-4">
                    <h6>by {{ article.author }} -- {{ article.updated_at }}</h6>
                </div>
                <hr>
                <div class="card bg-transparent border-0">
                    <div class="card-body">
                        <blockquote class="blockquote">
                            <p>{{ article.content }}</p>
                        </blockquote>
                    </div>
                </div>
                <p>{{ article.content }}</p>
                <p>{{ article.content }}</p>
                <p>{{ article.content }}</p>
                <p>{{ article.content }}</p>
                <p>{{ article.content }}</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {};
    },
    computed: {
        article() {
            return this.$route.params.article;
        }
    }
};
</script>

<style lang='scss' scoped>
.title {
    font-weight: 200;
}
h6 {
    @media screen and (max-width: 816px) and(min-width: 767px) {
        font-size: 0.75rem;
    }
    @media screen and (max-width: 430px) {
        font-size: 0.75rem;
    }
}

@media screen and (max-width: 767px) {
    h6,
    h1 {
        text-align: center;
    }
}
</style>