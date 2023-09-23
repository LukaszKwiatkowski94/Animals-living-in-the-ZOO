<template>
	<CustomHeader :text="namePageHeader" />
	<main class="about">
		<div class="wrapper">
			<section class="section">
				<h2 class="section__header">What is this app?</h2>
				<p class="section__text">
					This application is currently part of my portfolio. It is based on the
					VueJs framework, which allows for responsive and interactive web
					design. The main goal of this application is to present information
					about 9 random animals living in the zoo. The data about these animals
					is dynamically loaded from a JSON file.
					<br />
					<br />
					To view the code of this application and familiarize yourself with its
					structure, I invite you to visit my repository on GitHub: 
          <a
							href="https://github.com/LukaszKwiatkowski94/Animals-living-in-the-ZOO"
							class="section__link"
							target="”_blank”"
							>
          link to the GitHub repository
          </a>
          . There you will find the full source code,
					documentation, and the opportunity to explore the project.
				</p>
			</section>
			<section class="section">
				<h2 class="section__header">Links</h2>
				<ul class="section__list">
					<li class="section__list-item">
						<a
							href="https://github.com/LukaszKwiatkowski94/Animals-living-in-the-ZOO"
							class="section__link"
							target="”_blank”"
							>Application code on GitHub</a
						>
					</li>
				</ul>
			</section>
		</div>
	</main>
</template>

<script>
import CustomHeader from "@/components/CustomHeader.vue";

export default {
	name: "AboutView",
	components: {
		CustomHeader,
	},
	data() {
		return {
			namePageHeader: "About",
		};
	},
};
</script>

<style lang="scss" scoped>
.about {
	margin-top: 2em;
	min-height: calc(100vh - 120px - 2em - 10em);
	text-align: left;
}
.section {
	margin: 2em auto;
	padding: 2em;
	&__header {
		margin-bottom: 0.5em;
		font-size: 2rem;
	}
	&__text {
		text-align: justify;
		font-size: 1.6rem;
	}
	&__list {
		margin-left: 2em;
	}
	&__list-item {
		font-size: 1.6rem;
	}
	&__link {
		text-decoration: none;
		color: #42b983;
	}
}
</style>
