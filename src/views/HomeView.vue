<template>
	<main>
		<div class="wrapper">
			<MainPage />
		</div>
	</main>
</template>

<script>
// @ is an alias to /src
import MainPage from "@/components/MainPage.vue";

export default {
	name: "HomeView",
	components: {
		MainPage,
	},
};
</script>
