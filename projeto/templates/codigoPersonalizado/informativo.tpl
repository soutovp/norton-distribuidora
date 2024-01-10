<style type="text/css">
 .informational-banner {
  display: flex;
  gap: 15px;
  justify-content: space-around;
 }
 .box-informativo{
  border: 1px solid red;
  padding: 15px  15px;
  display: flex;
  flex-direction: row;
  gap: 2px;
  align-items: center;
  justify-content: center;
  width: 270px;
  border-radius: 5px;
  transition: .5s;
 }
 .box-informativo > div{
  display: flex;
  flex-direction: column;
  align-items: flex-start;
 }
 .box-informativo:hover{
  box-shadow: 0px 0px 10px rgba(0,0,0,.3);
  cursor: pointer;
 }
 .box-informativo img{
  width: 100px;
  padding-left: 15px;
 }
 .box-informativo h6{
  font-size: 18px;
  font-weight: 600;
}
.box-informativo p{
  font-size: 12px;
}
.box-informativo h6, .box-informativo p{
  margin: 0;
  text-align: left;
 }
 .informational-banner[type="mobile"]{
  display: none;
}
 @media (max-width: 600px) {
  .informational-banner {
    align-items: center;
   }
   .informational-banner div {
     width: 70%;
     justify-content: center;
     flex-wrap: wrap;
     text-align: center;
     margin: 2px 0
   }
   .box-informativo{
    align-items: center;
    flex-direction: column;
    padding: 5px  15px;
   }
   .box-informativo img{
    width: 50px;
    padding-left: 0px;
   }
   .box-informativo > div{
    align-items: center;
   }
   .box-informativo > div > h6{
    font-size: 16px;
    font-weight: 600;
    margin: 0 !important;
  }
  .box-informativo p{
    font-size: 10px;
  }
  .box-informativo h6, .box-informativo p{
    text-align: center;
   }
  .informational-banner[type="mobile"]{
    display: flex;
    flex-direction: column;
  }
  .informational-banner:not([type="mobile"]){
    display: none;
  }
 }
</style>
<div class="informational-banner" wrap="true">
 <div class="box-informativo">
  <div>
    <h6>Frete Grátis a partir de R$ 250</h6>
    <p>Para Rio de Janeiro, Capital</p>
  </div>
  <img src="{{ variables.icones_loja.caminhao_fretegratis }}" alt="Caminhão Frete Grátis">
 </div>
 <div class="box-informativo">
  <div>
    <h6>CLICK e RETIRE no Depósito</h6>
    <p>Em duas horas sem pagar frete</p>
  </div>
  <img src="{{ variables.icones_loja.caixa_papelao }}" alt="Caixa de papelão retire no depósito">
</div>
<div class="box-informativo">
  <div>
    <h6>Compra FATURADA</h6>
    <p>Compre agora e pague em até <strong style="color: red;">40 dias</strong></p>
  </div>
    <img src="{{ variables.icones_loja.n_de_norton }}" alt="Logo Norton Distribuidora compra faturada">
</div>
<div class="box-informativo">
  <div style="display: flex; align-items: center;">
    <h6>Parcele em até</h6>
    <span style="font-size: 24px; color: red; font-weight: 700;">6x</span>
    <p>parcela mínima de R$ 200</p>
  </div>
    <img src="{{ variables.icones_loja.cartao_cred_seis }}" alt="Cartão de credito parcele 6x">
 </div>
<div class="box-informativo">
  <div>
    <h6>Entrega Expressa</h6>
    <p>Pediu? Chegou!<br>
    Receba em até 3 horas<br>
    confira condições e regras</p>
  </div>
    <img src="{{ variables.icones_loja.foguete_subindo }}" alt="Cartão de credito parcele 6x">
 </div>
</div>

<div class="informational-banner" type="mobile" wrap="true">
 <div class="box-informativo">
  <img src="{{ variables.icones_loja.caminhao_fretegratis }}" alt="Caminhão Frete Grátis">
  <div>
    <h6>Frete Grátis a partir de R$ 250</h6>
    <p>Para Rio de Janeiro, Capital</p>
  </div>
 </div>
 <div class="box-informativo">
  <img src="{{ variables.icones_loja.caixa_papelao }}" alt="Caixa de papelão retire no depósito">
  <div>
    <h6>CLICK e RETIRE no Depósito</h6>
    <p>Em duas horas sem pagar frete</p>
  </div>
</div>
<div class="box-informativo">
  <img src="{{ variables.icones_loja.n_de_norton }}" alt="Logo Norton Distribuidora compra faturada">
  <div>
    <h6>Compra FATURADA</h6>
    <p>Compre agora e pague em até <strong style="color: red;">40 dias</strong></p>
  </div>
</div>
<div class="box-informativo">
  <img src="{{ variables.icones_loja.cartao_cred_seis }}" alt="Cartão de credito parcele 6x">
  <div style="display: flex; align-items: center;">
    <h6>Parcele em até</h6>
    <span style="font-size: 24px; color: red; font-weight: 700;">6x</span>
    <p>parcela mínima de R$ 200</p>
  </div>
 </div>
<div class="box-informativo">
  <img src="{{ variables.icones_loja.foguete_subindo }}" alt="Cartão de credito parcele 6x">
  <div>
    <h6>Entrega Expressa</h6>
    <p>Pediu? Chegou!<br>
    Receba em até 3 horas<br>
    confira condições e regras</p>
  </div>
 </div>
</div>
