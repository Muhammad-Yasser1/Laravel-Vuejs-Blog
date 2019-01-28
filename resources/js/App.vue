<template>
    <div>
        <div class="container-fluid px-md-5">
            <navbar></navbar>
            <hr class="mt-0 mb-3">
            <transition
                mode="out-in"
                appear
                enter-active-class="animated fadeIn faster"
                leave-active-class="animated fadeOut faster"
            >
                <router-view></router-view>
            </transition>
            <modal></modal>
            <foot></foot>
        </div>
    </div>
</template>

<script>
import Navbar from "./components/Navbar.vue";
import Modal from "./components/Modal.vue";
import Foot from "./components/Foot.vue";
export default {
    components: {
        Navbar,
        Modal,
        Foot
    }
};
</script>

<style lang="scss">
body {
    font-family: "Prompt", sans-serif;
    background: #fcfdff;
}
</style>
