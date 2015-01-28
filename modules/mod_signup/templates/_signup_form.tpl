{#
Params:
- page
- error_reason
- xs_props
- style_boxed -- creates a colored background box
- form_title_tpl
- form_extra_tpl
- form_form_tpl
- form_support_tpl
- form_outside_tpl 
#}
<div id="signup_logon_box" class="z-logon-box{% if style_boxed %} z-logon-box-boxed{% endif %}">
    {% if form_title_tpl %}
        {% include form_title_tpl %}
    {% endif %}
    
    <div class="z-logon-form">
        {% if form_extra_tpl %}
            {% include form_extra_tpl xs_props=xs_props %}
        {% endif %}
    
        <div id="signup_error_duplicate_identity" class="alert alert-danger">
            {_ Sorry, there is already an account coupled to your account at your service provider. Maybe your account here was suspended. _}
        </div>
        {% if form_form_tpl %}    
            {% include form_form_tpl
                page=page
                use_wire=use_wire
                form_fields_tpl=form_fields_tpl
            %}
        {% endif %}
    </div>
    
    {% if form_outside_tpl %}
        {% include form_outside_tpl
            update_target=update_target
            update_template=update_template
            logon_state=logon_state
            logon_context=logon_context
        %}
    {% endif %}
</div>

