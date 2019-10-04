from ipaserver.plugins.user import user
from ipalib.parameters import Str
from ipalib.text import _
from ipaserver.plugins.internal import i18n_messages

user.takes_params += (
        Str('scinetusergroupquota?',
            cli_name='upgquota',
            label=_('User-Private group quota'),
        ),
        )

user.default_attributes.append('scinetusergroupquota')

i18n_messages.messages['usergroupquota'] = {
        "user_tooltip": _("User-Private group (UPG) storage quota"),
}
