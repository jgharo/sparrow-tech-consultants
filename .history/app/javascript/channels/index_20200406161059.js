// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

$('input[name="textbox2"]').keyup(function() {
  var first = $('input[name="textbox1"]').val();
  var second = $(this).val();
  $('input[name="textbox3"]').val(first * second);
});