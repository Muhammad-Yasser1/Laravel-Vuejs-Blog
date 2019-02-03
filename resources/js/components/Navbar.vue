<template>
    <nav class="navbar pb-0 navbar-expand bg-transparent navbar-light border-bottom-1">
        <router-link v-if="$store.state.editMode" :to="{name: 'create'}" class="createbtn">+</router-link>
        <router-link class="navbar-brand ml-sm-4 ml-1" :to="{name: 'blog'}">Mo Blog</router-link>
        <button
            class="navbar-toggler d-lg-none"
            type="button"
            data-toggle="collapse"
            data-target="#collapsibleNavId"
            aria-controls="collapsibleNavId"
            aria-expanded="false"
            aria-label="Toggle navigation"
        ></button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
            <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                <li class="btn-group">
                    <button
                        type="button"
                        :class="{'btn-primary': $store.state.editMode, 'btn-secondary':!$store.state.editMode}"
                        class="btn"
                        data-toggle="modal"
                        data-target="#modelId"
                        @click="$store.state.editMode = true"
                    >Admin Mode</button>
                    <button
                        type="button"
                        :class="{'btn-primary': !$store.state.editMode,'btn-secondary': $store.state.editMode}"
                        class="btn"
                        @click="$store.state.editMode = false"
                    >Reader Mode</button>
                </li>
            </ul>
        </div>
    </nav>
</template>

<script>
export default {};
</script>

<style scoped lang="scss">
.navbar-brand {
    color: #2a3744;
    font-size: 40px;
    font-weight: 700;
    @media screen and (max-width: 550px) {
        font-size: 35px;
    }
    @media screen and (max-width: 420px) {
        font-size: 28px;
    }
}
.createbtn {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background: #f6f6f6;
    color: #2a3744;
    position: fixed;
    right: 5%;
    bottom: 5%;
    z-index: 10000;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 40px;
    text-decoration: none;
    transition: all 0.2s;
    box-shadow: 0 2px 5px #777;
    &:hover {
        background: #47a3ef;
        color: white;
    }
}

.btn-group {
    .btn {
        @media screen and (max-width: 550px) {
            font-size: 12px !important;
        }
        @media screen and (max-width: 420px) {
            font-size: 10px !important;
            padding-left: 7px;
            padding-right: 7px;
        }
    }
}
</style>
