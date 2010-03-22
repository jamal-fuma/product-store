    new Ajax.InPlaceEditor('product_1_cost_price_in_place_editor',
        '/products/1',
        {
            ajaxOptions:{
                method:'put'
            },
            callback:function(form,
value) { 
                return Form.serialize(form) + '&authenticity_token=' + encodeURIComponent('smtKiv/fnL4HBKoZg4OeKHn9+tWVzise+3+qkka//gg=')
            },
            externalControl:'edit_product_1_cost_price',
            paramName:'product[cost_price]'
        }
    ) ;
    new Ajax.InPlaceEditor('product_1_sale_price_in_place_editor',
        '/products/1',
        {
            ajaxOptions:{
                method:'put'
            },
            callback:function(form, value) { 
                return Form.serialize(form) + '&authenticity_token=' + encodeURIComponent('smtKiv/fnL4HBKoZg4OeKHn9+tWVzise+3+qkka//gg=') 
            },
            externalControl:'edit_product_1_sale_price',
            paramName:'product[sale_price]'
        }
    );

    //<![CDATA[ new Ajax.InPlaceEditor('product_1_weight_in_place_editor',
         '/products/1',
        {
            ajaxOptions:{
                method:'put'
            },
            callback:function(form, value) { 
                return Form.serialize(form) + '&authenticity_token=' + encodeURIComponent('smtKiv/fnL4HBKoZg4OeKHn9+tWVzise+3+qkka//gg=') 
            },
         externalControl:'edit_product_1_weight',
         paramName:'product[weight]'
        }
    );
    //<![CDATA[ new Ajax.InPlaceEditor('product_1_order_code_in_place_editor',
         '/products/1',
        {
            ajaxOptions:{
                method:'put'
            },
            callback:function(form, value) { 
                return Form.serialize(form) + '&authenticity_token=' + encodeURIComponent('smtKiv/fnL4HBKoZg4OeKHn9+tWVzise+3+qkka//gg=') 
            },
         externalControl:'edit_product_1_order_code',
         paramName:'product[order_code]'
        }
    );
    new Ajax.InPlaceEditor('product_1_description_in_place_editor',
         '/products/1',
        {
            ajaxOptions:{
                method:'put'
            },
            callback:function(form, value) { 
                return Form.serialize(form) + '&authenticity_token=' + encodeURIComponent('smtKiv/fnL4HBKoZg4OeKHn9+tWVzise+3+qkka//gg=') 
            },
         externalControl:'edit_product_1_description',
         paramName:'product[description]',
         rows:3
        }
    );

