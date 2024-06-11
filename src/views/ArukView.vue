<script>
const selected = ref('')
import axios from 'axios';
import Aruk from '../components/Aruk.vue';
import Fejes from '../components/Fejes.vue'
import { ref } from 'vue';
export default{
    data() {
        return {
            dolog: [],
        };
    },
    mounted() {
        this.lekeres();
    },
    methods: {
        async lekeres() {
            try {
                this.dolog = (await axios.post('http://localhost:8080/api/items')).data;
                console.log(this.dolog);
            }
            catch (error) {
                throw error;
            }
        },
        async lekeresfaj() {
            try {
                this.dolog = (await axios.post('http://localhost:8080/api/faj/'+selected.value)).data;
                console.log(this.dolog);
            }
            catch (error) {
                throw error;
            }
        }
    },
   
}
</script>
<template>
    <Fejes to="/about" homepage="About the page"/>
    <select @change="lekeresfaj" v-model="selected" name="allatok" id="alatok">
                    
                    <option value="">
                        --Select a pet--
                    </option>
                    <option value="cica">
                        <a href="cicalink">Cats</a>
                    </option>
                    <option value="kutya">
                        <a href="kutyalink">Dogs</a>
                    </option>
                    
                 </select>
    <Aruk v-for="adatok in dolog" :nev="adatok.nev" :leiras="adatok.leiras" :kep="adatok.kep"/>
</template>