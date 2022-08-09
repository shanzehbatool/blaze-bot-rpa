const splash=document.querySelector('.splash');

document.addEventListener('DOMContentLoaded',(e)=>{
    setTimeout(()=>{
        
        window.location.href = 'https://localhost:44317/List';
    },2000);
    })


const header = document.querySelector('.header');

window.onscroll=function(){
    var top = window.scrollY;
    console.log(top);
    if(top >= 50){
        header.classList.add('active')
    }else{
        header.classList.remove('active');
    }   
}