{% extends "admin_edit_widget_i18n.tpl" %}

{% block widget_title %}{_ Content _}{% endblock %}
{% block widget_show_minimized %}false{% endblock %}
{% block widget_id %}edit-body{% endblock %}

{% block widget_content %}
{% with m.rsc[id] as r %}

	{% button action={zmedia id=id media_div_id=#media subject_id=id} text=_"Add media to body" id="zmedia-open-dialog" style="display:none" %}

	{% wire name="zmedia" 
		action={
		    dialog_open
		    template="_action_dialog_connect.tpl"
		    title=_"Insert image" 
            subject_id=id
            predicate=`depiction`
            is_zmedia
            tab="depiction"
            callback="window.zAdminMediaDone"
        }
	%}

	{% wire name="zlink" 
		action={
		    dialog_open
		    template="_action_dialog_connect.tpl"
		    title=_"Add link"
            subject_id=id
            is_zlink
            tab="find"
            callback="window.zAdminLinkDone"
        }
	%}

	<div class="form-group">
		{% if explanation %}
			<p class="help-block">{{ explanation }}</p>
		{% endif %}
		{% with is_i18n|if:r.translation[lang_code].body:r.body	 as	 body %}
		{% if not id or r.is_editable %}
			<textarea rows="10" cols="10" id="rsc-body{{ lang_code_for_id }}" name="body{{ lang_code_with_dollar }}" class="body z_editor-init form-control" {% include "_language_attrs.tpl" language=lang_code %}>{{ body|escape }}</textarea>
		{% else %}
			{{ body }}
		{% endif %}
		{% endwith %}
	</div>
{% endwith %}
{% endblock %}
