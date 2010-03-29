function update_pages(id)
{
    update_list('all_pages');
    generate_uncheck_handler(id,'all_pages');
    toggle_checkboxes('toggle_pages','#page_ids_');
}

function update_all()
{
    $$('#remove-page-form').each(function(el){
      update_pages('remove-page-form');
    });
    $$('#remove-product-page-form').each(function(el){
    update_pages('remove-product-page-form');
    });

    $$('#remove-image-page-form').each(function(el){
    update_pages('remove-image-page-form');
    });

}

document.observe('dom:loaded', function(){

    $$('#assign-product-page-form').each(function(e){
        form_to_target_list_link('assign-product-page-form','page_id','product_ids_','links_bar'); 
    });

    $$('#assign-image-page-form').each(function(e){
        form_to_target_list_link('assign-image-page-form','page_id','image_ids_','links_bar'); 
    });

    update_all();
    button_to_link('button');  
});
