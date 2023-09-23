<template>
    <div class="animals">
        <SingleAnimal v-for="animal in randomAnimals" :key="animal.id" :animal="animal">{{animal.name}}</SingleAnimal>
    </div>
</template>

<script>
    import { ref } from 'vue';
    import SingleAnimal from "@/components/SingleAnimal.vue";
    import animalsData from "@/assets/animals.json";
    export default {
        name: "ListAnimals",
        components:{
            SingleAnimal,
        },
    async setup() {
            const animals = ref([]);
            const randomAnimals = ref([]);

            const getRandomAnimals = () => {
                const shuffled = animals.value.sort(() => 0.5 - Math.random());
                randomAnimals.value = shuffled.slice(0, 9);
                const updatedAnimals = randomAnimals.value.map(animal => {
                    return {
                    ...animal,
                    image_link: "/animals/"+animal.image_link  // Zaktualizuj ten adres zgodnie z wymaganiami
                    };
                });

                randomAnimals.value = updatedAnimals;
            };

            // Ustawienie danych z pliku JSON jako referencję
                animals.value = animalsData;

            // Pobranie losowych zwierząt i obcięcie do 9 rekordów
                getRandomAnimals();

                return { randomAnimals };
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