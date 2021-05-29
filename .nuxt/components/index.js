import { wrapFunctional } from './utils'

export { default as Card } from '../../components/Card.vue'

export const LazyCard = import('../../components/Card.vue' /* webpackChunkName: "components/card" */).then(c => wrapFunctional(c.default || c))
