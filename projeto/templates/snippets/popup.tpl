<style>
  div#popups #popup-blank{
    display: none;
  }
  div#popups {
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100%;
    z-index: -1;
    background-color: transparent;
    transition: background-color ease-in-out 300ms, z-index 600ms;
  }
  div#popups.show {
    background-color: #00000099;
    z-index: 10;
  }
  #popups .banner {
    position: absolute;
    margin: 30%;
    max-width: 600px;
    max-height: 600px;
    opacity: 0;
    transform: scaleY(0%);
    transition: transform 300ms, opacity ease-in-out 300ms;
  }
  #popups .banner.show {
    opacity: 1;
    transform: scaleY(100%);
  }
  #popups .content {
    /*box-shadow: rgb(0 0 0 / 30%) 0px 10px 30px 0px;*/
  }
  #popups .close {
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    top: -15px;
    right: -15px;
    width: 30px;
    height: 30px;
    border-radius: 100%;
    cursor: pointer;
    background-color: var(--cor-bg-bt-cancel);
    color: var(--cor-txt-bt-cancel);
    opacity: 0.8;
    z-index: 10;
  }
  /* Medias */
  @media (max-width: 600px){
    #popups .banner {
      position: absolute;
      margin: 0;
      max-width: 85%;
    }
  }
  #alert, #lgpd{
    position: fixed;
    max-width: 80%;
    min-width: 800px;
    opacity: 0;
    transform: scaleY(0%) translateX(-50%);
    transition: transform 300ms, opacity ease-in-out 300ms;
    bottom: 32px;
    left: 50%;
    background-color: white;
    box-shadow: 0px 5px 15px -10px #000000, 0px 0px 10px 10px rgb(0 0 0 / 0%);
    z-index: 10;
  }
  #alert.show, #lgpd.show {
    opacity: 0.9;
    transform: scaleY(100%) translateX(-50%);
  }
  #alert.show:hover, #lgpd.show:hover{
    opacity: 1;
  }
  #alert .content, #lgpd .content{
    display: grid;
    grid-template-columns: 1fr 180px;
    min-height: 80px;
    align-items: center;
    background-color: var(--cor-bg-blcs-gp);
    color: var(--cor-txt-nome-prto, #333);
  }
  #alert .close button, #lgpd .close button{
    height: 60px;
    margin-right: 10px;
    width: 170px;
  }
  #alert .banners.tag-alerta, #lgpd .banners.tag-lgpd{
    padding: 10px;
  }
  #alert .banners.tag-alerta a, #lgpd .banners.tag-lgpd a{
    position: relative;
    font-weight: 500;
  }
  #alert .banners.tag-alerta a:after, #lgpd .banners.tag-lgpd a:after{
    content: '';
    background: var(--cor-txt-nome-prto);
    width: 0;
    height: 2px;
    position: absolute;
    bottom: 0;
    left: 0;
    transition: all 0.3s ease-in-out;
  }
  #alert .banners.tag-alerta a:hover:after, #lgpd .banners.tag-lgpd a:hover:after{
    width: 100%;
  }
  @media (max-width: 800px) {
    #alert, #lgpd {
      min-width: 100%;
      max-width: 100%;
      bottom: 0px;
    }
    #alert.show, #lgpd.show{
      opacity: 1;
    }
    #alert .content, #lgpd .content{
      display: block;
    }
    #alert .close button, #lgpd .close button{
      height: 50px;
      margin: 0px;
      width: 100%;
    }
  }
</style>
<div id="popups" onclick="closePopups()">
  <div id="popup-blank" class="banner"> 
    <div class="content"> 
      <div class="close">
        <i class="fal fa-times"> 
        </i>
      </div>
    </div>  
  </div>
</div>
<div id="alert"> 
  <div class="content flex"> 
    {{ banners.getByTag(['alerta','and']) }}
    <div class="close" onclick="closeAlert('alert')">
      <button class="btn btn-secondary button-style-secondary"><span>Estou de acordo!</span> 
      </button>
    </div>
  </div>  
