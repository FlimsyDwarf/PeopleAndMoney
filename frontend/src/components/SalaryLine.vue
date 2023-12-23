<template>
    <v-container>
        <v-timeline direction="horizontal">
            <v-timeline-item v-for="salary in computedSalaries" :key="salary.id">
                <v-card>
                    <v-card-title>{{ capitalize(salary.job.name) }}</v-card-title>
                    <v-card-text>{{ salary.salary }} руб.</v-card-text>
                </v-card>
            </v-timeline-item>
        </v-timeline>
    </v-container>
</template>

<script>
export default {
    name: "SalaryLine",
    props: {
        salaries: Array,
        sum: Number
    },
    computed: {
        computedSalaries() {
            let ans =this.salaries.slice();
            ans.push({
                salary: this.sum,
                job: {
                    name: "Вы"
                }
            });
            ans.sort((a, b) => a.salary - b.salary);
            return ans;
        }
    },
    methods: {
        capitalize(str) {
            return str.charAt(0).toUpperCase() + str.slice(1);
        }
    }
}
</script>

<style scoped>

</style>