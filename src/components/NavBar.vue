<template>
    <nav class="nav">
        <div class="nav__logo">
            <img src="@/assets/logo.png"/>
            <p class="nav__title">Animals Living in the ZOO</p>
        </div>
        <NavBarItem :item="{title:'Home',to:'/'}"/>
        <NavBarItem :item="{title:'About',to:'/about'}"/>
    </nav>
</template>

<script>
import NavBarItem from "@/components/NavBarItem.vue";
export default {
    name: "NavBar",
    components:{
        NavBarItem,
    },
}
</script>

<style lang="scss" scoped>
.nav {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    position: sticky;
    top: 0;
    padding: 0 2em;
    height: 60px;
    background-color: white;
    box-shadow: 5px 0 5px #000;
    z-index: 1000;

    &__logo{
        display: flex;
        align-items: center;
        justify-self: start;
        margin-right: auto;

        img{
            width: 30px;
            margin-right: 1em;
        }
    }
    &__title{
        font-size: 1.6rem;
        width: 50%;
    }
}
</style>