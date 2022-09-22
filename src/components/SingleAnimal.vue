<template>
	<div class="card">
		<img :src="animal.image_link" class="card__image" />
		<p class="card__name">{{ animal.name }}</p>
	</div>
</template>

<script>
export default {
	name: "SingleAnimal",
	props: {
		animal: {
			type: Object,
			required: true,
		},
	},
};
</script>

<style lang="scss" scoped>
.card {
    width: 30%;

	&__image {
		width: 200px;
	}
	&__name {
		text-transform: uppercase;
	}
}
</style>
