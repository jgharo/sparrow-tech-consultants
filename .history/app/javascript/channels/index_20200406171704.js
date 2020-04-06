// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

$('.text_field[name="product_id"]').keyup(function() {
  var a = $('hidden_field[name="product_quantity"]').val();
  var b = $(this).val();
  $('.text_field[name="product_cost_total"]').val(parseFloat(a) * parseFloat(b));
});