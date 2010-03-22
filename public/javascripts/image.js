function update_images(id)
{
    update_list('all_images');
    generate_uncheck_handler(id,'all_images');
    toggle_checkboxes('toggle_images','#image_ids_');
}

function update_all()
{
    $$('#remove-image-form').each(function(el){
      update_images('remove-image-form');
    });


    $$('#remove-category-image-form').each(function(el){
      update_images('remove-category-image-form');
    });


    $$('#remove-product-image-form').each(function(el){
      update_images('remove-product-image-form');
    });

}

document.observe('dom:loaded', function(){

    $$('#assign-category-image-form').each(function(e){
        form_to_target_list_link('assign-category-image-form','image_id','category_ids_','links_bar');
    });

    $$('#assign-product-image-form').each(function(e){
        form_to_target_list_link('assign-product-image-form','image_id','product_ids_','links_bar');
    });

    update_all();
    button_to_link('button');  
});
