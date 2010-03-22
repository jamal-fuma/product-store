function update_suppliers(id)
{
    update_list('all_suppliers');
    generate_uncheck_handler(id,'all_suppliers');
    toggle_checkboxes('toggle_suppliers','#supplier_ids_');

}
function update_all()
{
    $$('#remove-supplier-form').each(function(el){
      update_suppliers('remove-supplier-form');
    });


    $$('#remove-product-supplier-form').each(function(el){
      update_suppliers('remove-product-supplier-form');
    });

}

document.observe('dom:loaded', function(){

    $$('#assign-product-supplier-form').each(function(e){
        form_to_target_list_link('assign-product-supplier-form','supplier_id','product_ids_','links_bar');
    });

    update_all();
    button_to_link('button');  
});
