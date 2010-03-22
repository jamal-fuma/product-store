function update_categories(id)
{
    update_list('all_categories');
    generate_uncheck_handler(id,'all_categories');
    toggle_checkboxes('toggle_categories','#category_ids_');
}

function update_all()
{
    $$('#remove-category-form').each(function(el){
      update_categories('remove-category-form');
    });
    $$('#remove-product-category-form').each(function(el){
    update_categories('remove-product-category-form');
    });

    $$('#remove-image-category-form').each(function(el){
    update_categories('remove-image-category-form');
    });

}

document.observe('dom:loaded', function(){

    $$('#assign-product-category-form').each(function(e){
        form_to_target_list_link('assign-product-category-form','category_id','product_ids_','links_bar'); 
    });

    $$('#assign-image-category-form').each(function(e){
        form_to_target_list_link('assign-image-category-form','category_id','image_ids_','links_bar'); 
    });

    update_all();
    button_to_link('button');  
});
