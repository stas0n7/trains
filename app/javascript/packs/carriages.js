$(document).ready(function(){
  $('#carriage_type').change(function(){

    let type = $('#carriage_type').val();
    let top = $('.field-top');
    let bottom = $('.field-bottom');
    let sideTop = $('.field-side-top');
    let sideBottom = $('.field-side-bottom');
    let seated = $('.field-seated');

    if(type == 'SvCarriage'){
      bottom.show();
      top.hide();
      sideTop.hide();
      sideBottom.hide();
      seated.hide();
    }else if(type == 'EconomyCarriage'){
      bottom.show();
      top.show();
      sideTop.show();
      sideBottom.show();
      seated.hide();
    }else if(type == 'SeatedCarriage'){
      bottom.hide();
      top.hide();
      sideTop.hide();
      sideBottom.hide();
      seated.show();
    }else if(type == 'CoupeCarriage'){
      bottom.show();
      top.show();
      sideTop.hide();
      sideBottom.hide();
      seated.hide();
    };
  });
});
