{% include "header.tpl" %}
<style type="text/css">
    section.page-404 { margin: 30px 0; }
    section.page-404 .content { width: fit-content; display: flex; flex-flow: column; justify-content: center; align-items: center; padding: 10px 30px; margin: 0 auto;  }
    section.page-404 .content .icon { width: 70px; margin-bottom: 20px; color: #CCC; }
    section.page-404 .text-center { text-align: center; }
    section.page-404 .content .message { display: flex; flex-flow: column; }
</style>

<section class="page-404">
    <div class="content">
        <span class="icon">
            <i class="far fa-exclamation-triangle fa-4x"></i>
        </span>
        <h2>Ops! A p�gina solicitada n�o existe.</h2>
        <div class="message">
            <span class="text">O conte�do que voc� procurou pode n�o estar mais dispon�vel.</span>
            <span class="text">Certifique-se de que voc� digitou o endere�o corretamente.</span>
        </div>
    </div>
    <div class="text-center"><a href="{{goto.home}}" class="btn"> Ir para a p�gina inicial </a></div>
</section>
{% include "footer.tpl" %}