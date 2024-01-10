<style>
  /*==Produto indisponível==*/
  .product-notify-availability button.btn-secondary {
    padding: 10px;
    border-radius: 3px;
    width: 100%;
  }
  .product-notify-availability ul li.email, .product-notify-availability ul li.name {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 10px;
    margin: 15px 0;
  }
</style>
<div class="product-notify-availability{{ product.stock > 0 ? ' hide':'' }}" data-element="notify-availability">
  <div class="title">Esse produto encontra-se indisponível.
    <small>Deixe seu contato que avisaremos quando chegar.
    </small>
  </div>
  <ul>
    <li class="name">
      <label for="notifica_nome" class="w-100">Seu nome:
      </label>
      <input type="text" name="notifica_nome" id="notifica_nome" class="campo_texto w-100" />
    </li>
    <li class="email">
      <label for="notifica_nome" class="w-100">
        <i class="fas fa-envelope">
        </i> Seu e-mail:
      </label>
      <input type="text" name="notifica_email" id="notifica_email" class="campo_texto w-100" />
    </li>
    <li class="newsletter">
      <input type="checkbox" name="newsletter" id="newsletter" value="1" class="campo_option" />
      <label for="newsletter">Desejo receber e-mails com lançamentos e promoções.
      </label>
    </li>
  </ul>
  {{ buttons.notify_add|raw }}
</div>
