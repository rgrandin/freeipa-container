from ipaserver.plugins.group import group
from ipalib.parameters import Str
from ipalib.text import _
from ipaserver.plugins.internal import i18n_messages

group.takes_params += (
        Str('scinetgroupquota?',
            cli_name='quota',
            label=_('Group quota'),
        ),
        )

group.default_attributes.append('scinetgroupquota')

i18n_messages.messages['groupquota'] = {
        "user_tooltip": _("Group storage quota (/project)"),
}
