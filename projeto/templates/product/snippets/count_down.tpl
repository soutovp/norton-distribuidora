<style>
  .container-value{
    color: red;
    border: none;
    box-shadow: none
  }
</style>
<div class="countdown card-countdown product-countdown flex" justify-content="center" direction="column" data-element="count-down" data-datetime="{{ product.price.count_down.expire_in | date('U') }}">
  <div class="time-left flex w-100" justify-content="center" align-items="center">
    <div class="time-text flex text-center" justify-content="center" align-items="center">
      <div class="count-text flex container-value" direction="column" align-items="center" justify-content="center" >  
        <span class="days">
        </span>Dias
      </div>
      <div class="count-text flex container-value" direction="column" align-items="center" justify-content="center" > 
        <span class="hours">0
        </span>hrs
      </div>
      <div class="count-text flex container-value" direction="column" align-items="center" justify-content="center" > 
        <span class="minutes">0
        </span>min
      </div>
      <div class="count-text flex container-value" direction="column" align-items="center" justify-content="center" >
        <span class="seconds">0
        </span>seg
      </div>
    </div>
  </div>
  {% if product.stock <= variables.cms_config_geral.cms_countdown_minqty %}
  <div class="only-remain tag-desktop text-center">
    <span>Restam 
      <b>{{ product.stock }} un.
      </b>
    </span>
  </div>
  {% endif %}
</div>
<script>
  (function(){
    function updateCountdown(){
      $('[data-element="count-down"]').each(function(){
        var timestamp = parseInt(jQuery(this).attr('data-datetime')) * 1000;
        var target = new Date();
        var now = new Date();
        target.setTime(timestamp);
        var totalMilliSeconds = target.getTime() - now.getTime();
        if (totalMilliSeconds < 0) return;
        var totalSeconds = parseInt(totalMilliSeconds / 1000);
        var seconds = totalSeconds % 60;
        var totalMinutes = parseInt(totalSeconds / 60);
        var minutes = totalMinutes % 60;
        var totalHours = parseInt(totalMinutes / 60);
        var hours = totalHours % 24;
        var totalDays = parseInt(totalHours / 24);
        var days = totalDays;
        hours   = Intl.NumberFormat('pt-BR', {
          minimumIntegerDigits: 2 }
                                   ).format(hours);
        minutes = Intl.NumberFormat('pt-BR', {
          minimumIntegerDigits: 2 }
                                   ).format(minutes);
        seconds = Intl.NumberFormat('pt-BR', {
          minimumIntegerDigits: 2 }
                                   ).format(seconds);
        if (days > 0)        
          $(this).find('.days').text(days + ' ');
        else $(this).find('.days').remove();
        $(this).find('.hours').text(hours);
        $(this).find('.minutes').text(minutes);
        $(this).find('.seconds').text(seconds);
      }
                                           );
      window.setTimeout(updateCountdown, 1000);
    }
    if ($('[data-element="count-down"]').length)
      updateCountdown();
  }
  )();
</script>
