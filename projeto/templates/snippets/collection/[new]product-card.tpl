{% set card_direction = paginate.type is defined and paginate.type=="list"?"row":"column"%}
{% set image_default = product.gallery.images|first  %}
{% set secondary_image = false %}
{% if product.gallery.hover and product.gallery.images[1] %}
{% set secondary_image = product.gallery.images[1] %}
{% endif%}
{% set discount = (100 - ((product.price.sale / product.price.list)*100))|round %}
{% if card_direction == "column" %}
<div class="card-produto{% if not product.stock > 0 %} out-of-stock{% endif%}" style="flex-direction: column; position: relative; width: 200px; height: 450px; padding: 10px 15px; word-wrap: break-word;">
  <img class="rectangle" src="{{ image_default.thumb_src }}" alt="{{ product.name|raw }}" style="width: 100%; height: auto;" />
  <div class="frame" style="display: flex; flex-wrap: wrap; align-items: center; justify-content: center; gap: 10px; position: relative;">
    <div class="r" style="width: 100%; margin-top: -1px; opacity: 0.56; font-family: 'Inter-Bold', Helvetica; font-weight: 700; color: #1fce03; font-size: 14px; letter-spacing: 0; line-height: normal; white-space: normal;">R$ {{ product.price.sale }}</div>
    <div class="text-wrapper" style="width: 100%; color: #dadada; font-size: 12px; text-decoration: line-through; position: relative; font-family: 'Inter-Bold', Helvetica; font-weight: 700; letter-spacing: 0; line-height: normal; white-space: normal;">R$ {{ product.price.list }}</div>
    <div class="div" style="width: 100%; margin-top: -1px; color: #ff0000; font-size: 14px; white-space: normal; position: relative; font-family: 'Inter-Bold', Helvetica; font-weight: 700; letter-spacing: 0; line-height: normal;">-{{ discount }}% OFF</div>
  </div>
  <div class="text-wrapper-2" style="width: 100%; font-family: 'Inter-Bold', Helvetica; font-weight: 700; color: #6ea8ff; font-size: 12px; letter-spacing: 0; line-height: normal; white-space: normal;"><a href="{{ product.url }}" style="color: var(--vermelhohighlight);">{{ product.name|raw }}</a></div>
  {% if secondary_image %}
    <img class="material-symbols" src="{{ secondary_image.thumb_src }}" style="width: 20px; height: auto;" />
  {% endif %}
  <div class="frame-2" style="display: flex; flex-direction: column; align-items: flex-start; justify-content: center; gap: 10px; position: relative;">
    <div class="range" style="width: 100%; height: 10px; background-color: #d9d9d9; position: relative;">
      <div class="rectangle-2" style="width: {{ product.stock }}0%; height: 10px; background-color: var(--vermelhohighlight); position: absolute;"></div>
    </div>
    <p class="dispon-veis" style="width: 100%; font-family: 'Inter-Bold', Helvetica; font-weight: 700; color: var(--variable-collection-text-dark); font-size: 12px; letter-spacing: 0; line-height: normal; white-space: normal;">Disponíveis: <span style="color: #000000;">{{ product.stock }}</span></p>
    <div class="quantity-container" style="width: 100%; display: flex; align-items: center; gap: 10px;">
      <label for="quantity" style="margin-right: 10px;">Quantidade:</label>
      {#
      <div style="display: flex; align-items: center;">
        <button onclick="updateQuantity('-')" style="padding: 5px 10px; font-size: 12px;">-</button>
        <input type="number" id="quantity" name="quantity" min="1" value="1" style="width: 40px; text-align: center;">
        <button onclick="updateQuantity('+')" style="padding: 5px 10px; font-size: 12px;">+</button>
      </div>
      #}
      <div class="frame">
      <button class="text-wrapper" id="menos">-</button>
      <div class="div-wrapper">
        {#<input style="border: none;" id="quantidade" value="1">#}
        <input type="number" id="quantity" name="quantity" min="0" value="1" style="width: 40px; text-align: center;">
      </div>
      <button class="text-wrapper" id="mais">+</button>
    </div>
    <script>
     let qtd = document.querySelector('#quantity');
     let menos = document.querySelector('#menos');
     let mais = document.querySelector('#mais');
     menos.addEventListener('click', ()=>{
      updateQuantity('-')
     })
     mais.addEventListener('click', ()=>{
      updateQuantity('+')
     })
     function updateQuantity(sinal){
      if(sinal === '-' && qtd.value > 0){
       qtd.value = parseInt(qtd.value)-1;
       return;
      }
      // if(sinal === '+' && qtd.value >= {#{{ product.stock }}#}){
      // qtd.value = parseInt(qtd.value)+1;
      //}
      console.log(product.stock)
      {% if product.stock > qtd %}
       qtd.value = parseInt(qtd.value) + 1;
      {% endif %}
     }
     menos.addEventListener('click',()=>{
      if(qtd.value > 0){
      }else{
       return
      }
     })
     mais.addEventListener('click', ()=>{
      return;
     })
    </script>
    </div>
  </div>
  <div class="product-card-action w-100" style="margin-top: auto; padding-top: 10px;">
    <button class="btn btn-primary">Adicionar ao Carrinho</button>
  </div>
</div>
{% else %}
{% include 'snippets/collection/category_card_list.tpl' %}
{% endif %}
