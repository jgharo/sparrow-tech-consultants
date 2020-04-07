// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

$('#quantiy').on('keyup', function(e) {
    var price = parseFloat($('#price').val());
    var quantity = $(this).val();
    $('#total_price').val((price * quantity).toFixed(2));
  });