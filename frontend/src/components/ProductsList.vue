<template>
    <v-container>
        <v-container>
            <v-row class="ma-2" align="center">
                <v-col md="3" class="pa-3 d-flex flex-column" v-for="price in prices"
                       :key="price.id" cols="auto">
                    <v-card class="mx-auto flex d-flex flex-column w-100">
                        <v-img
                            class="align-end text-white"
                            :src="getSrc(price.product.name)"
                            height="90"
                        ></v-img>
                        <v-card-text style="font-size: 1rem;">
                            <i>{{price.price}} руб.</i> <br>
                            <b>
                                {{countAmount(price.price)}}x
                            </b>{{price.product.name}}
                        </v-card-text>
                    </v-card>
                </v-col>
            </v-row>
        </v-container>
    </v-container>
</template>

<script>
export default {
    name: 'ProductsList',
    props: {
        selectedPeriod: Object,
        sum: Number,
        prices: Array
    },
    methods: {
        countAmount(price) {
            return Math.floor(this.sum / price);
        },
        getSrc(productName) {
            return require("../assets/" + productName.split(',')[0] + ".png");
        }
    }
}
</script>

<style scoped>
b {
    font-family: Roboto, sans-serif;
    font-size: 1.1rem;
}
</style>