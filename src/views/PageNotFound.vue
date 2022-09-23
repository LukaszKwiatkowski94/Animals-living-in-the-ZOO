<template>
    <div class="page-not-found">
        <h2 class="page-not-found__number-error">404</h2>
        <p class="page-not-found__info-error">PAGE NOT FOUND</p>
    </div>
</template>

<style lang="scss" scoped>
    .page-not-found{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        min-height: calc(100vh - 120px);
        &__number-error{
            font-size: 5.6rem;
        }
        &__info-error{
            font-size: 3.2rem;
        }
    }
</style>