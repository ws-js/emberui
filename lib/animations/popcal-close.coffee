$.velocity.Sequences.euiPopcalClose = (element, options) ->
  $.velocity.animate element, {
    opacity: [0, 1]
    scaleX: [0, 1]
    scaleY: [0, 1]
    marginTop: ->
      offset = $(element).height() / 2 + options.target.height()

      # Calculate which direction the animation should play
      popcalOffset = $(element).offset().top
      buttonOffset = options.target.offset().top
      direction = '+'
      direction = '-' if (buttonOffset - popcalOffset) < 1

      return ["#{direction}#{offset}px", "0px"]
  }, {
    duration: options.duration or 250
  }
