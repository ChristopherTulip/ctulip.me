//= require_tree .

expandCollapse = ->
  document.getElementsByClassName("icon-reorder")[0].onclick = ->
    if document.getElementsByClassName("l-sidebar open").length > 0
      document.getElementsByClassName("l-sidebar open")[0].className = document.getElementsByClassName("l-sidebar open")[0].className.replace( /(?:^|\s)open(?!\S)/g , '' )
    else
      document.getElementsByClassName("l-sidebar")[0].className += " open"

addScrollToListener = (clicked_element, target_element) ->
  document.getElementsByClassName(clicked_element)[0].onclick = ->
    document.getElementsByClassName(target_element)[0].scrollIntoView()

addEmailListener = ->
  document.getElementsByClassName("contact")[0].onclick = ->
    document.location = "mailto:chris.tulip@hotmail.com"

window.onload = ->
  expandCollapse()

  addScrollToListener("info", "m-about")
  addScrollToListener("read-more", "m-about")
  addScrollToListener("showcase", "m-showcase")

  addEmailListener()
