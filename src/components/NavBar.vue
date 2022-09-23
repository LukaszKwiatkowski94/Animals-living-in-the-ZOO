<template>
    <nav class="nav">
        <router-link to="/">Home</router-link> |
        <router-link to="/about">About</router-link>
    </nav>
</template>

<script>
export default {
    name: "NavBar",
}
</script>

<style lang="scss" scoped>
nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style>