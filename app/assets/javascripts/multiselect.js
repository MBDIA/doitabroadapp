$(document).ready(function() {
  $('#user_datum_favourite_pays').multiselect({
    enableFiltering: true,
    maxHeight: 400,
    dropUp: true,
    nSelectedText: 'sélectionné(s)',
    nonSelectedText: 'Choisissez !',
    onChange: function(option, checked) {
      // Get selected options.
      var selectedOptions = $('#user_datum_favourite_pays option:selected');

      if (selectedOptions.length >= 5) {
        // Disable all other checkboxes.
        var nonSelectedOptions = $('#user_datum_favourite_pays option').filter(function() {
          return !$(this).is(':selected');
        });

        nonSelectedOptions.each(function() {
          var input = $('input[value="' + $(this).val() + '"]');
          input.prop('disabled', true);
          input.parent('li').addClass('disabled');
        });
      }
      else {
        // Enable all checkboxes.
        $('#user_datum_favourite_pays option').each(function() {
          var input = $('input[value="' + $(this).val() + '"]');
          input.prop('disabled', false);
          input.parent('li').addClass('disabled');
        });
      }
    }
  });
});
