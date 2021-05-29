<template>
    <div class="card" style="margin-top: 5em;">
        <div class="card-content">
            <div class="media">
                <div class="media-content">
                    <b>{{question}}</b>
                </div>
            </div>

            <div class="content">
                {{answer}}
            </div>
        </div>

        <div class="card-image">
            <figure class="image is-4by3">
                <img :src="image">
            </figure>
        </div>
    </div>
</template>

<script>
export default {
    props: {
        image: {
            type: String,
            required: true
        },
        question: {
            type: String,
            required: true
        },
        answer: {
            type: String,
            required: true
        }
    }
}
</script>
<style>
    .card {
        margin-top: 5em;
        border: 1px solid;
    }
</style>

