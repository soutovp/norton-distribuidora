<style type="text/css">
    section.popup-schedule-shipping { max-width: 600px; padding: 0; }
    section.popup-schedule-shipping .instructions { font-size: 1em; border-bottom: 1px solid #ccc; padding-bottom: 10px; margin-bottom: 10px; }
    section.popup-schedule-shipping div.actions { display: flex; flex-flow: row nowrap; justify-content: space-between;  align-items: center;  }
    section.popup-schedule-shipping div.actions .btn { font-size: 0.8em; padding: 8px 12px; }

    @media only screen and (max-width:600px) {
        section.popup-schedule-shipping .instructions { font-size: 0.9em; }
        fieldset.form-fields-group ul.fields { flex-flow: column nowrap; }
        fieldset.form-fields-group ul.fields li { width: 100%; }
        section.popup-schedule-shipping div.actions { flex-flow: column wrap;  }
        section.popup-schedule-shipping div.actions button { margin-bottom: 10px; width: 100%; order:1; }
        section.popup-schedule-shipping div.actions button.cancel { border:none; background: none; color:var(--custom-font-dark-color,#404040); font-size: 1em; margin-bottom: 0; align-self: flex-end; order:2; }
    }
</style>

<section class="popup-schedule-shipping">
    <form name="f-schedule-shipping" id="f-schedule-shipping" type="post">
        <div class="instructions">{{schedule.instructions|raw}}</div>
        <fieldset class="form-fields-group" id="address">
            <ul class="fields">
                <li class="schedule-date input-field-autosize">
                    <label for="schedule_date">Data de entrega:</label>
                    {% if schedule.selectDate.allow %}
                    <input autocomplete="off" readonly data-dd-format="d/m/Y" type="text" name="schedule_date" id="schedule_date" size="14" maxlength="10" placeholder="__/__/____" value="{{schedule.selectDate.value}}">
                    <div class="dt_any"><input type="checkbox" name="dt_any" id="dt_any" value="1" class="campo_option" onclick="toogleAnyDay();"><label for="dt_any">Qualquer dia</label></div>
                    {% else %}
                    A entrega será realizada no dia conforme disponibilidade e horário escolhido.
                    {% endif %}
                </li>
                <li class="schedule-time">
                    <label for="schedule_time">Horário de entrega:</label>
                    <select name="schedule_time" id="schedule_time" class="validate[required]">
                        {% for option in schedule.selectTime.options %}
                        <option value="{{option.id}}">{{option.text}}</option>
                        {% endfor %}
                    </select>
                </li>
            </ul>
        </fieldset>
        <div class="actions">
            <button type="button" class="btn cancel" onclick="$.fancybox.close();return false;">Não definir e continuar</button>
            {% if schedule.selectDate.value is not empty %}
            <button type="button" class="btn danger" onclick="scheduleRemove();" name="btn-remove"><i class="fas fa-calendar-times"></i> Cancelar agendamento</button>
            {% endif %}
            <button type="submit" class="btn btn-primary" name="btn-submit"><i class="fas fa-calendar-check"></i> Definir agendamento de entrega</button>
        </div>
    </form>
</section>