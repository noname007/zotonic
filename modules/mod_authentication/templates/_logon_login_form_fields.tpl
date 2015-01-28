<div class="form-group">
    <label for="username" class="control-label">{_ Username _}</label>
    <input class="form-control" type="text" id="username" name="username" value="" autofocus="autofocus" autocomplete="on" />
    {% validate id="username"
        type={presence failure_message=_"Enter your username"}
        only_on_blur
    %}
</div>

<div class="form-group">
    <label for="password" class="control-label">{_ Password _}</label>
    <input class="form-control" type="password" id="password" name="password" value="" autocomplete="on" />
    {% validate id="password"
        type={presence failure_message=_"Enter your password"}
        only_on_blur
    %}
</div>

<div class="form-group">
    <div class="checkbox">
        <label>
            <input type="checkbox" name="rememberme" value="1" />
            {_ Keep me signed in _}
        </label>
    </div>
</div>

<div class="form-group">
    <button class="btn btn-primary" type="submit">{_ Sign in _}</button>
</div>