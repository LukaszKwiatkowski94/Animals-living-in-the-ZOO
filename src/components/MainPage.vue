<template>
    <Suspense>
        <template #default>
            <ListAnimals/>
        </template>
        <template #fallback>
            LOADING
        </template>
    </Suspense>
</template>

<script>
import ListAnimals from "@/components/ListAnimals.vue";

export default {
	name: "MainPage",
    components:{
        ListAnimals,
    },
};
</script>

<style lang="sass" scoped></style>
