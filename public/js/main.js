(function() {
  require.config({
    paths: {
      jquery: '//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.0/jquery.min',
      fitvid: '/js/vendor/fitvids',
      modal: '/js/vendor/modal.min'
    },
    shim: {
      fitvid: {
        deps: ['jquery']
      },
      modal: {
        deps: ['jquery']
      }
    }
  });

  require(['jquery', 'fitvid', 'modal'], function($) {
    $('.video, #modal').fitVids();
    $('#play-video').on('click', function() {
      return $('#modal').modal();
    });
    $("#modal").on($.modal.BEFORE_CLOSE, function() {
      var iframe;
      iframe = $('iframe#video');
      iframe.remove();
      return $('.fluid-width-video-wrapper').append(iframe);
    });
    return $(document).keyup(function(e) {
      if (e.keyCode === 27) {
        return $.modal.close();
      }
    });
  });

}).call(this);
