# Getting Accordion List from document
element = document.getElementById 'myList'

# Adding click event for each accordion header elements
for list in element.getElementsByClassName 'header'
  list.onclick = (e) ->
    # Adding 'active' class to list item
    isActive = e.target.parentNode.classList.contains 'active'
    if isActive
      e.target.parentNode.classList.add 'remove'
      e.target.parentNode.classList.remove 'active'
      removeClass = ->
        e.target.parentNode.classList.remove 'remove'
      setTimeout removeClass, 1000
    else
      e.target.parentNode.classList.add 'active'

