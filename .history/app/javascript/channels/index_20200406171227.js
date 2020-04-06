// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

$('input[name="product_quantity"]').keyup(function() {
  var a = $('input[name="product_cost"]').val();
  var b = $('input[name="product_quantity"]').val();
  $('text_field[name="total_cost"]').val(a * b);
});