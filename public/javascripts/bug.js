
function update_bugs(id)
{
    update_list('all_bugs');
    generate_uncheck_handler(id,'all_bugs');
    toggle_checkboxes('toggle_bugs','#bug_ids_');
}

function update_all()
{
    $$('#remove-bug-form').each(function(el){
      update_bugs('remove-bug-form');
    });
}

document.observe('dom:loaded', function(){

    update_all();
    button_to_link('button');  
});
