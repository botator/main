import './assets/main.css'
import Fejes from './components/Fejes.vue'
import Aruk from './components/Aruk.vue'
import Foot from './components/Foot.vue'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import AboutView from './views/AboutView.vue'

const app = createApp(App)
app.component('Fejes',Fejes)
app.component('Aruk',Aruk)
app.component('Foot',Foot)

app.component('AboutView',AboutView)
app.use(router)

app.mount('#app')
