# Getting Accordion List from document
element = document.getElementById 'myList'

# Adding click event for each h3 elements
for list in element.getElementsByTagName 'h3'
  list.onclick = (e) ->
    # Adding 'active' class to list item
    e.target.parentNode.parentNode.classList.toggle 'active'