</div>
<div id="lgpd" onclick="closeAlert('lgpd')">
  <div class="content"> 
    {{ banners.getByTag(['lgpd','and']) }}
    <div class="close">
      <button class="btn btn-secondary button-style-secondary"><span>Entendi!</span>
      </button>
    </div>
  </div>  
</div>
<script>
  var popupIds = new Array();
  $(document).ready(function () {
    loadPopups();
    setTimeout(() => {
      openAlerts() }
               , 1000);
  }
                   );
  function openAlerts(){
    if ($("#alert .banners.tag-alert").length > 0){
      if (!getCookie("alert")){
        $("#alert").addClass("show");
        setCookie("alert", {{variables.cms_config_geral.cms_interval_alert}});
      }
    }
    if ($("#lgpd .banners.tag-lgpd").length > 0){
      if (!getCookie("lgpd")){
        $("#lgpd").addClass("show");
        setCookie("lgpd", {{variables.cms_config_geral.cms_interval_alert}});
      }
    }
  }
  function closeAlert(alert){
    $("#"+alert).removeClass('show');
    setTimeout(() => {
      $("#"+alert).remove();
    }
               , 1000);
  }
  function loadPopups(){
    $(".banners.tag-popup-entrada, .banners.tag-popup-saida, .banners.tag-popup-produto").hide();
    var popups = $(".banners.tag-popup-entrada, .banners.tag-popup-saida, .banners.tag-popup-produto");
    popups.each(function( index ) {
      /*create new popup element*/
      const popupId = "popup-" + $(this).attr('id');
      const type = $(this).hasClass("tag-popup-saida") ? "exit" : "enter";
      $("#popups").append('<div id="'+popupId+'" class="banner '+type+'"></div>');
      $("#"+popupId).html($("#popup-blank").html());
      /*move banner element to new popup element content*/
      $($(this).detach()).appendTo("#"+popupId+" .content");
      $("#"+popupId+" .content .close").click(function(){
        closePopup(popupId);
      }
                                             );
      /*Check if is enter or exit*/
      if (type == "exit")
        addExitIntent(popupId);
      else
        setTimeout(() => {
          openPopup(popupId) }
                   , 5000);
    }
               );
    $(".banners.tag-popup-entrada, .banners.tag-popup-saida, .banners.tag-popup-produto").show();
  }
  function addExitIntent(popupId){
    document.addEventListener('mouseout', e => {
      if (!e.toElement && !e.relatedTarget) {
        openPopup(popupId);
      }
    }
                             );
  }
  function openPopup(popupId){
    if ($("#"+popupId).length == 0) return;
    if (!getCookie(popupId)){
      popupIds.push(popupId);
      setCookie(popupId, {{variables.cms_config_geral.cms_interval_popup}});
      $("body").addClass("flow-y");
      $("#popups").show();
      $("#popups").addClass("show");
      $("#"+popupId).addClass("show");
    }
  }
  function closePopups(){
    for (var i = 0; i < popupIds.length; i++)
      closePopup(popupIds[i]);
  }
  function closePopup(popupId){
    $("#"+popupId).removeClass("show");
    if ($("#popups .banner.enter").length <= 2){
      $("#popups").removeClass("show");
      $("body").removeClass("flow-y");
    }
    setTimeout(() => {
      deletePopup(popupId) }
               , 500);
  }
  function deletePopup(popupId){
    $("#"+popupId).remove();
    if ($("#popups .banner.enter").length <= 1)
      $("#popups").hide();
  }
  function setCookie(popupId, expHours) {
    let date = new Date();
    date.setTime(date.getTime() + expHours * 60 * 60 * 1000);
    const expires = "expires=" + date.toUTCString();
    document.cookie = popupId + "=" + popupId + "; " + expires + "; path=/";
  }
  function getCookie(popupId) {
    const name = popupId + "=";
    const cDecoded = decodeURIComponent(document.cookie);
    const cArr = cDecoded.split("; ");
    let res;
    cArr.forEach((val) => {
      if (val.indexOf(name) === 0) res = val.substring(name.length);
    }
                );
    return res;
  }
</script>