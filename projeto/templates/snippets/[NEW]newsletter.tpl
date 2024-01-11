{% if variables.cms_rodape.cms_bg_newsletter is not empty %}
  <style>
    #newsletter_popup{
     background: radial-gradient(#333, #555);
     width: 500px;
     height: 500px;
     position: fixed;
     top: calc(50% - 250px);
     left: calc(50% - 250px);
     display: flex;
     justify-content: center;
     align-items: center;
     z-index: 999;
     color: #FFFFFF;
    }
    #newsletter_popup .popup_close{
     color: #FFF;
     position: absolute;
     width: 40px;
     height: 40px;
     display: flex;
     justify-content: center;
     align-items: center;
     right: 0;
     top: 0;
     cursor: pointer;
    }
    #newsletter_popup .popup_close > button{
     border: none;
     background-color: transparent;
     color: #FFF;
     width: 100%;
     height: 100%;
    }
    section.popup_content{
     color: #FFF;
     width: fit-content;
    }
    section.popup_content .newspopup_title h3,
    section.popup_content .newspopup_title p{
     margin: 0;
     color: #FFFFFF;
    }
    section.popup_content .newspopup_title h3{
     font-size: 28px;
     font-weight: 700;
    }
    section.popup_content .newspopup_title{
     margin-bottom: 15px;
    }
    /* POPUP FORM */
    div.newspopup_subform{
     display: flex;
     width: 100%;
     flex-direction: row;
     justify-content: space-between;
    }
    /* POPUP NOME e EMAIL */
    section.popup_content .newspopup_nome, section.popup_content .newspopup_email{
     display: inline-block;
     /*margin-right: 10px;*/
    }
    section.popup_content .newspopup_nome p, section.popup_content .newspopup_email p{
     padding: 0;
     margin: 0 0 5px 0;
     color: #FFFFFF;
    }
    section.popup_content div input{
     padding: 10px;
    }
    /* POPUP BOTÃO */
    section.popup_content div button{
     width: 100%;
     padding: 15px;
     margin-top: 15px;
     background-color: red;
     border: none;
     color: #FFF;
     font-weight: 700;
     font-size: 18px;
     border-left: 2px solid rgb(158, 0, 0);
     border-bottom: 2px solid rgb(158, 0, 0);
     box-shadow: -2.5px 5px 5px rgba(0,0,0,.3);
    }
    /*ANIMATION*/
    section.popup_content div button:hover{
     background-color: rgb(255, 59, 59);
    }
    section.popup_content div button:active{
     box-shadow: none;
     background-color: rgb(158, 59, 59);
    }
    /* MEDIA QUERIES */
    @media screen and (max-width: 600px){
      #newsletter_popup{
       background: radial-gradient(#333, #555);
       width: 90%;
       height: auto;
       position: fixed;
       /*top: calc(50% - 250px);
       left: calc(50% - 250px);*/
      }
     .newspopup_title{
      display: flex;
      justify-content: center;
     }
     div.newspopup_subform{
      align-items: center;
      width: 100%;
     }
     .newspopup_title .newspopup_content{
      width: 90%;
     }
     #newsletter_popup{
      width: 80%;
      height: 500px;
     }
     /* POPUP FORM */
    div.newspopup_subform{
     display: flex;
     flex-direction: column;
     width: 100%;
     justify-content: center;
    }
    /* POPUP BOTÃO */
    section.popup_content div button{
     width: 90%;
    }
    section.popup_content div.newspopup_botao{
     display: flex;
     justify-content: center;
    }
    section.popup_content .newspopup_nome, section.popup_content .newspopup_email{
     margin: 0 auto 15px auto;
     width: 90%;
    }
    section.popup_content div input{
     width: 100%;
     box-sizing: border-box;
    }
   }
  </style>
   <aside id="newsletter_popup" style="display: none;">
    <div class="popup_close">
     <button>X</button>
    </div>
    <section class="popup_content">
     <div class="newspopup_title">
      <div class="newspopup_content">
       <h3>Newsletter</h3>
       <p>Inscreva-se para receber novas ofertas de produtos e descontos!</p>
      </div>
     </div>
     <form class="newspopup_form" action="/cadastro_newsletter.php" align-items="center" justify-content="center" id="newsletter" method="post" name="newsletter" onsubmit="return newsletterRegister();">
       <div class="newspopup_subform">
         <div class="newspopup_nome">
          <p>Nome</p>
          <input type="text" placeholder="Digite seu nome"  id="newsletter_name" name="newsletter_name">
         </div>
         <div class="newspopup_email">
          <p>E-mail</p>
          <input type="text" placeholder="Digite seu e-mail" id="newsletter_email" name="newsletter_email">
         </div>
       </div>
       <div class="newspopup_botao">
        <button type="submit">
         <span>{{ variables.cms_rodape.cms_texto_botao_news | raw }}</span>
        </button>
       </div>
      </form>
    </section>
   </aside>
   <script>
    let popup = document.getElementById('newsletter_popup');

    setTimeout(()=>{
      console.log('Intervalo rodando...');
      popup.style.display = "flex";
    },2000);

    let closePopup = ()=>{
     console.log('Closed!');
     popup.style.display = 'none';
    };

    const botao_close = document.querySelector('.popup_close');
    botao_close.addEventListener('click', closePopup);
  

    function newsletterRegister() {
     return (
       validaNewsletter() &&
       $.ajax({
         type: "POST",
         url: "/cadastro_newsletter.php?ajax=true",
         data: $(".newsletter form#newsletter").serialize(),
         headers: {
           ajaxSubmit: !0 }
         ,
         dataType: "json",
         beforeSend: function () {
           loadingMsg("", ".newsletter form#newsletter");
         }
         ,
         complete: function (e) {
           $(".newsletter form#newsletter").unblock();
         }
         ,
         success: function (e) {
           $(".newsletter #newsletter .message").remove(),
             e.message
             ? $(".newsletter #newsletter .registered-successfully").prepend(
             '<div class="message news-erro btn danger flex w-100 position-absolute" align-items="center" align-items="center">Verifique seu e-mail</div>'
           )
           : ($(".newsletter #newsletter .registered-successfully").prepend(
             '<div class="message news-sucesso btn btn-primary btn-success button-style-primary flex w-100 position-absolute w-100 h-100"     align-items="center" justify-content="center">Sucesso</div>'
           ),
              setTimeout(function () {
             $("form#newsletter .message.news-sucesso").fadeOut("slow");
           }
                         , 2e3));
         }
         ,
       }
             ),
       !1
     );
   }
   </script>
   {% endif %}