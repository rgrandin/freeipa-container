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

var grouparchivequota_plugin = {};

// adds 'scinetuserquota' field into user details facet
grouparchivequota_plugin.add_group_archive_quota_pre_op = function() {

var facet = get_item(IPA.group.entity_spec.facets, '$type', 'details');
var section = get_item(facet.sections, 'name', 'details');
section.fields.push({
    name: 'scinetgrouparchivequota',
    label: 'Group Archive Quota',
    tooltip: {
        title: '@i18n:grouparchivequota.user_tooltip',
        html: true
        },
    });
    return true;
};

phases.on('customization', grouparchivequota_plugin.add_group_archive_quota_pre_op);

return grouparchivequota_plugin;
});



