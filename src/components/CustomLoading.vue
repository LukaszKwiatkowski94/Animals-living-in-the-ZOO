<template>
	<div class="loading">
		<p>Loading</p>
	</div>
</template>

<script>
export default {
	name: "CustomLoading",
};
</script>

<style lang="scss" scoped>
.loading{
    p{
        color: #42b983;
        font-size: 2.6rem;
        font-weight: bold;
        text-align: center;
        letter-spacing: 5px;
        text-transform: uppercase;
    }
}
</style>
