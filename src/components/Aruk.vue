<script setup>
defineProps({
   nev:{type:String, required:true},
   leiras:{type:String, required:true},   
})
</script>
<template>
    <div class="kozepen">
        <div class="kulso">
            <div class="belso">
                <h1>{{ nev }}</h1>
                <hr>               
                <p>
                    {{ leiras }}
                </p>
                <img v-bind:src="'./src/assets/img/allatokkep/'+nev+'.jpg'"/>
                
            </div>
        </div>
    </div>
</template>
<style scoped>
.belso{
    background-color: antiquewhite;
border: 5px black solid;
margin: 9px;
border-radius: 10px;
}
.kulso{
    background-color: aquamarine;
    width: 35%;
    border: 3px black solid;
    margin:20px 0px;
}
p{
    text-align: justify;
    padding: 10px;
}
.kozepen{
    display: flex;
    justify-content: center;
}
h1{
    text-align: center;
}

</style>