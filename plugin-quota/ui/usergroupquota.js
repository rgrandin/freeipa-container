define([
    'freeipa/phases',
    'freeipa/ipa'],
    function(phases, IPA) {

// helper function
function get_item(array, attr, value) {

for (var i=0,l=array.length; i<l; i++) {
    if (array[i][attr] === value) return array[i];
}
return null;
}

var usergroupquota_plugin = {};

// adds 'scinetuserquota' field into user details facet
usergroupquota_plugin.add_user_group_quota_pre_op = function() {

var facet = get_item(IPA.user.entity_spec.facets, '$type', 'details');
var section = get_item(facet.sections, 'name', 'misc');
section.fields.push({
    name: 'scinetusergroupquota',
    label: 'User-Private Group Quota',
    tooltip: {
        title: '@i18n:usergroupquota.user_tooltip',
        html: true
        },
    });
    return true;
};

phases.on('customization', usergroupquota_plugin.add_user_group_quota_pre_op);

return usergroupquota_plugin;
});



