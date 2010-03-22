
class CheckboxList
{
  CheckboxList(container);
  Item items;
  ID   ids;


  // toggle checkboxes
  toogle(value) { items.each { |item| items.value = value }; }

  // update list of selected items
  selected(el);

  // remove all the selected items
  remove();

  // walk all the items adding zebra striping
  stripe();

  // attach event handlers

  // listen for submit on remove
  // listen for submit on  
}
