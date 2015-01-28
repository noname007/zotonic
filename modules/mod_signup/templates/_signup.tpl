{% with 
    style_boxed|default:0,
    logon_context|default:""
    as
    style_boxed,
    logon_context
%}
{% if m.acl.user %}
    {% wire action={redirect location=m.rsc[m.acl.user].page_url} %}
{% else %}
    {% include "_signup_form.tpl"
        form_title_tpl="_signup_title.tpl"
        form_extra_tpl="_signup_extra.tpl"
        form_form_tpl="_signup_form_form.tpl"
        form_fields_tpl="_signup_form_fields.tpl"
        form_support_tpl="_signup_support.tpl"
        form_outside_tpl="_signup_outside.tpl"
        style_boxed=style_boxed
    %}
{% endif %}
{% endwith %}