// turn ugly forms into a nice link that degrades cleanly  
function button_to_link(selector)   
    $$(selector).each(function(form){
      var link = new Element('a', {href:'#', 'class':'button'});
      link.update(form.down('input[type=submit]').value);
      link.observe('click', function(e){
        e.stop();
        form.submit();
        });
      form.insert({before:link});
      form.hide();
      });
}

