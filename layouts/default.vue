<template>
    <div>
        <nav
            class="navbar header has-shadow is-primary"
            role="navigation"
            aria-label="main navigation"
        >
            <div class="navbar-brand">
                <a
                    class="navbar-item"
                    href="/"
                >
                </a>

            </div>
        </nav>

        <section class="main-content columns">
            <aside class="column is-2 section">
                <p class="menu-label is-hidden-touch"> General </p>
                <ul class="menu-list">
                    <li v-for="(item, key) of items" :key="key">
                        <nuxt-link :to="item.to"> {{ item.title }} </nuxt-link>
                    </li>
                </ul>
            </aside>

            <div class="container column is-10">
                <nuxt/>
            </div>
        </section>
    </div>
</template>

<script>
import tests from '~/static/tests.json'

export default {
    data() {
        return {
            items: []
        }
    },
    mounted() {
        tests.forEach(function(test, index) {
            this.items.push(
                {
                    title: 'Test ' + index,
                    to: {name: 'index', query: {testId: index}}
                }
            )
        }.bind(this))
    }
}
</script>
