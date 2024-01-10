{% if variables.cms_rodape.cms_bg_newsletter is not empty %}
<div class="footer-newsletter">
  <div class="newsletter foot-content flex" justify-content="space-between">
    <div class="newsletter-title flex" align-items="center">
      <div class="news-icon">
        <i class="fa-duotone fa-envelope fa-3x">
        </i>
      </div>
      <div class="news-text flex" direction="column">
        <h5>{{ variables.cms_rodape.cms_titulo_news | raw }}</h5>
        <p>{{ variables.cms_rodape.cms_texto_news | raw }}</p>
      </div>
    </div>
    <div class="newsletter-form flex" align-items="center">
      <form action="/cadastro_newsletter.php" class="newsletter-form flex" align-items="center" justify-content="center" id="newsletter" method="post" name="newsletter" onsubmit="return newsletterRegister();">
        <input class="newsletter-input" id="newsletter_name" name="newsletter_name" placeholder="nome" type="text"/>
        <input class="newsletter-input" id="newsletter_email" name="newsletter_email" placeholder="Insira o e-mail aqui ..." type="text"/>
        <div class="registered-successfully position-relative w-100">
          <button class="btn btn-success w-100 h-100 position-absolute" type="submit">
            <span>{{ variables.cms_rodape.cms_texto_botao_news | raw }}</span>
          </button>
        </div>
      </form>
    </div>
  </div>
</div>  
{% endif %}
<style>
  .footer-newsletter {
    margin-top: 20px;
    background: var(--cor-bg-news);
  }
  .newsletter.foot-content {
    margin: 0 auto;
    width: 100%;
    gap: 10px;
    max-width: 1300px;
  }
  .newsletter-title {
    color: var(--cor-txt-nwes);
    gap: 5px 15px;
    line-height: 1.250;
  }
  .newsletter-title h5 {
    font-size: 1.250em;
  }
  .footer-newsletter .news-text p {
    font-size: 0.875em;
  }
  .newsletter .news-icon {
    grid-row: span 2;
  }
  .newsletter-form{
    gap: 10px;
  }
  .newsletter-form .newsletter-input {
    border: none;
    border-radius: 3px;
    height: 40px;
    padding: 5px;
    font-size: 0.875em;
  }
  .newsletter-form form#newslettert {
    gap: 20px;
  }
  .newsletter.foot-content .btn-success {
    padding: 10px 30px;
    font-size: 0.875em;
    position: absolute;
    right: 0;
    left: 0;
    background-color: var(--cor-bg-btn-nwes);
    border: none;
    color: #fff;
    opacity: 0.9;
}
  .newsletter.foot-content .btn-success:hover {
    opacity: 1;
}
  .registered-successfully {
    height: 40px;
    width: 200px;
  }
  @media (max-width: 1000px) {
    .newsletter.foot-content {
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    .newsletter .news-icon {
    display: none;
}
.newsletter .news-icon {
      display: none;
    }
    .newsletter-form {
    width: 100%;
}
.newsletter-form {
    width: 100%;
    margin-top: 5px;
}
.newsletter-form .newsletter-input, .registered-successfully {
    width: 100%;
}
  }
  @media (max-width: 768px) {
    .newsletter-title {
      display: flex;
      flex-direction: column;
      line-height: inherit;
      text-align: center;
    }
    .newsletter-form {
      display: flex;
      flex-direction: column;
      width: 100%;
    }
    form#newsletter {
      align-items: inherit;
    }
    .newsletter-form .newsletter-input {
      width: 100%;
    }
    .newsletter.foot-content .btn-success {
      width: 100%;
    }
  }
</style>
<script>
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