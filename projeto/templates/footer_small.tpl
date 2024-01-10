<style type="text/css">
  body footer.footer-content {
    background: var(--cor-bg-rodape);
    margin: 0;
    padding: 0;
    border-top: 1px solid;
  }
  footer.footer-content .footer-middle{
    display: flex;
    justify-content: center;
    align-items: stretch;
    padding: 10px 30px;
    margin: 0 auto;
  }
  .security{
    margin-top: 10px;
  }
  footer.footer-content .footer-middle div.info-store{
    font-size: 1em;
    color: var(--cor-txt-rodape);
    min-width: 600px;
    margin-top: 10px;
  }
  footer.footer-content .footer-middle div.info-store a{
    color: var(--cor-txt-rodape);
    font-size: 16px;
    text-decoration: none;
  }
  footer.footer-content .footer-middle div.info-store a:hover{
    color: var(--cor-txt-rodape-hover);
  }
  footer.footer-content .footer-middle div.info-store ul{
    list-style: none;
    padding: 0;
    margin: 0;
  }
  footer.footer-content .footer-middle div.info-store ul li{
    padding: 0 0 3px 0;
    margin: 0;
  }
  footer.footer-content .footer-middle div.info-store ul li i{
    margin-right: 5px;
    font-size: 16px;
  }
  footer.footer-content .footer-middle div.info-store ul li:last-child{
    font-size: .8em;
    padding-top: 5px;
  }
  footer.footer-content .footer-middle .divider{
    background: var(--color-txt-20);
    width: 2px;
    margin: 0 10px;
  }
  body footer.footer-content .footer-middle div.security .safe{
    display:flex;
    align-items:center;
    justify-content:space-between;
    color: var(--cor-txt-rodape) ;
    width: 100%;
    padding: 5px 0;
    margin: auto;
    font-size: 90%;
  }
  footer.footer-content .footer-middle div.security .safe .safe-text {
    line-height: 12px;
    margin-right: 5px;
    text-align: right;
    width: 100%;
    font-weight: 700;
    font-size: 80%;
  }
  footer.footer-content .footer-middle div.security .safe .safe-icon {
    border-radius: 50%;
    border: 2px solid green;
    background: #fff;
    padding: 5px 8px;
    vertical-align: middle;
  }
  body footer.footer-content .footer-middle div.security .safe i {
    color: green;
  }
  footer.footer-content .footer-middle div.security .safe-ssl{
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 200%;
    color: var(--cor-txt-rodape);
    width: 100%;
    border: 1px solid var(--cor-txt-rodape);
    border-radius: 4px;
    padding: 2px;
    margin: 10px auto;
  }
  footer.footer-content .footer-bottom {
    font-size: 11px;
    text-align: center;
    padding: 13px 0;
    width: 100%;
    color: var(--cor-txt-rodape);
  }
  @media (max-width:768px){
    footer.footer-content .footer-middle {
      flex-direction:column;
      padding: 10px;
    }
    footer.footer-content .footer-middle div.info-store{
      min-width:unset;
    }
    footer.footer-content .footer-middle div.info-store ul li{
      text-align:center;
    }
    .security{
      display:flex;
    }
    body footer.footer-content .footer-middle div.security .safe,footer.footer-content .footer-middle div.security .safe-ssl{
      border:none;
      width:auto;
    }
  }
</style>
<!--api whats-->
{% set tel_ddd = variables.cms_redes_sociais.cms_telefone_whats|slice(0, 2) %}
{% set tel_prefixo = variables.cms_redes_sociais.cms_telefone_whats|slice(2, 5)
%} {% set tel_sufixo = variables.cms_redes_sociais.cms_telefone_whats|slice(7,
 4) %} {% set tel_formatado = '(' ~ tel_ddd ~ ') ' ~ tel_prefixo ~ '-' ~
tel_sufixo %} {% if variables.cms_redes_sociais.cms_telefone_whats is not empty
%}{% endif %}
<!--Fim api whats-->
<!--Banners-->
<div class="content-banners" style="padding:20px 15px;max-width:1300px;margin:auto;">
  {% if section.id == "login" %}
  {{ showcase.getByTag("login") }}
  {% endif %}
  {% if section.id == "checkout_success" %}
  {{ showcase.getByTag("checkout") }}
  {% endif %}
</div>
<!--Fim Banners-->
<footer class="footer-content">
  <div class="footer-middle">
    <div class="info-store">
      <ul>
        {% if variables.cms_redes_sociais.cms_telefone_whats is not empty %}
        <li>
          <a href="https://api.whatsapp.com/send?phone=55{{ variables.cms_redes_sociais.cms_telefone_whats }}"
             target="_blank">
            <span>
              <i class="fab fa-whatsapp">
              </i>
            </span>{{tel_formatado}}
          </a>
        </li>
        {% endif %}
        {% if store.email_sac %}
        <li>
          <a href="mailto:{{store.email_sac}}">
            <span>
              <i class="fa-duotone fa-envelope">
              </i>
            </span>{{store.email_sac}}</a>
        </li>
        {% endif %}
      </ul>
    </div>
    <div class="divider">
    </div>
    <div class="security">
      <div class="safe">
        <div class="safe-text">Ambiente
          <br />protegido
        </div>
        <div class="safe-icon">
          <i class="fa-duotone fa-lock-keyhole">
          </i>
        </div>
      </div>
      <div class="safe-ssl">
        <i class="fak fa-letsencrypt">
        </i>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <b>{{ store.name | raw }}</b> - TODOS OS DIREITOS RESERVADOS.
    <br />CNPJ:
    {{store.cnpj}}, {{store.address|raw}}, CEP: {{store.postcode}}<br />PROIBIDA
    A REPRODUÇÃO TOTAL OU PARCIAL. PREÇOS E ESTOQUE SUJEITOS A ALTERAÇÃO SEM
    AVISO PRÉVIO.
  </div>
</footer>