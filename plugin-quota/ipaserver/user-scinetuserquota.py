from ipaserver.plugins.user import user
from ipalib.parameters import Str
from ipalib.text import _
from ipaserver.plugins.internal import i18n_messages

user.takes_params += (
        Str('scinetuserquota?',
            cli_name='quota',
            label=_('User quota'),
        ),
        )

user.default_attributes.append('scinetuserquota')

i18n_messages.messages['userquota'] = {
        "user_tooltip": _("User storage quota"),
}
