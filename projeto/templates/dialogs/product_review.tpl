<style type="text/css">
    section.product-review { padding: 0; font-size: 0.9em; }
    section.product-review .form-btn.group { justify-content: space-between; }
    section.product-review fieldset.form-fields-group ul.fields li > input,
    section.product-review fieldset.form-fields-group ul.fields li > select { height: 35px; }
    section.product-review fieldset.form-fields-group ul.fields li > textarea { height: 100px; padding: 8px; }
    section.product-review .validate-code > li:first-child { display: flex; justify-content: center; flex-flow: column nowrap; }
    section.product-review .validate-code div.image { width: 135px; padding:1px; border:1px solid #E6E6E6;margin: 0 auto; }
    section.product-review .validate-code div.refresh { font-size: 0.6em; text-align: center;}
    section.product-review .validate-code input[name=code] { text-transform: uppercase; font-weight: bold; text-align: center; font-size: 1.2em; }

    li.rating {
        text-align: center;
        margin-bottom: 15px;
        display: flex;
        flex-direction: row-reverse;
        justify-content: center;
    }

    input.star { display: none; }

    label.star {
        cursor: pointer;
        padding: 2px;
        font-size: 20px;
        color: #dbdbdb;
        transition: all .2s;
        margin: 0;
    }

    input.star:checked ~ label.star {
        color: #FD4;
        transition: all .25s;
        text-shadow: 0 0 1px #ccc;
    }
    input.star-1:checked ~ label.star { color: #F62; }
    input.star-2:checked ~ label.star { color: #ffae23; }
    input.star-5:checked ~ label.star { color: #ffae23; }

    label.star:hover,label.star:hover ~ label.star { color: #FE7;  }

    @media only screen and (max-width:600px) {
        section.product-review .form-btn.group button { margin-bottom: 10px; order:1; }
        section.product-review .form-btn.group button.cancel { border:none; background: none; color:var(--custom-font-dark-color,#404040); font-size: 1em; margin: 0; order:2; }
    }
</style>
<section class="product-review">

    <form name="f-product-review" id="f-product-review" type="post" data-element="form-review">
        <div class="container">
            <fieldset class="form-fields-group">
                <legend><span>Seus dados</span></legend>
                <ul class="fields">
                    <li>
                        <label for="name">Nome:</label>
                        <input type="text" name="name" id="name" class="validate[required,minSize[2],maxSize[50]]" autocomplete="off" placeholder="Seu nome" value="{{customer.firstname|raw}}" />
                    </li>
                    <li>
                        <label for="email">E-mail:</label>
                        <input type="email" inputmode="email" value="{{customer.email}}" name="email" id="email" class="validate[required,custom[email]]" placeholder="seu@email.com" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,}$">
                    </li>
                </ul>
            </fieldset>
            <fieldset class="form-fields-group">
                <legend><span>Sua avaliação</span></legend>
                <ul>
                    <li class="rating">

                        {% for star in 5..1 %}
                            <input class="star star-{{star}}" id="star-{{star}}" type="radio" name="rating" value="{{star}}" />
                            <label class="star star-{{star}}" for="star-{{star}}"><i class="fas fa-star"></i></label>
                        {% endfor %}

                    </li>
                </ul>
                <ul class="fields">
                    <li>
                        <label for="title">Título do comentário:</label>
                        <input type="text" name="title" id="title" class="validate[required,minSize[3]]" placeholder="Ex. ótimo custo/benefício" />
                    </li>
                </ul>
                <ul class="fields">
                    <li>
                        <label for="comment">Descreva seu comentário (opcional):</label>
                        <textarea  name="comment" id="comment" rows="10" placeholder="Descreva a sua avaliação sobre este produto."></textarea>
                    </li>
                </ul>
                <ul class="fields validate-code">
                    <li>
                        <div class="image"><img id="image" src="{{ url("current",{"img":1,"v":date|date("U")}) }}" alt=""></div>
                        <div class="refresh"><a tabindex="-1" href="javascript:void(0);" title="Trocar imagem" onclick="$('#image').attr('src','{{ url("current",{"img":1,"v":date|date("U")}) }}');return false"><i class="fas fa-sync-alt"></i> Trocar Imagem</a></div>
                    </li>
                    <li>
                        <label class="label">Informe o código de validação ao lado:</label>
                        <input type="text" class="input" name="code" size="20" maxlength="6" required="required">
                    </li>
                </ul>
            </fieldset>
            <div class="form-btn group">
                <button type="button" name="btn-cancel" id="btn-cancel" class="cancel" onclick="$.fancybox.close();"><span>Cancelar</span></button>
                <button type="submit" name="btn-submit" id="btn-submit" class="button-style-primary btn btn-primary"><i class="fas fa-check"></i> <span>Confirmar avaliação</span></button>
            </div>
        </div>
    </form>
</section>