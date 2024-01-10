<style>
  .shippingMethods {
    margin-top: 10px;
    text-align: initial;
    white-space: unset;
  }
  .shippingMethods dd {
    margin-bottom: 20px;
    text-align: initial;
  }
  .shippingMethods dd div {
    display: grid;
    grid-template-columns: 1fr 90px 20px;
    gap: 0 10px;
  }
  .shippingMethods dd div span.title p {
    display: block;
    margin-bottom: 5px;
    font-size: 0.875em;
  }
  .shippingMethods dd div span span.desc {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    white-space: normal;
    padding: 0;
    margin: 0;
    font-size: 0.875em;
  }
  .shippingMethods dd div span small, .shippingMethods dd div span span.desc {
    display: block;
    margin: 2px 0;
    padding: 0;
    word-break: initial;
    white-space: break-spaces;
  }
  .shippingMethods span.price {
    font-size: 0.875em;
    font-weight: bold;
    text-align: end;
  }
  .shippingMethods span.check input#shipping {
    margin: 0;
  }
  .shipping-options {
    background: #f9f9f9;
    margin: 10px;
    padding: 15px;
  }
  .shipping-options * {
    color: #333;
}
</style>
<dl class="shipping-options">
  <dd class="destination">
    <div class="city_state">{{quote.destiny.state|raw}} - {{quote.destiny.state_code}}</div>
    <div class="street">{{quote.destiny.street|raw}}</div>
  </dd>
  {% for option in quote.options %}
  <dd class="option" id="{{option.id}}">
    <div>
      <span class="title">
        <p>{{option.title|raw}}:
        </p>
        <small class="desc">{{option.description|raw}}</small>
      </span>
      <span class="price">{{currency.format(option.cost)}}</span>
      <span class="check">
        <input type="radio" value="{{option.id}}" id="shipping" name="shipping" {{option.selected ? 'checked' : ''}}>
      </span>
    </div>
  </dd>
  {% endfor %}
</dl>