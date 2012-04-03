# The Flash create a new flash notice element and prepend it to the `#content` element.
#
class SublimeVideo.UI.Menu
  #
  # @param [jQuery Element] element the menu (ul) element
  #
  constructor: (@element) ->

  setupStickyItems: ->
    @element.find('a').each (index, el) =>
      el = jQuery(el)
      el.on('click', this.stickyBehavior) unless el.hasClass 'no_sticky'

  # @private
  #
  stickyBehavior: (event) =>
    @element.find('.active').removeClass 'active'
    link = jQuery(event.delegateTarget)
    if li = link.parent('li')
      li.addClass 'active'
    else
      link.addClass 'active'
