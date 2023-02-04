<template>
	<div class="card__more-info">
		<div class="card__more-info-row">
			<p class="card__more-info-title">Name:</p>
			<p class="card__more-info-value">{{ info.name }}</p>
		</div>
		<div class="card__more-info-row">
			<p class="card__more-info-title">latin name:</p>
			<p class="card__more-info-value">{{ info.latin_name }}</p>
		</div>
		<div class="card__more-info-row">
			<p class="card__more-info-title">polish name:</p>
			<p class="card__more-info-value">{{ info.polish_name }}</p>
		</div>
		<div class="card__more-info-row">
			<p class="card__more-info-title">animal type:</p>
			<p class="card__more-info-value">{{ info.animal_type }}</p>
		</div>
		<div class="card__more-info-row">
			<p class="card__more-info-title">active time:</p>
			<p class="card__more-info-value">{{ info.active_time }}</p>
		</div>
		<div class="card__more-info-row">
			<p class="card__more-info-title">length max:</p>
			<p class="card__more-info-value">{{ info.length_max }} ft</p>
		</div>
		<div class="card__more-info-row">
			<p class="card__more-info-title">weight max:</p>
			<p class="card__more-info-value">{{ info.weight_max }} lb</p>
		</div>
		<div class="card__more-info-row">
			<p class="card__more-info-title">lifespan:</p>
			<p class="card__more-info-value">{{ info.lifespan }} years</p>
		</div>
		<div class="card__more-info-row">
			<p class="card__more-info-title">habitat:</p>
			<p class="card__more-info-value">{{ info.habitat }}</p>
		</div>
		<div class="card__more-info-row">
			<p class="card__more-info-title">geo range:</p>
			<p class="card__more-info-value">{{ info.geo_range }}</p>
		</div>
		<div class="card__more-info-row">
			<p class="card__more-info-title">diet:</p>
			<p class="card__more-info-value">{{ info.diet }}</p>
		</div>
	</div>
</template>

<script>
export default {
	name: "MoreInfoAnimal",
	props: {
		info: {
			type: Object,
			required: true,
		},
	},
};
</script>

<style lang="scss" scoped>
.card {
	&__more-info {
        position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		display: flex;
		flex-direction: column;
		padding: 2em;
		background-color: rgba(0, 0, 0, 0.9);
		color: #fff;
		font-size: 1.6rem;
        text-align: left;
        animation: moreInfoOpen 1s linear forwards;
        clip-path: circle(100% at 50% 50%);
	}
	&__more-info-row {
		display: flex;
		flex-direction: row;
        margin: 0.3em 0;
	}
	&__more-info-title {
		text-transform: uppercase;
        font-weight: bold;
        color: #D62436;
	}
	&__more-info-value {
		margin-left: 1em;
	}
}
@keyframes moreInfoOpen {
    from{
        clip-path: circle(0% at 50% 50%);
    }
    to{
        clip-path: circle(100% at 50% 50%);
    }
}
</style>
