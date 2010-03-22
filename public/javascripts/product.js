function update_products(id)
{
    update_list('all_products');
    generate_uncheck_handler(id,'all_products');
    toggle_checkboxes('toggle_products','#product_ids_');
}

function update_all()
{
    $$('#remove-product-form').each(function(el){
      update_products('remove-product-form');
    });

    $$('#remove-supplier-product-form').each(function(el){
      update_products('remove-supplier-product-form');
    });

    $$('#remove-category-product-form').each(function(el){
      update_products('remove-category-product-form');
    });
    $$('#remove-image-product-form').each(function(el){
      update_products('remove-image-product-form');
    });

}

document.observe('dom:loaded', function(){

    $$('#assign-category-product-form').each(function(e){
        form_to_target_list_link('assign-category-product-form','product_id','category_ids_','links_bar');
    });

    $$('#assign-supplier-product-form').each(function(e){
        form_to_target_list_link('assign-supplier-product-form','product_id','supplier_ids_','links_bar');
    });

    $$('#assign-image-product-form').each(function(e){
        form_to_target_list_link('assign-image-product-form','product_id','image_ids_','links_bar');
    });

    update_all();
    button_to_link('button');  
});
