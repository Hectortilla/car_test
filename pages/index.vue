<template>
    <section class="section wrapper">
        <div v-for="(question, i) in tests[testId].questions" :key="i" class="question-container">
            <Card :image="question.img" :question="(i + 1) + ': ' + question.q_text" :answer="question.result_text"></Card>
        </div>
    </section>
</template>

<script>
import Card from '~/components/Card'
import tests from '~/static/tests.json'
export default {
    name: 'HomePage',
    data() {
        return {
            testId: 0,
            tests: tests
        }
    },
    watch:{
        $route (to, from){
            this.testId = parseInt(to.query.testId, 10)
        }
    },
    mounted() {
    },
    components: {
        Card
    }
}
</script>
<style>
.question-container {
    width: 30%;
    margin-right: auto;
    margin-left: auto;
}
.wrapper {
    text-align: center;
}
</style>
