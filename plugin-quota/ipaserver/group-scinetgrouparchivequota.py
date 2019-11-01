from ipaserver.plugins.group import group
from ipalib.parameters import Str
from ipalib.text import _
from ipaserver.plugins.internal import i18n_messages

group.takes_params += (
        Str('scinetgrouparchivequota?',
            cli_name='archivequota',
            label=_('Group archive quota'),
        ),
        )

group.default_attributes.append('scinetgrouparchivequota')

i18n_messages.messages['grouparchivequota'] = {
        "user_tooltip": _("Group archive-storage quota (/KEEP)"),
}
