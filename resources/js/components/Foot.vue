<template>
    <div>
        <footer class="text-center p-4 p-sm-5" style="font-size: 30px">
            <hr class="mb-4">Made with
            <img :src="'../../images/heart.png'" class="img-fluid">&nbsp;by
            <span style="color: #41b883">Vue</span> &amp;
            <span style="color:#f67870">Laravel</span>
        </footer>
    </div>
</template>

<script>
export default {};
</script>

<style lang='scss' scoped>
footer {
    @media screen and (max-width: 420px) and (min-width: 400px) {
        padding: 1.8rem !important;
    }
    @media screen and (max-width: 620px) and (min-width: 420px) {
        padding: 2rem !important;
        font-size: 22px !important;
    }
}
.img-fluid {
    width: 50px;
    height: 50px;
}
</style>