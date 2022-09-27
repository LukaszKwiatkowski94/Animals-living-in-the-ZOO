<template>
	<div class="card">
		<img :src="animal.image_link" :alt="animal.name" class="card__image" />
		<p class="card__name">{{ animal.name }}</p>
		<MoreInfoAnimal v-show="moreInfoVisible" :info="animal" />
		<img
			v-show="!moreInfoVisible"
			src="@/assets/info.svg"
			class="card__info-icon"
			@click="moreInfoVisible = true"
		/>
		<img
			v-show="moreInfoVisible"
			src="@/assets/x-circle.svg"
			class="card__info-icon"
			@click="moreInfoVisible = false"
		/>
	</div>
</template>

<script>
import MoreInfoAnimal from "@/components/MoreInfoAnimal.vue";
export default {
	name: "SingleAnimal",
	components: {
		MoreInfoAnimal,
	},
	props: {
		animal: {
			type: Object,
			required: true,
		},
	},
	data() {
		return {
			moreInfoVisible: false,
		};
	},
};
</script>

<style lang="scss" scoped>
.card {
	position: relative;
	margin: 1em 0.8em;
	width: 100%;
	border-radius: 1em;
	box-shadow: 0 0 5px #000;
	overflow: hidden;
	height: 50vh;

	&__image {
		width: 100%;
		height: 80%;
		object-fit: cover;
	}
	&__name {
		display: flex;
		align-items: center;
		justify-content: center;
		height: 20%;
		font-size: 2.2rem;
		font-weight: bold;
		text-transform: uppercase;
		letter-spacing: 0.2em;
	}
	&__info-icon {
		position: absolute;
		top: 1em;
		right: 1em;
		cursor: pointer;
	}
}
@media (min-width: 576px) {
	.card {
		height: 70vh;
		width: calc(50% - (2 * 0.8em));
	}
}
@media (min-width: 992px) {
	.card {
		height: 90vh;
		width: 30%;
	}
}
</style>
