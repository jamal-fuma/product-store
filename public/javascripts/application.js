// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
  
var currentSubmit = null

document.observe('dom:loaded', function(){
  button_to_link('form.button');
  button_to_link('button-to',true);
  observe_form_actions();
});


///////////////////////////////////////////////////////////////////////
// intercept ajax form submissions and add the cancel parameter
///////////////////////////////////////////////////////////////////////
function observe_form_actions(){
  $$('form.button').each(function(form){
     form.removeAttribute('onsubmit');
     form.deleteAttribute('onsubmit');
//     alert(form.readAttribute('onsubmit'));
 //    form.writeAttribute('onsubmit',"new Ajax.Request(form.action,{ asynchronous:true, evalScripts:true, parameters:Form.serialize({ submit: currentSubmit }); }); return false;");
   //  alert(form.readAttribute('onsubmit'));
    // form.writeAttribute('onsubmit',"");
  //   alert(form.readAttribute('onsubmit'));

    form.select('input[type=submit]').invoke('observe', 'click', function(e) {
      currentSubmit =  this.name ;
//      new Ajax.Request(form.action,{ asynchronous:true, evalScripts:true, parameters:Form.serialize({ submit:})} );
//      return false;
    });
    form.observe('submit', function(e) {
alert( "  new Ajax.Request(form.action,{ asynchronous:true, evalScripts:true, parameters:Form.serialize({ submit:currentSubmit})} );");

      return false;
    });
 
  }); 
}
///////////////////////////////////////////////////////////////////////

function update_list_handler(element_name,field_name)
{
  if(!$(element_name))  { alert(element_name + " is null"); }
  if(!$(field_name))    { alert(field_name + " is null");   }

  // generate a curried handler for collecting ids on selected items
  // update_handler = function(e) { $(field_name).writeAttribute('value',collect_checked(element_name,true)); };

  // update the selected list on check/uncheck changes
//  $$('input[type=checkbox]').each(
 //     function(el){ 
  //      el.observe('change',update_handler); 
   //   });

  // update the list after a reorder
//  $(element_name).observe('mouseout',update_handler);
}

function toggle_checkboxes(element,child)
{
  var el            = $(element);
  if(!el)
  {
    alert(element + " is null");
  }
  var check_box     = function(box){ box.checked = el.checked; } ;
  var check_all     = function(ev){ $$(child).each(check_box); } ;

  // bind the top level checkbox to toggle the others
  el.observe('click',check_all);
}

function form_to_list_link(form_id,source)
{
  // make images render in drop down list
  var form = $(form_id);
  var button = form.down('input[type=submit]');
  var link = new Element('a', {href:form.action, 'class':'button-to'});
  var text = new Element('span');
  text.update(" | ");
  link.update(button.value);
      var selected   = new Element('input',{name:'selected_ids',type:'hidden'});

  var additional = new Element('input',{name:source,type:'hidden'});
  var ajax_submit = function(e){
      // cancel the form submission
      e.stop();
      // create a new hidden field prior to form submission cloning the values controlled by checkboxes
      additional.writeAttribute('value',$(source).value); 
    // selected.writeAttribute('value',$('selected_ids').readAttribute('value')); 

     var url = rewrite_url_for_target(form,source);

      // bang it on the form, submit via ajax
 //     button.insert({after:selected});
      button.insert({after:additional});
      new Ajax.Request(url, {asynchronous:true, evalScripts:true, parameters:Form.serialize(form)});
      // remove as not to pollute the DOM
      selected.remove;
   //   additional.remove;
  };
  link.observe('click', ajax_submit);
  $(source).observe('change',ajax_submit)
  $(source).insert({before:link})
  link.insert({after:text});
  form.hide();
}

function form_to_target_list_link(form_id,source,target,dest)
{
  // make images render in drop down list
  var form = $(form_id);
  if(null == form)      { alert(form_id + " is null"); }
  if(null == $(source)) { alert(source + " is null"); }
  if(null == $(target)) { alert(target + " is null"); }
  if(null == $(dest)) { alert(dest + " is null"); }
  var button = form.down("input[type=submit]");
  if(null == button)
  {
    alert(form + "submit element not found");
  }
  
  var link = new Element('a', {href:form.action, 'class':'button-to'});
  var text = new Element('span');
  text.update(" | ");
  link.update(button.value);
//      var selected   = new Element('input',{name:'selected_ids',type:'hidden'});

//  var additional = new Element('input',{name:source,type:'hidden'});

  var ajax_submit = function(e){
      // cancel the form submission
      e.stop();
      // create a new hidden field prior to form submission cloning the values controlled by checkboxes
 //     additional.writeAttribute('value',$(source).value); 
 //     selected.writeAttribute('value',$(target).readAttribute('value')); 
      
      // bang it on the form, submit via ajax
//      button.insert({after:selected});
//      button.insert({after:additional});
      var url = rewrite_url_for_target(form_id,target);
      new Ajax.Request(url,{asynchronous:true, evalScripts:true, parameters:Form.serialize(form)});
      // remove as not to pollute the DOM
//      selected.remove;
 //     additional.remove;
   };

  link.observe('click', ajax_submit);
  $(source).observe('change',ajax_submit);
  $(dest).insert({before:text});
  text.insert({before:link});
  //form.insert({after:link});
   //  form.hide();
    button.hide();
    link.hide();

}

