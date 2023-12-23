<template>
    <v-app class="main">
        <v-container>
            <v-select
                label="Период"
                v-model="selectedPeriodId"
                :items="periods"
                item-title="name"
                item-value="id"
                variant="outlined"
            >
            </v-select>
            <v-container v-if="selectedPeriod">
                {{ selectedPeriod.description }}
                <br>
                <b>Года: {{ selectedPeriod.start }} - {{ selectedPeriod.end }}</b>
            </v-container>
        </v-container>


        <v-container v-if="selectedPeriod">
            <v-container>
                <v-text-field :rules="numberRules" v-model="sum" variant="outlined" label="Зарплата"></v-text-field>
            </v-container>
            <v-container v-if="sum > 0 && sum < 1e9">
                <h2>В период "{{selectedPeriod.name}}" вы бы зарабатывали {{computedSum}} руб.</h2>
                <SalaryLine :salaries="salaries" :sum="computedSum" />
                <h3>
                    На это можно было бы купить:
                </h3>
                <ProductsList :selectedPeriod="selectedPeriod" :prices="prices" :sum="computedSum"/>
            </v-container>
        </v-container>
    </v-app>
</template>

<script>
import axios from "axios";
import ProductsList from "@/components/ProductsList.vue";
import SalaryLine from "@/components/SalaryLine.vue";
export default {
    name: 'MainPage',
    components: {
        SalaryLine,
        ProductsList
    },
    data() {
        return {
            periods: [],
            selectedPeriod: null,
            selectedPeriodId: "Выберете период",
            sum: 0,
            salaries: [],
            prices: [],
            numberRules: [
                value => {
                    const pattern = /^[0-9]*$/
                    return pattern.test(value) || 'Это не число'
                },
                value => (value || '').length <= 9 || 'Число слишком большое',
                value => value > 0 || ''
            ],
            numberIsValid: false
        }
    },
    watch: {
        selectedPeriodId: function() {
            this.onSelectPeriod();
        }
    },
    methods: {
        onSelectPeriod() {
            let periodId = this.selectedPeriodId;
            axios.get("/api/period/byId", {
                params: {
                    id: periodId
                }
            }).then(response => {
                this.selectedPeriod = response.data;
                this.updatePrices();
                this.updateSalaries();
            })
        },

        updateSalaries() {
            let periodId = this.selectedPeriodId;
            axios.get("/api/salary/all/byPeriodId", {
                params: {
                    id: periodId
                }
            }).then(response => {
                this.salaries = response.data;
            })
        },

        updatePrices() {
            let periodId = this.selectedPeriodId;
            axios.get("/api/price/all/byPeriodId", {
                params: {
                    id: periodId
                }
            }).then(response => {
                this.prices = response.data;
            })
        }
    },
    computed: {
        computedSum() {
            return (this.sum / this.selectedPeriod.coef).toFixed(2);
        }
    },
    beforeMount() {
        axios.get("/api/period/all").then(response => {
            this.periods = response.data;
        });
    }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
