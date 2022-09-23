<template>
  <CustomHeader :text="namePageHeader"/>
  <main class="about">
    <div class="wrapper">
      <section class="section">
        <h2 class="section__header">What is this app?</h2>
        <p class="section__text">This app is part of a portfolio. It was based on the VueJs framework. Its home page displays information about 9 random animals living in the zoo. Data for this application comes from an external API. The link is below.</p>
      </section>
      <section class="section">
        <h2 class="section__header">Links</h2>
        <ul class="section__list">
          <li class="section__list-item"><a href="https://zoo-animal-api.herokuapp.com/" class="section__link" target=”_blank”>Zoo Animal API</a></li>
          <li class="section__list-item"><a href="https://github.com/LukaszKwiatkowski94/Animals-living-in-the-ZOO" class="section__link" target=”_blank”>Application code on GitHub</a></li>
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
  data(){
    return{
      namePageHeader:"About",
    }
  }
};
</script>

<style lang="scss" scoped>
  .about{
    margin-top: 2em;
    min-height: calc(100vh - 120px - 2em - 10em);
    text-align: left;
  }
  .section{
    margin: 2em auto;
    padding: 2em;
    &__header{
      margin-bottom: 0.5em;
      font-size: 2rem;
    }
    &__text{
      text-align: justify;
      font-size: 1.6rem;
    }
    &__list{
      margin-left: 2em;
    }
    &__list-item{
      font-size: 1.6rem;
    }
    &__link{
      text-decoration: none;
      color: #42b983;
    }
  }
</style>