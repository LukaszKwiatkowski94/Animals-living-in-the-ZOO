<template>
	<div class="nav__links">
		<router-link :to="item.to">{{ item.title }}</router-link>
	</div>
</template>

<script>
export default {
	name: "NavBarItem",
	props: {
		item: {
			type: Object,
			required: true,
		},
	},
};
</script>

<style lang="scss" scoped>
.nav {
    &__links{
        display: flex;
        align-items: center;
        padding: 1em;
        height:100%;
        font-size: 1.8rem;
        transition: background-color 0.5s;
        &:hover{
            background-color: #42b983;
            a, a.router-link-exact-active{
                color: #fff;
            }
            
        }
    }
    a {
        font-weight: bold;
        color: #2c3e50;
        text-decoration: none;
        letter-spacing: 2px;
        transition: color 0.5s;
    }

    a.router-link-exact-active {
        color: #42b983;
        transition: color 0.5s;
    }
}
</style>
