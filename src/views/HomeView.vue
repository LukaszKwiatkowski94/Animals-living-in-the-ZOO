<template>
	<main>
		<div class="wrapper">
			<MainPage />
		</div>
	</main>
</template>

<script>
import MainPage from "@/components/MainPage.vue";

export default {
	name: "HomeView",
	components: {
		MainPage,
	},
};
</script>

<style lang="scss" scoped>
  main{
    min-height: calc(100vh - 120px);
  }
</style>