///////////////////////////////////////////////////////////////////////
// turn all forms buttons with selector into a link
///////////////////////////////////////////////////////////////////////
function button_to_link(selector,hide)
{
     // assumes submit is first element
    $$("." + selector).each(function(form){
      var button = form.select('input[type=submit]').first();
      var link = new Element('a', {href:button.value, 'class':selector});
     
      link.update(button.value);
      
      link.observe('click', function(e){
        e.stop();
        form.submit();
        });
      
      form.insert({before:link});
      button.hide();
      if(hide == null)
      {
        link.hide();
      }
      
      });
}
///////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////
// generate a handler to ajax POST all the unselected ids
///////////////////////////////////////////////////////////////////////
function generate_form_handler(form_id,url,element_name,val)
{
  var form = $(form_id);
  if(null == form)                  { alert(form_id + " is null"); }
  if(null == $(element_name))       { alert(element_name + " is null"); }
  if(null == url)                   { url = $(form).action; }

  // wrap all the unselected ids into a element for posting via ajax to form url
  return function(e){
      // cancel the form submission
      var tok_val;
      var meth_val;
      var src;

      $$("#" + form_id + ' input[type=hidden]').each(function(el){
        // stash form method
        if( el.readAttribute('name')  == '_method'){ 
            meth_val = el.readAttribute('value') ;
        }

        // stash form auth token
        if( el.readAttribute('name')  == 'authenticity_token'){ 
            tok_val = el.readAttribute('value') ;
        }
        // alert("name=" + el.readAttribute('name') + " value=" + el.readAttribute('value') )
       });

      src = Event.element(e);
//      alert("element called" + src.readAttribute('name') + " with value " + src.readAttribute('value') + " says hi");
      e.stop();
      var items = new Element('input',{name:'selected_ids',type:'hidden',value: src.readAttribute('value') });
//      var items = new Element('input',{name:'selected_ids',type:'hidden',value:collect_checked(element_name,false)});
      var auth  = new Element('input',{name:'authenticity_token',type:'hidden',value:tok_val});
      var mval  = new Element('input',{name:'_method',type:'hidden',value:meth_val});

      var frm   = new Element('form',{action:form.action});
      frm.insert({top:items});
      frm.insert({top:auth});
      frm.insert({top:mval});

      // submit the form in the background, with the items that have been deselected
      new Ajax.Request(url, {asynchronous:true, evalScripts:true, parameters:Form.serialize(frm)});
  };
}
///////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////
// walk the child items of element_name adding alternate css classes
///////////////////////////////////////////////////////////////////////
function update_list(element_name)
{
  var children =  Element.childElements($(element_name));
  children.each(cycle_css_proc(['shared-list-even-row','shared-list-odd-row']));
}
///////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////
// rewrite the url replacing the first url id with value of selected id
// provided only a single nesting is used should be good
///////////////////////////////////////////////////////////////////////
function rewrite_url_for_target(form,target)
{
        var regexp = new RegExp(/^(http:..[^\\]+\/)\d+(.*)$/) ;
        var match = regexp.exec($(form).action) ;
        var url = match[1] + $(target).value + match[2];
        return url;
}
///////////////////////////////////////////////////////////////////////




///////////////////////////////////////////////////////////////////////
// generate a handler that submits a form via ajax with ids of unchecked child items
///////////////////////////////////////////////////////////////////////
function generate_uncheck_handler(form,element_name)
{
  if(!form && !$(form))
  {
    alert(form + " is null");
  }
  if(!element_name && !$(element_name))
  {
    alert(element_name + " is null");
  }


  var val = collect_checked(element_name,false);
  attach_handler(form,generate_form_handler(form,null,element_name,val));
}
///////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////
// attach a handler on blur events
///////////////////////////////////////////////////////////////////////
function attach_handler(form,handler)
{
  $$( '#' + form + ' input[type=checkbox]').each(function(el){ el.observe('change',handler) });
}
///////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////
// stick all the matching ids from a sortable list into an array
///////////////////////////////////////////////////////////////////////
function collect_checked(element_name,checked)
{
  if(null == $(element_name)) { alert(element_name + " is null"); }
  if(null == checked) { alert(checked + " is null"); }
  
  var index    =  -1;
  var ofset    =  0;

  // grab all the id for the sortable list
  var selected = Sortable.sequence($(element_name));
  // reducing the offset to compensate for other items removed.
if(checked)
{
    // remove the selected items from the list
    var collect_id = function(el) { 
        ++index;
        if( ! el.down('input[type=checkbox]').checked ){
          selected.splice(index-ofset,1);
          ofset++;
        }
    };
    Element.childElements($(element_name)).each(collect_id);
}
else
{
    // remove the unselected items from the list
    var collect_id = function(el) { 
        ++index;
        if( el.down('input[type=checkbox]').checked ){
          selected.splice(index-ofset,1);
          ofset++;
        }
    };
    Element.childElements($(element_name)).each(collect_id);
}
  return selected;
}
///////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////
// generate a lambda to add alternating css classes
///////////////////////////////////////////////////////////////////////
function cycle_css_proc(names)
{
  var index   = 0; 
  var cycle   = function(el) 
  {
      ++index;
      
      // remove old css class
      el.removeClassName(names[0]);
      el.removeClassName(names[1]);

      // add new css class so the table striping still alternates
      el.addClassName(names[ (0 == (index % 2)) ? 1 : 0]);
  };
  return cycle;
} 
///////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////
// generate a lambda to add alternating css classes
///////////////////////////////////////////////////////////////////////
function enable_editing(id)
{
 // $$(id).each{function(element){
 //   new Ajax.InPlaceEditor(

 // );
   // 'product_cost_price_2149_in_place_editor', 
   // '/products/set_product_cost_price/2149', 
   // {
     // callback:function(form) { 
      //  return Form.serialize(form) + '&authenticity_token=' + encodeURIComponent('0nzNeI2R6uXVQ5u5rRSIf3DtL39BGZsjnrzON7nEPA4=') 
    //  }
   // });
}
