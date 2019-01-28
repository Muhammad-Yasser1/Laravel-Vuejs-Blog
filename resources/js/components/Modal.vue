<template>
    <div>
        <div class="modal fade" id="modelId" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-danger">Important !!</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span>&times;</span>
                        </button>
                    </div>
                    <div
                        class="modal-body"
                    >your changes won't be commited to the database, it will be handled by vuejs in the front end, I wrote the requests but commented it, if you want to check the source code I'll happilly sent it to you
                        <br>
                        <br>I did this so no body make any permanent changes or just mess around by deleting all the test articles,
                        <br>
                        <br>in other words: you are the one refresh admin now, piece :)
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {};
</script>

<style scoped>
</style>