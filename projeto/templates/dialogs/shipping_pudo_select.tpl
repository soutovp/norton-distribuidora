<style type="text/css">
    section.select-pudos-shipping { max-width: 700px; padding:0; }

    section.select-pudos-shipping div.instructions { font-size: 1em; margin-bottom:20px; display: flex; }
    section.select-pudos-shipping div.instructions span { vertical-align: middle; display: inline-flex; text-align: left; flex-direction: column; }
    section.select-pudos-shipping div.instructions i { color: #0b73b8; font-size: 2em; margin-right: 10px; vertical-align: middle; display: inline-flex; flex-direction: column;  }

    section.select-pudos-shipping .lg-header { border-bottom: 0; padding-bottom: 5px; }
    section.select-pudos-shipping .lite-grid > .lg-body {
        cursor: pointer;
        border-top: 1px solid #d7d7d7;
    }
    section.select-pudos-shipping .lite-grid > .lg-body:hover {
        background: #e3e3e3;
    }

    section.select-pudos-shipping .lite-grid--item { margin: 0px; border: none; padding: 5px; position: relative; }
    section.select-pudos-shipping .lite-grid--item.select { width: auto; min-width: 50px;  }
    section.select-pudos-shipping .lite-grid--item.map { width: auto; min-width: 70px; }
    section.select-pudos-shipping .lite-grid--item span.company{ display:none; }

    section.select-pudos-shipping div.actions { display: flex; flex-flow: row nowrap; justify-content: space-between;  align-items: center; margin-top: 20px;  }
    section.select-pudos-shipping div.actions .btn { font-size: 0.8em; padding: 10px 15px; }

    @media only screen and (max-width:600px) {
        section.select-pudos-shipping .lite-grid { font-size: 0.9em; }
        section.select-pudos-shipping .lite-grid--item span.company{ display:block; width: 100%; margin-bottom: 2px; font-weight: bold; }
        section.select-pudos-shipping .lite-grid--item.company{ display:none; }
        section.select-pudos-shipping div.instructions { font-size: 0.9em; }
        section.select-pudos-shipping div.actions { flex-flow: column wrap;  }
        section.select-pudos-shipping div.actions button { margin-bottom: 10px; width: 100%; order:1; }
        section.select-pudos-shipping div.actions button.cancel { border:none; background: none; color:var(--custom-font-dark-color,#404040);  font-size: 1em; margin-bottom: 0; align-self: flex-end; order:2; }
    }

</style>
<section class="select-pudos-shipping">
    <div class="instructions"><i class="fas fa-exclamation-circle"></i><span><b>Selecione abaixo o endereço mais próximo de você.</b>Este endereço será utilizado para envio e retirada do seu pedido assim que entregue.</span></div>
    <form type="post" name="f-select-pudo" id="f-select-pudo" accept-charset="utf-8">
        <div class="lite-grid striped">
            <div class="lg-header">
                <div class="lite-grid--item select"></div>
                <div class="lite-grid--item company">Unidade</div>
                <div class="lite-grid--item address">Endereço</div>
                <div class="lite-grid--item lg-talign-center map">Mapa</div>
            </div>
            {% for pudoId,pudo in pudos %}
            {% set address = '%s, %s - %s'|format(pudo.street_line1,pudo.number,pudo.neighborhood,pudo.city) %}
            <div class="lg-body">
                <div class="lite-grid--item lg-talign-center select"><input data-prompt-position="topRight:-4,0" type="radio" name="pudo" value="{{pudoId}}" class="option-input radio validate[required]"></div>
                <div class="lite-grid--item company">{{pudo.name|raw}}</div>
                <div class="lite-grid--item address"><span class="company">{{pudo.name}}</span>{{ address|raw }}</div>
                <div class="lite-grid--item lg-talign-center map"><a href="https://maps.google.com/?q={{address}}" target="_blank"><i class="fas fa-map-marked-alt fa-lg"></i></a></div>
            </div>
            {% endfor %}
        </div>
        <div class="actions">
            <button type="button" class="btn cancel" onclick="$.fancybox.close();">Cancelar</button>
            <button type="submit" class="btn btn-primary" name="btn-submit"><i class="fad fa-home-heart"></i> Definir endereço de entrega</button>
        </div>
    </form>
</section>