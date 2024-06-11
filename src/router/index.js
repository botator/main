import { createRouter, createWebHistory } from 'vue-router'
//import HomeView from '../views/HomeView.vue'
import AboutView from '../views/AboutView.vue'
import ArukView from '../views/ArukView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/about',
      name: 'about',
      component: AboutView 
    },
    {
      path: '/',
      name: 'aruk',
      component: ArukView
      
    },
    
  ]
})

export default router
