<template>
    <div class="animals">
        <SingleAnimal v-for="animal in animals" :key="animal.id" :animal="animal">{{animal.name}}</SingleAnimal>
    </div>
</template>

<script>
    import { ref } from 'vue';
    import SingleAnimal from "@/components/SingleAnimal.vue";
    export default {
        name: "ListAnimals",
        components:{
            SingleAnimal,
        },
        async setup() {
            let animals = ref(null);
            let data = await fetch('https://zoo-animal-api.herokuapp.com/animals/rand/9');
            animals = await data.json();       
            return {animals,}
        },
    };
</script>

<style lang="scss" scoped>
.animals{
    display:flex;
    justify-content:center;
    flex-wrap:wrap;
}
</style>