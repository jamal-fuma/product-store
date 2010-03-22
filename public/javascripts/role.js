function update_roles(id)
{
    update_list('all_roles');
    generate_uncheck_handler(id,'all_roles');
    toggle_checkboxes('toggle_roles','#role_ids_');
}

function update_all()
{
    $$('#remove-role-form').each(function(el){
      update_roles('remove-role-form');
    });

    $$('#remove-user-role-form').each(function(el){
      update_roles('remove-user-role-form');
    });
}

document.observe('dom:loaded', function(){

    $$('#assign-user-role-form').each(function(e){
        form_to_target_list_link('assign-user-role-form','role_id','user_ids_','links_bar');
    });


    update_all();
    button_to_link('button');  
});
