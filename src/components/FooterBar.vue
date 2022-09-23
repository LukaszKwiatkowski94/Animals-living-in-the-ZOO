<template>
    <footer class="footer">
        <div class="wrapper">
            <p class="footer__year">&copy; {{year}} Animals Living in the ZOO</p>
        </div>
    </footer>
</template>

<script>
    export default {
        name: "FooterBar",
        data(){
            return{
                year:new Date().getFullYear(),
            }; 
        },
    }
</script>

<style lang="scss" scoped>
    .footer{
        display: flex;
        justify-content: center;
        align-items: center;
        position: relative;
        bottom: 0;
        width: 100%;
        min-height: 60px;
        background-color: #90B77D;
        color: #483838;
        &__year{
            font-size: 1.6rem;
        }
    }
</style>