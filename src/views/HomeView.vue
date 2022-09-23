<template>
	<CustomHeader :text="namePageHeader"/>
	<main>
		<div class="wrapper">
			<MainPage />
		</div>
	</main>
</template>

<script>
import MainPage from "@/components/MainPage.vue";
import CustomHeader from "@/components/CustomHeader.vue";

export default {
	name: "HomeView",
	components: {
		MainPage,
		CustomHeader,
	},
	data(){
		return{
			namePageHeader:"Animals Living in the ZOO",
		}
	}
};
</script>

<style lang="scss" scoped>
  main{
    min-height: calc(100vh - 120px);
  }
</style>
