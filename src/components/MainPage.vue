<template>
    <Suspense>
        <template #default>
            <ListAnimals/>
        </template>
        <template #fallback>
            <CustomLoading/>
        </template>
    </Suspense>
</template>

<script>
import ListAnimals from "@/components/ListAnimals.vue";
import CustomLoading from "@/components/CustomLoading.vue";

export default {
	name: "MainPage",
    components:{
        ListAnimals,
        CustomLoading,
    },
};
</script>

<style lang="sass" scoped></style>
