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

var userquota_plugin = {};

// adds 'scinetuserquota' field into user details facet
userquota_plugin.add_user_quota_pre_op = function() {

var facet = get_item(IPA.user.entity_spec.facets, '$type', 'details');
var section = get_item(facet.sections, 'name', 'misc');
section.fields.push({
    name: 'scinetuserquota',
    label: 'User Quota',
    tooltip: {
        title: '@i18n:userquota.user_tooltip',
        html: true
        },
    });
    return true;
};

phases.on('customization', userquota_plugin.add_user_quota_pre_op);

return userquota_plugin;
});



