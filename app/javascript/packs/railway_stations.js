$(document).ready(function(){
  $('.edit_link').click(function(){
    event.preventDefault();

    let edit = $(this);
    let station_id = $(this).data('station');
    let form = $('.form_station_' + station_id);
    let title = $('.title_' + station_id)

    $(form).toggle();
    $(title).toggle();

    $(edit).html(function(){
      if(edit.html() === 'Edit'){
        edit.html('Cancel');
      } else {
        edit.html('Edit');
      };
    });
  });
});
