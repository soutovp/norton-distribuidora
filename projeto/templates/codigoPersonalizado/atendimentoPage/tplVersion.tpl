<style>
 @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap');
body{
 margin: 0;
 padding: 0;
}
.atendimento{
 font-family: 'Roboto', sans-serif;
}
.atendimento-header{
 text-align: center;
 color: #FFFFFF!important;
 background: linear-gradient(#DE0000, #FF5B5B, #FF7575);
 padding: 50px 0;
}
.atendimento-header h1{
 font-weight: 900;
 margin: 0;
 font-size: 200%;
}
.atendimento-header h1 > strong{
 font-weight: 500;
}
.atendimento-header > p{
 font-size: 150%;
 color: #333;
 font-weight: 500;
}
.atendimento-main{
 display: flex;
 justify-content: center;
 margin: 100px;
}
.atendimento-card{
 background-color: #FBFBFB;
 border: 1px solid #333;
 border-radius: 5px;
 box-shadow: 5px 5px 5px rgba(0,0,0,.1);
 display: flex;
 flex-direction: column;
 padding: 15px 0;
 color: #333;
 width: 300px;
}
div.atendimento-box{
 display: flex;
 flex-direction: row;
 gap: 25px;
}
.atendimento-card >  svg{
 margin: 0 auto;
}
.atendimento-card h3{
 text-transform: uppercase;
 text-align: center;
 color: #FF0000;
 font-size: 130%;
 font-weight: 900;
 margin: 30px;
}
.atendimento-card a{
 text-decoration: none;
 color: #333;
}
.atendimento-card.atendimento-venda h4{
 margin: 0;
 color: #FF0000;
}
.atendimento-venda-televenda{
 display: flex;
 flex-direction: column;
 justify-content: center;
 text-align: center;
 margin: 50px 0;
}
.atendimento-venda-televenda > p{
 text-align: center;
 padding: 0 10px;
}
.atendimento-venda-televenda a > div{
 display: flex;
 flex-direction: row;
 align-items: center;
 justify-content: center;
 gap: 15px;
 margin-top: 20px;
}
.atendimento-venda-whatsapp{
 display: flex;
 flex-direction: column;
 justify-content: center;
}
.atendimento-venda-whatsapp > p{
 text-align: center;
 margin: 0;
}
.atendimento-venda-whatsapp a > div{
 display: flex;
 flex-direction: row;
 align-items: center;
 justify-content: center;
 gap: 15px;
}
.atendimento-sac-contatos{
 display: flex;
 justify-content: center;
}
.atendimento-sac-contatos ul{
 list-style: none;
 display: flex;
 flex-direction: column;
 width: fit-content;
 justify-self: center;
 padding: 0;
}
.atendimento-sac-contatos ul li{
 display: flex;
 flex-direction: row;
 align-items: center;
 gap: 15px;
 padding: 10px;
}
.atendimento-sac-desc{
 padding: 15px;
 text-align: center;
}
.atendimento-corporativo-contatos{
 display: flex;
 justify-content: center;
}
.atendimento-corporativo-contatos ul{
 list-style: none;
 display: flex;
 flex-direction: column;
 width: fit-content;
 justify-self: center;
 padding: 0;
}
.atendimento-corporativo-contatos ul li{
 display: flex;
 flex-direction: row;
 align-items: center;
 gap: 15px;
 padding: 10px;
}
.atendimento-corporativo-trabalheconosco h4,
.atendimento-corporativo-trabalheconosco p{
 margin: 0;
 padding: 0;
}
.atendimento-corporativo-trabalheconosco h4{
 color: red;
}
.atendimento-corporativo-trabalheconosco{
 text-align: center;
 width: 90%;
 margin: 0 auto;
}
.atendimento-corporativo-trabalheconosco p{
 text-align: start;
}
.atendimento-corporativo-trabalheconosco > div{
display: flex;
flex-direction: row;
align-items: center;
gap: 15px;
justify-content: center;
margin-top: 30px;
}
.atendimento-corporativo-trabalheconosco > div a{
font-weight: 700;
}
.atendimento-main section > p{
 text-align: center;
 font-size: 14px;
 margin: 15px;
}
@media (max-width: 1000px){
 div.atendimento-box{
  flex-direction: column;
  align-items: center;
 }
 .atendimento-main > section > h2{
  text-align: center;
 }
}
</style>
<!--api whats-->
{% set tel_ddd = variables.informacoes_loja.whatsapp|slice(0,2)%}
{% set tel_prefixo = variables.informacoes_loja.whatsapp|slice(2,5) %}
{% set tel_sufixo = variables.informacoes_loja.whatsapp|slice(7, 4) %}
{% set tel_formatado = '(' ~ tel_ddd ~ ') ' ~ tel_prefixo ~ '-' ~ tel_sufixo %}
<!-- api telefone -->
{% set fixo_ddd = variables.informacoes_loja.telefone|slice(0,2)%}
{% set fixo_prefixo = variables.informacoes_loja.telefone|slice(2,4) %}
{% set fixo_sufixo = variables.informacoes_loja.telefone|slice(6, 4) %}
{% set fixo_formatado = '(' ~ fixo_ddd ~ ') ' ~ fixo_prefixo ~ '-' ~ fixo_sufixo %}
<!-- FIM --> 
<article class="atendimento">
  <header class="atendimento-header">
   <h1><strong>Atendimento</strong> Norton Distribuidora</h1>
   <p>Seja Bem Vindo!</p>
  </header>
  <main class="atendimento-main">
   <section>
    <h2>Qual setor que deseja?</h2>
    <div class="atendimento-box">
     <div class="atendimento-card atendimento-venda">
      <!-- <img src="#" alt="Ícone de VENDA"> -->
      <svg width="70" height="70" viewBox="0 0 70 70" fill="none" xmlns="http://www.w3.org/2000/svg">
       <path d="M22.0625 24.1802V19.8677C22.0625 16.4364 23.4256 13.1457 25.8518 10.7195C28.2781 8.29323 31.5688 6.93018 35 6.93018C38.4312 6.93018 41.7219 8.29323 44.1482 10.7195C46.5744 13.1457 47.9375 16.4364 47.9375 19.8677V24.1802M11.2812 24.1802C10.7094 24.1802 10.1609 24.4074 9.75655 24.8117C9.35218 25.2161 9.125 25.7646 9.125 26.3364V55.4458C9.125 59.5211 12.5966 62.9927 16.6719 62.9927H53.3281C57.4034 62.9927 60.875 59.6896 60.875 55.6143V26.3364C60.875 25.7646 60.6478 25.2161 60.2435 24.8117C59.8391 24.4074 59.2906 24.1802 58.7188 24.1802H11.2812Z" stroke="#333333" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"/>
       <path d="M22.0625 30.6489V32.8052C22.0625 36.2364 23.4256 39.5271 25.8518 41.9534C28.2781 44.3796 31.5688 45.7427 35 45.7427C38.4312 45.7427 41.7219 44.3796 44.1482 41.9534C46.5744 39.5271 47.9375 36.2364 47.9375 32.8052V30.6489" stroke="#333333" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"/>
       </svg>
      <h3>Vendas</h3>
      <div class="atendimento-venda-televenda">
       <h4>Televendas</h4>
       <p>{{ variables.atendimento.televendas | raw}}</p>
       <a href="tel:{{variables.informacoes_loja.telefone}}"  rel="noopener noreferrer">
        <div>
         <!-- <img src="#" alt="Icone Telefone"> -->
         <svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M5.32667 10.8481C7.24667 14.6214 10.34 17.7148 14.1133 19.6348L17.0467 16.7014C17.42 16.3281 17.94 16.2214 18.4067 16.3681C19.9 16.8614 21.5 17.1281 23.1667 17.1281C23.5203 17.1281 23.8594 17.2686 24.1095 17.5186C24.3595 17.7687 24.5 18.1078 24.5 18.4614V23.1281C24.5 23.4817 24.3595 23.8209 24.1095 24.0709C23.8594 24.321 23.5203 24.4614 23.1667 24.4614C17.1551 24.4614 11.3897 22.0733 7.13891 17.8225C2.88809 13.5717 0.5 7.80633 0.5 1.79476C0.5 1.44114 0.640476 1.102 0.890524 0.85195C1.14057 0.601902 1.47971 0.461426 1.83333 0.461426H6.5C6.85362 0.461426 7.19276 0.601902 7.44281 0.85195C7.69286 1.102 7.83333 1.44114 7.83333 1.79476C7.83333 3.46143 8.1 5.06143 8.59333 6.55476C8.74 7.02143 8.63333 7.54143 8.26 7.91476L5.32667 10.8481Z" fill="#333333"/>
          </svg>
         <span>{{fixo_formatado}}</span>
        </div>
       </a>
      </div>
      <div class="atendimento-venda-whatsapp">
       <p>Nos contate também pelo</p>
       <a href="https://api.whatsapp.com/send?phone=55{{ variables.informacoes_loja.whatsapp }}" target="_blank" rel="noopener noreferrer">
        <div>
         <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
          <g clip-path="url(#clip0_327_2308)">
          <path d="M0.801824 16.27C0.80108 18.9586 1.50359 21.5838 2.83941 23.8978L0.674072 31.8038L8.76486 29.6823C11.0027 30.9006 13.51 31.5389 16.0579 31.5391H16.0646C24.4757 31.5391 31.3226 24.6947 31.3262 16.282C31.3278 12.2055 29.7417 8.37218 26.86 5.48821C23.9788 2.60449 20.1468 1.01553 16.064 1.01367C7.65181 1.01367 0.805421 7.8577 0.801948 16.27" fill="url(#paint0_linear_327_2308)"/>
          <path d="M0.256981 16.265C0.256113 19.0503 0.983802 21.7695 2.36724 24.1662L0.124268 32.3556L8.50517 30.1582C10.8144 31.4172 13.4143 32.081 16.0599 32.082H16.0667C24.7796 32.082 31.8725 24.9914 31.8762 16.2776C31.8777 12.0546 30.2345 8.0835 27.2498 5.09622C24.2648 2.1093 20.2958 0.463162 16.0667 0.461426C7.3523 0.461426 0.260454 7.55104 0.256981 16.265ZM5.24811 23.7535L4.93518 23.2567C3.61971 21.1651 2.92538 18.7479 2.92638 16.266C2.9291 9.02316 8.82355 3.13057 16.0717 3.13057C19.5818 3.13206 22.8805 4.50037 25.3616 6.98298C27.8426 9.46583 29.2078 12.7663 29.2069 16.2766C29.2037 23.5194 23.3091 29.4127 16.0667 29.4127H16.0615C13.7033 29.4115 11.3905 28.7782 9.37351 27.5814L8.89351 27.2968L3.92011 28.6007L5.24811 23.7535Z" fill="url(#paint1_linear_327_2308)"/>
          <path d="M12.1153 9.65804C11.8194 9.00031 11.5079 8.98703 11.2265 8.9755C10.9961 8.96558 10.7326 8.96632 10.4694 8.96632C10.206 8.96632 9.77794 9.06542 9.41614 9.46046C9.05397 9.85587 8.03345 10.8114 8.03345 12.7548C8.03345 14.6984 9.44901 16.5766 9.64635 16.8404C9.84393 17.1037 12.3791 21.2196 16.3943 22.803C19.7312 24.1188 20.4103 23.8571 21.1345 23.7911C21.8588 23.7254 23.4717 22.8358 23.8008 21.9134C24.1301 20.9911 24.1301 20.2006 24.0313 20.0353C23.9326 19.8708 23.6692 19.7719 23.2741 19.5744C22.879 19.3769 20.9369 18.4212 20.5748 18.2894C20.2127 18.1576 19.9494 18.0919 19.6859 18.4874C19.4225 18.8824 18.666 19.7719 18.4354 20.0353C18.2051 20.2994 17.9745 20.3323 17.5796 20.1347C17.1843 19.9365 15.9121 19.5199 14.4028 18.1743C13.2285 17.1272 12.4357 15.8342 12.2052 15.4386C11.9748 15.0437 12.1805 14.8296 12.3786 14.6328C12.5561 14.4558 12.7738 14.1715 12.9715 13.941C13.1685 13.7103 13.2342 13.5457 13.3659 13.2822C13.4978 13.0185 13.4318 12.7878 13.3332 12.5903C13.2342 12.3927 12.4666 10.4391 12.1153 9.65804Z" fill="white"/>
          </g>
          <defs>
          <linearGradient id="paint0_linear_327_2308" x1="1533.28" y1="3080.02" x2="1533.28" y2="1.01367" gradientUnits="userSpaceOnUse">
          <stop stop-color="#1FAF38"/>
          <stop offset="1" stop-color="#60D669"/>
          </linearGradient>
          <linearGradient id="paint1_linear_327_2308" x1="1587.72" y1="3189.88" x2="1587.72" y2="0.461426" gradientUnits="userSpaceOnUse">
          <stop stop-color="#F9F9F9"/>
          <stop offset="1" stop-color="white"/>
          </linearGradient>
          <clipPath id="clip0_327_2308">
          <rect width="31.76" height="32" fill="white" transform="translate(0.120117 0.461426)"/>
          </clipPath>
          </defs>
          </svg>
          <span>WhatsApp</span>
        </div>
       </a>
      </div>
     </div>
     <div class="atendimento-card atendimento-card-sac">
      <svg width="70" height="71" viewBox="0 0 70 71" fill="none" xmlns="http://www.w3.org/2000/svg">
       <path d="M54.5999 43.5116C55.6207 41.0325 56.1749 38.3783 56.1749 35.4616C56.1749 33.3616 55.8541 31.3491 55.2999 29.4825C53.4041 29.92 51.4207 30.1533 49.3499 30.1533C45.109 30.1578 40.9291 29.1427 37.1627 27.1935C33.3963 25.2443 30.1537 22.4182 27.7082 18.9533C25.0923 25.283 20.1574 30.3744 13.9124 33.1866C13.7958 33.9158 13.7958 34.7033 13.7958 35.4616C13.7958 38.2462 14.3442 41.0035 15.4098 43.5761C16.4754 46.1487 18.0373 48.4862 20.0063 50.4552C23.9829 54.4318 29.3762 56.6658 34.9999 56.6658C38.0624 56.6658 41.0082 55.995 43.6624 54.7991C45.3249 57.9783 46.0832 59.5533 46.0249 59.5533C41.2416 61.1575 37.5374 61.945 34.9999 61.945C27.9416 61.945 21.2041 59.1741 16.2458 54.1866C13.2299 51.1801 10.9881 47.4871 9.71242 43.4241H5.83325V30.1533H9.01242C9.97562 25.4648 12.1901 21.1245 15.4209 17.5929C18.6517 14.0614 22.7782 11.4703 27.3627 10.0947C31.9472 8.71902 36.8186 8.61012 41.4599 9.77951C46.1013 10.9489 50.3395 13.353 53.7249 16.7366C57.4006 20.3978 59.9077 25.0669 60.9291 30.1533H64.1666V43.4241H63.9916L53.6082 52.9616L38.1499 51.2116V46.3408H52.2374L54.5999 43.5116ZM27.0374 34.7908C27.9124 34.7908 28.7582 35.1408 29.3707 35.7825C29.9863 36.403 30.3317 37.2417 30.3317 38.1158C30.3317 38.9899 29.9863 39.8285 29.3707 40.4491C28.7582 41.0616 27.9124 41.4116 27.0374 41.4116C25.1999 41.4116 23.7124 39.9533 23.7124 38.1158C23.7124 36.2783 25.1999 34.7908 27.0374 34.7908ZM42.9332 34.7908C44.7707 34.7908 46.2291 36.2783 46.2291 38.1158C46.2291 39.9533 44.7707 41.4116 42.9332 41.4116C41.0957 41.4116 39.6082 39.9533 39.6082 38.1158C39.6082 37.2339 39.9586 36.3882 40.5821 35.7647C41.2057 35.1411 42.0514 34.7908 42.9332 34.7908Z" fill="#333333"/>
       </svg>
       <h3>Sac</h3>
       <div class="atendimento-sac-contatos">
        <ul>
         <a href="mailto:atendimento@nortondistribuidora.com.br"> <!-- POR EMAIL /////////////////////////////////////// -->
          <li class="email">
           <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M5.33341 27.1283C4.60008 27.1283 3.97253 26.8674 3.45075 26.3456C2.92897 25.8238 2.66764 25.1958 2.66675 24.4616V8.46159C2.66675 7.72826 2.92808 7.1007 3.45075 6.57892C3.97341 6.05714 4.60097 5.79581 5.33341 5.79492H26.6667C27.4001 5.79492 28.0281 6.05625 28.5507 6.57892C29.0734 7.10159 29.3343 7.72914 29.3334 8.46159V24.4616C29.3334 25.1949 29.0725 25.8229 28.5507 26.3456C28.029 26.8683 27.401 27.1291 26.6667 27.1283H5.33341ZM16.0001 17.7949L5.33341 11.1283V24.4616H26.6667V11.1283L16.0001 17.7949ZM16.0001 15.1283L26.6667 8.46159H5.33341L16.0001 15.1283ZM5.33341 11.1283V8.46159V24.4616V11.1283Z" fill="black"/>
            </svg>
           <span>Enviar e-mail</span>
          </li>
         </a>
         <a href="https://api.whatsapp.com/send?phone=55{{ variables.informacoes_loja.whatsapp }}" target="_blank" rel="noopener noreferrer">
          <li class="whatsapp">
           <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
            <g clip-path="url(#clip0_327_2308)">
            <path d="M0.801824 16.27C0.80108 18.9586 1.50359 21.5838 2.83941 23.8978L0.674072 31.8038L8.76486 29.6823C11.0027 30.9006 13.51 31.5389 16.0579 31.5391H16.0646C24.4757 31.5391 31.3226 24.6947 31.3262 16.282C31.3278 12.2055 29.7417 8.37218 26.86 5.48821C23.9788 2.60449 20.1468 1.01553 16.064 1.01367C7.65181 1.01367 0.805421 7.8577 0.801948 16.27" fill="url(#paint0_linear_327_2308)"/>
            <path d="M0.256981 16.265C0.256113 19.0503 0.983802 21.7695 2.36724 24.1662L0.124268 32.3556L8.50517 30.1582C10.8144 31.4172 13.4143 32.081 16.0599 32.082H16.0667C24.7796 32.082 31.8725 24.9914 31.8762 16.2776C31.8777 12.0546 30.2345 8.0835 27.2498 5.09622C24.2648 2.1093 20.2958 0.463162 16.0667 0.461426C7.3523 0.461426 0.260454 7.55104 0.256981 16.265ZM5.24811 23.7535L4.93518 23.2567C3.61971 21.1651 2.92538 18.7479 2.92638 16.266C2.9291 9.02316 8.82355 3.13057 16.0717 3.13057C19.5818 3.13206 22.8805 4.50037 25.3616 6.98298C27.8426 9.46583 29.2078 12.7663 29.2069 16.2766C29.2037 23.5194 23.3091 29.4127 16.0667 29.4127H16.0615C13.7033 29.4115 11.3905 28.7782 9.37351 27.5814L8.89351 27.2968L3.92011 28.6007L5.24811 23.7535Z" fill="url(#paint1_linear_327_2308)"/>
            <path d="M12.1153 9.65804C11.8194 9.00031 11.5079 8.98703 11.2265 8.9755C10.9961 8.96558 10.7326 8.96632 10.4694 8.96632C10.206 8.96632 9.77794 9.06542 9.41614 9.46046C9.05397 9.85587 8.03345 10.8114 8.03345 12.7548C8.03345 14.6984 9.44901 16.5766 9.64635 16.8404C9.84393 17.1037 12.3791 21.2196 16.3943 22.803C19.7312 24.1188 20.4103 23.8571 21.1345 23.7911C21.8588 23.7254 23.4717 22.8358 23.8008 21.9134C24.1301 20.9911 24.1301 20.2006 24.0313 20.0353C23.9326 19.8708 23.6692 19.7719 23.2741 19.5744C22.879 19.3769 20.9369 18.4212 20.5748 18.2894C20.2127 18.1576 19.9494 18.0919 19.6859 18.4874C19.4225 18.8824 18.666 19.7719 18.4354 20.0353C18.2051 20.2994 17.9745 20.3323 17.5796 20.1347C17.1843 19.9365 15.9121 19.5199 14.4028 18.1743C13.2285 17.1272 12.4357 15.8342 12.2052 15.4386C11.9748 15.0437 12.1805 14.8296 12.3786 14.6328C12.5561 14.4558 12.7738 14.1715 12.9715 13.941C13.1685 13.7103 13.2342 13.5457 13.3659 13.2822C13.4978 13.0185 13.4318 12.7878 13.3332 12.5903C13.2342 12.3927 12.4666 10.4391 12.1153 9.65804Z" fill="white"/>
            </g>
            <defs>
            <linearGradient id="paint0_linear_327_2308" x1="1533.28" y1="3080.02" x2="1533.28" y2="1.01367" gradientUnits="userSpaceOnUse">
            <stop stop-color="#1FAF38"/>
            <stop offset="1" stop-color="#60D669"/>
            </linearGradient>
            <linearGradient id="paint1_linear_327_2308" x1="1587.72" y1="3189.88" x2="1587.72" y2="0.461426" gradientUnits="userSpaceOnUse">
            <stop stop-color="#F9F9F9"/>
            <stop offset="1" stop-color="white"/>
            </linearGradient>
            <clipPath id="clip0_327_2308">
            <rect width="31.76" height="32" fill="white" transform="translate(0.120117 0.461426)"/>
            </clipPath>
            </defs>
            </svg>
           <span>WhatsApp</span>
          </li>
         </a>
         <a href="tel:+55{{ variables.informacoes_loja.telefone }}">
          <li class="telefone">
           <svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M5.32667 10.8481C7.24667 14.6214 10.34 17.7148 14.1133 19.6348L17.0467 16.7014C17.42 16.3281 17.94 16.2214 18.4067 16.3681C19.9 16.8614 21.5 17.1281 23.1667 17.1281C23.5203 17.1281 23.8594 17.2686 24.1095 17.5186C24.3595 17.7687 24.5 18.1078 24.5 18.4614V23.1281C24.5 23.4817 24.3595 23.8209 24.1095 24.0709C23.8594 24.321 23.5203 24.4614 23.1667 24.4614C17.1551 24.4614 11.3897 22.0733 7.13891 17.8225C2.88809 13.5717 0.5 7.80633 0.5 1.79476C0.5 1.44114 0.640476 1.102 0.890524 0.85195C1.14057 0.601902 1.47971 0.461426 1.83333 0.461426H6.5C6.85362 0.461426 7.19276 0.601902 7.44281 0.85195C7.69286 1.102 7.83333 1.44114 7.83333 1.79476C7.83333 3.46143 8.1 5.06143 8.59333 6.55476C8.74 7.02143 8.63333 7.54143 8.26 7.91476L5.32667 10.8481Z" fill="#333333"/>
            </svg>
           <span>{{fixo_formatado}}</span> 
          </li>
         </a>
        </ul>
       </div>
       <div class="atendimento-sac-desc">
        <hr>
        <p>{{ variables.atendimento.texto_sac | raw}}</p>
       </div>
     </div>
     <div class="atendimento-card atendimento-card-corporativo">
      <svg width="70" height="71" viewBox="0 0 70 71" fill="none" xmlns="http://www.w3.org/2000/svg">
       <g clip-path="url(#clip0_327_2366)">
       <path d="M43.7499 9.21143C45.297 9.21143 46.7807 9.82601 47.8747 10.92C48.9687 12.0139 49.5833 13.4977 49.5833 15.0448V26.7114H55.4166C56.9637 26.7114 58.4474 27.326 59.5414 28.42C60.6353 29.5139 61.2499 30.9977 61.2499 32.5448V55.8781C62.0235 55.8781 62.7653 56.1854 63.3123 56.7324C63.8593 57.2793 64.1666 58.0212 64.1666 58.7948C64.1666 59.5683 63.8593 60.3102 63.3123 60.8572C62.7653 61.4041 62.0235 61.7114 61.2499 61.7114H8.74992C7.97637 61.7114 7.2345 61.4041 6.68752 60.8572C6.14054 60.3102 5.83325 59.5683 5.83325 58.7948C5.83325 58.0212 6.14054 57.2793 6.68752 56.7324C7.2345 56.1854 7.97637 55.8781 8.74992 55.8781V26.7114C8.74992 25.1643 9.3645 23.6806 10.4585 22.5866C11.5524 21.4927 13.0362 20.8781 14.5833 20.8781H20.4166V15.0448C20.4166 13.4977 21.0312 12.0139 22.1251 10.92C23.2191 9.82601 24.7028 9.21143 26.2499 9.21143H43.7499ZM20.4166 26.7114H14.5833V55.8781H20.4166V26.7114ZM55.4166 32.5448H49.5833V55.8781H55.4166V32.5448ZM43.7499 15.0448H26.2499V55.8781H43.7499V15.0448ZM37.9166 44.2114V50.0448H32.0833V44.2114H37.9166ZM37.9166 32.5448V38.3781H32.0833V32.5448H37.9166ZM37.9166 20.8781V26.7114H32.0833V20.8781H37.9166Z" fill="#333333"/>
       </g>
       <defs>
       <clipPath id="clip0_327_2366">
       <rect width="70" height="70" fill="white" transform="translate(0 0.461426)"/>
       </clipPath>
       </defs>
      </svg>
      <h3>Áreas Corporativas</h3>
      <div class="atendimento-corporativo-contatos">
       <ul>
        <a href="mail:#"> <!-- EMAIL MARKETING ////////////////////////////// -->
         <li>
          <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
           <path d="M5.33341 27.1283C4.60008 27.1283 3.97253 26.8674 3.45075 26.3456C2.92897 25.8238 2.66764 25.1958 2.66675 24.4616V8.46159C2.66675 7.72826 2.92808 7.1007 3.45075 6.57892C3.97341 6.05714 4.60097 5.79581 5.33341 5.79492H26.6667C27.4001 5.79492 28.0281 6.05625 28.5507 6.57892C29.0734 7.10159 29.3343 7.72914 29.3334 8.46159V24.4616C29.3334 25.1949 29.0725 25.8229 28.5507 26.3456C28.029 26.8683 27.401 27.1291 26.6667 27.1283H5.33341ZM16.0001 17.7949L5.33341 11.1283V24.4616H26.6667V11.1283L16.0001 17.7949ZM16.0001 15.1283L26.6667 8.46159H5.33341L16.0001 15.1283ZM5.33341 11.1283V8.46159V24.4616V11.1283Z" fill="black"/>
          </svg>
          <span>Marketing</span>
         </li>
        </a>
        <a href="mail:#"> <!-- EMAIL QUERO SER UM FORNECEDOR ////////////////////////-->
         <li>
          <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
           <path d="M5.33341 27.1283C4.60008 27.1283 3.97253 26.8674 3.45075 26.3456C2.92897 25.8238 2.66764 25.1958 2.66675 24.4616V8.46159C2.66675 7.72826 2.92808 7.1007 3.45075 6.57892C3.97341 6.05714 4.60097 5.79581 5.33341 5.79492H26.6667C27.4001 5.79492 28.0281 6.05625 28.5507 6.57892C29.0734 7.10159 29.3343 7.72914 29.3334 8.46159V24.4616C29.3334 25.1949 29.0725 25.8229 28.5507 26.3456C28.029 26.8683 27.401 27.1291 26.6667 27.1283H5.33341ZM16.0001 17.7949L5.33341 11.1283V24.4616H26.6667V11.1283L16.0001 17.7949ZM16.0001 15.1283L26.6667 8.46159H5.33341L16.0001 15.1283ZM5.33341 11.1283V8.46159V24.4616V11.1283Z" fill="black"/>
          </svg>
          <span>Quero ser um fornecedor</span>
         </li>
        </a>
        <a href="mail:#"> <!-- EMAIL OUVIDORIA /////////////////////////////////-->
         <li>
          <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
           <path d="M5.33341 27.1283C4.60008 27.1283 3.97253 26.8674 3.45075 26.3456C2.92897 25.8238 2.66764 25.1958 2.66675 24.4616V8.46159C2.66675 7.72826 2.92808 7.1007 3.45075 6.57892C3.97341 6.05714 4.60097 5.79581 5.33341 5.79492H26.6667C27.4001 5.79492 28.0281 6.05625 28.5507 6.57892C29.0734 7.10159 29.3343 7.72914 29.3334 8.46159V24.4616C29.3334 25.1949 29.0725 25.8229 28.5507 26.3456C28.029 26.8683 27.401 27.1291 26.6667 27.1283H5.33341ZM16.0001 17.7949L5.33341 11.1283V24.4616H26.6667V11.1283L16.0001 17.7949ZM16.0001 15.1283L26.6667 8.46159H5.33341L16.0001 15.1283ZM5.33341 11.1283V8.46159V24.4616V11.1283Z" fill="black"/>
          </svg>
          <span>Ouvidoria</span>
         </li>
        </a>
       </ul>
      </div>
      <div class="atendimento-corporativo-trabalheconosco">
       <hr>
       <h4>Trabalhe conosco</h4>
       <p>{{ variables.atendimento.txt_trabalhe_conosco | raw }}</p>
       <div>
        <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
         <path d="M5.33341 27.1283C4.60008 27.1283 3.97253 26.8674 3.45075 26.3456C2.92897 25.8238 2.66764 25.1958 2.66675 24.4616V8.46159C2.66675 7.72826 2.92808 7.1007 3.45075 6.57892C3.97341 6.05714 4.60097 5.79581 5.33341 5.79492H26.6667C27.4001 5.79492 28.0281 6.05625 28.5507 6.57892C29.0734 7.10159 29.3343 7.72914 29.3334 8.46159V24.4616C29.3334 25.1949 29.0725 25.8229 28.5507 26.3456C28.029 26.8683 27.401 27.1291 26.6667 27.1283H5.33341ZM16.0001 17.7949L5.33341 11.1283V24.4616H26.6667V11.1283L16.0001 17.7949ZM16.0001 15.1283L26.6667 8.46159H5.33341L16.0001 15.1283ZM5.33341 11.1283V8.46159V24.4616V11.1283Z" fill="black"/>
        </svg> <!-- EMAIL ENVIO DE CURRICULO ////////////////////////////////////-->
        <p><a href="mail:#">Envie seu currículo</a> ou <br><a href="https://br.indeed.com/cmp/Norton-Distribuidora" target="_blank" rel="noopener noreferrer">Acesse o Indeed</a></p>
       </div>
      </div>
     </div>

    </div>
    <p>{{ variables.atendimento.horario | raw}}</p>
   </section>
  </main>
 </article>