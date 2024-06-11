<script setup>
import { ref } from 'vue';

const selected = ref('')

defineProps({
    to:{type:String},
    homepage:{type:String}
})
</script>
<template>
    <div class="kis"></div>
    
    <ul class="navd">
        <div class="kozep">
            <li class="sselect">
                
               
            </li>
            
            <li>
                <RouterLink :to=to>{{homepage }}</RouterLink>
            </li>
            
        </div>
    </ul>
    {{ selected }}
</template>
<style scoped>
.kozep{
    display: flex;
    justify-content: center;
}
.kis{
    background-image: url('../assets/img/rozisor.jpg');
    background-repeat: no-repeat;
    background-position: center 0px;
    height: 287px;
}
.navd{
    background-color: wheat;
}
ul {
    
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
}
li{
    display: flex; 
    flex-direction: row;
}

li a { 
  color: black; 
  padding: 14px 16px;
  text-decoration: none;
}


li a:hover {
  background-color:aquamarine;
}
select{
    border: 0;
    background-color: wheat;
}
.sselect :hover{
    background-color: aquamarine;
}

</style>