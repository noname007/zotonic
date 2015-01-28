<div class="form-group">
    <label for="reminder_address" class="control-label">{_ Your e-mail or username _}</label>
    <input
        class="form-control"
        type="text"
        id="reminder_address"
        autofocus="autofocus="
        placeholder="{_ user@example.com _}"
        name="reminder_address"
        value="{{ q.username|default:(m.identity[m.acl.user].username)|escape }}"
        autocapitalize="off"
        autocomplete="on" />
        {% validate id="reminder_address"
            type={presence failure_message=_"Enter your e-mail address or username"}
            only_on_submit
        %}
</div>

<div class="form-group">
    <button class="btn btn-primary" type="submit">{_ Send _}</button>
    <p class="help-block">{_ We will send you an e-mail with instructions. _}</p>
</div>