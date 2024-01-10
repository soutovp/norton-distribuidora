<style>
  .measurements-table{
    cursor: pointer;
    margin: 20px 0;
  }
  .img-table {
    background: #fff;
    opacity: 0;
    visibility: hidden;
    position: fixed;
    left: 50%;
    top: 40%;
    transform: translate(-50%, -40%);
    display: flex;
    max-width: 600px;
    margin: 0 auto;
    box-shadow: rgb(60 64 67 / 30%) 0px 1px 2px 0px, rgb(60 64 67 / 15%) 0px 2px 6px 2px;
    z-index: 9;
  }
  .img-table.show-table{
    opacity: 1;
    visibility: visible;
  }
  .close-table {
    position: absolute;
    top: -15px;
    right: -14px;
    cursor: pointer;
    font-size:15px;
    background-color: #232323;
    color: var(--cor-txt-bt-cancel);
    border-radius: 100%;
    height: 25px;
    width: 25px;
    z-index: 10;
  }
  .back.table {
    background: rgba(0, 0, 0, 0.5);
    position: fixed;
    top: 0;
    height: 100%;
    bottom: 0;
    right: 0;
    left: 0;
    z-index: 8;
    cursor: pointer;
  }
  span.title-table {
    font-weight: bold;
    font-size: 1.1rem;
  }
  pan.title-table i {
    font-size: 1.3rem;
  }
  @media (max-width: 600px){
    .measurements-table .swiper-slide {
      width: 100% !important;
    }
    .img-table {
      width: 90%;
    }
  }
</style>
<div class="measurements-table ">
  <span class="title-table undereffect">
    <i class="fa-thin fa-ruler">
    </i> Tabela de medidas
  </span>
  <div class="img-table">
    <div class="close-table flex" justify-content="center" align-items="center">
      <i class="fa-thin fa-xmark">
      </i>
    </div>
    {% set bannerTags = ['tabela'] %}
    {% for tag in tags %}
    {% set bannerTags = bannerTags|merge([tag]) %}
    {% endfor %}
    {{ banners.getByTag(bannerTags,'and') }}
  </div>
  <div class="back">
  </div>
</div>
<script>
  $(".title-table").on("click", function () {
    $(".img-table").addClass("show-table");
    $(".back").addClass("table");
    $("body").addClass("flow-y");
  }
                      );
  $(".close-table").on("click", function () {
    $(".img-table").removeClass("show-table");
    $(".back").removeClass("table");
    $("body").removeClass("flow-y");
  }
                      );
  $( document ).ready(function() {
    $(".back").on("click", function () {
      $(".img-table").removeClass("show-table");
      $(".back").removeClass("table");
      $("body").removeClass("flow-y");
    }
                 );
  }
                     );
</script>
