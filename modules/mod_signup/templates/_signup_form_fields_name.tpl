<h3>{_ Sign up with your e-mail address _}</h3>

<div class="form-group" id="signup_name_first">
    <label for="name_first" class="control-label">{_ First name _}</label>
    {% if name_first %}
        <span>{{ name_first|escape }}</span>
    {% else %}
        <input class="form-control" id="name_first" name="name_first" type="text" value="{{ name_first|escape }}" />
        {% validate id="name_first"
            type={presence failure_message=_"Enter a name"}
            only_on_blur
        %}
    {% endif %}
</div>

<div class="form-group" id="signup_surname_prefix">
    <label for="surprefix" class="control-label">{_ Prefix _}</label>
    <input class="form-control" id="surprefix" name="surprefix" type="text" value="" />
</div>

<div class="form-group" id="signup_name_surname">
    <label for="name_surname" class="control-label">{_ Last name _}</label>
    {% if name_surname %}
        <span>{{ name_surname|escape }}</span>
    {% else %}
        <input class="form-control" id="name_surname" name="name_surname" type="text" value="{{ name_surname|escape }}" />
        {% validate id="name_surname"
            type={presence failure_message=_"Enter a name"}
            only_on_blur
        %}
    {% endif %}
</div>

<div class="form-group" id="signup_email">
    <label for="email" class="control-label">{_ E-mail _}</label>
    {% if email %}
        <span>{{ email|escape }}</span>
    {% else %}
        <input class="form-control" id="email" name="email" type="text" value="{{ email|escape }}" />
        {% validate id="email"
            type={email failure_message=_"Enter a valid address"}
            type={presence failure_message=_"Enter an e-mail address"}
            only_on_blur
        %}
    {% endif %}
</div>