require.config
  paths:
    jquery: '//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.0/jquery.min'
    fitvid: '/js/vendor/fitvids'
    modal: '/js/vendor/modal.min'


  shim:
    fitvid:
      deps: ['jquery']
    modal:
      deps: ['jquery']

require ['jquery', 'fitvid', 'modal'], ($) ->

  $('.video, #modal').fitVids()

  #open modal
  $('#play-video').on 'click', -> $('#modal').modal()

  #remove and reinsert video on close
  $("#modal").on $.modal.BEFORE_CLOSE, ->
    iframe = $('iframe#video')
    iframe.remove()
    $('.fluid-width-video-wrapper').append(iframe)

  #close modal with esc key
  $(document).keyup (e) -> $.modal.close() if e.keyCode is 27 