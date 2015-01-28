{% if stage == "reminder_sent" %}

    <h2 class="z-logon-title">{_ A password reset e-mail has been sent _}</h2>
    <p>{_ Please follow the instructions in the e-mail. _}</p>
    <p>{_ If you do not receive the e-mail within a few minutes, please check your spam folder. _}</p>
    {% if not m.acl.user %}
        <p><a class="btn btn-primary" href="{% url logon %}" id="back_to_logon">{_ Back to logon form _}</a></p>
    {% else %}
        <p><a id="back_to_logon" class="btn btn-default" href="{% url logon %}">{_ OK _}</a></p>
    {% endif %}
    
{% elseif stage == "verification_pending" %}

    <h2 class="z-logon-title">{_ Your account needs verification _}</h2>
    <p>{_ Click on the button below to e-mail you a verification message. _}</p>
    <form id="verification_form" method="POST" action="postback">
        <button class="btn btn-primary" type="submit">{_ Send Verification Message _}</button>
    </form>
    {% wire id="verification_form" postback={send_verification user_id=user_id} %}

{% elseif stage == "verification_sent" %}

    <h2 class="z-logon-title">{_ Check your e-mail! _}</h2>
    <p>{_ In the e-mail you will find instructions on how to confirm your account. _}</p>
    <p>{_ If you do not receive the e-mail within a few minutes, please check your spam folder. _}</p>
    
{% elseif stage == "verification_error" %}

    <h2 class="z-logon-title error">{_ Sorry, could not send the verification message. _}</h2>
    <p>{_ We don’t seem to have any valid e-mail address or other electronic communication address of you. _}</p>
    {% if not m.acl.user %}
        <p><a class="btn btn-default" href="{% url logon %}">{_ Back to logon form _}</a></p>
    {% else %}
        <p><a id="{{ #cancel }}" class="btn btn-default" href="#">{_ Cancel _}</a></p>
        {% wire id=#cancel action={redirect back} %}
    {% endif %}

{% elseif stage == "password_expired" %}

    {% include "_logon_expired_form.tpl" %}

{% endif %}