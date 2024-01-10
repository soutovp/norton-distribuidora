<style type="text/css">
    section.terms-buy { max-width: 600px; padding: 10px 10px 0 10px; }
    section.terms-buy .terms { font-family: "Bitstream Vera Sans Mono", Consolas, Courier, monospace; border:1px solid rgba(199, 199, 199, 0.65); border-radius: 5px; padding:10px; overflow:auto; max-height:400px; font-size: 0.9em; }
    section.terms-buy .actions { display: flex; justify-content: start; align-items: center; margin: 10px 0; }
    section.terms-buy .actions label { margin-left: 10px; font-weight: bold; }
</style>
<script type="text/javascript">
    function verifica_aceite(valor){
        if (valor == true){
            $(".aceite").html("Processando, aguarde...");
            $.fancybox.close();
            shoppingCart.checkOut(false);
        }
    }
</script>
<section class="terms-buy">
    <div class="terms">{{terms.content|raw}}</div>
    <div class="actions">
        <input type="checkbox" onClick="verifica_aceite(this.checked)" value="1" id="aceite" name="aceite" class="option-input checkbox validate[required]" data-prompt-position="topRight:-3,0">
        <label for="aceite">LI E CONCORDO com os termos do Contrato acima.</label>
    </div>
</section>