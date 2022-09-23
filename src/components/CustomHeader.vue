<template>
    <header>
        <h1>{{text}}</h1>
    </header>
</template>

<script>
    export default {
        name: "CustomHeader",
        props:{
            text:{
                type: String,
            }
        }
    }
</script>

<style lang="scss" scoped>
header{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 10em;
    h1{
        font-size: 3.8rem;
        letter-spacing: 7px;
        text-transform: uppercase;
    }
}
</style>