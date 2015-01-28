{% if reason == "pw" %}
    <p>
        {_ Either the email or the password you entered is incorrect. Please check your entry and try again. _}
    </p>

    <p><a href="{% url logon_reminder %}" id="logon_error_link_reminder">{_ Need help signing in? _}</a></p>

{% elseif reason == "reminder" %}

    <p>{_ You entered an unknown username or e-mail address. Please try again. _}</p>
    
    <p>{_ We can only send you an e-mail when we have the e-mail address of your account. _}</p>
    <p>{_ To find your account you need to enter either your username or the e-mail address you gave us. _}</p>

{% elseif reason == "tooshort" %}

    <p>{_ Your new password is too short. _}</p>

    <p>{_ Passwords should have at least six characters. _}<p>
    <p>{_ Use some non alphabetical characters or digits to make it harder to guess. _}</p>

{% elseif reason == "unequal" %}

    <p>{_ The two passwords should be equal. Please retype them. _}</p>

    <p>{_ Passwords should have at least six characters. _}<p>
    <p>{_ Use some non alphabetical characters or digits to make it harder to guess. _}</p>

{% endif %}