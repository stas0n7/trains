$(document).ready(function(){
  $('#carriage_type').change(function(){

    let type = $('#carriage_type').val();
    let top = $('.field-top');
    let bottom = $('.field-bottom');
    let sideTop = $('.field-side-top');
    let sideBottom = $('.field-side-bottom');
    let seated = $('.field-seated');

    let inputTop = $('.input-top');
    let inputBottom = $('.input-bottom');
    let inputSideTop = $('.input-side-top');
    let inputSideBottom = $('.input-side-bottom');
    let inputSeated = $('.input-seated');

    if(type == 'SvCarriage'){
      bottom.show();
      top.hide();
      sideTop.hide();
      sideBottom.hide();
      seated.hide();
      inputTop.removeAttr('required')
      inputBottom.attr('required', '')
      inputSideTop.removeAttr('required')
      inputSideBottom.removeAttr('required')
      inputSeated.removeAttr('required')
    }else if(type == 'EconomyCarriage'){
      bottom.show();
      top.show();
      sideTop.show();
      sideBottom.show();
      seated.hide();
      inputTop.attr('required', '')
      inputBottom.attr('required', '')
      inputSideTop.attr('required', '')
      inputSideBottom.attr('required', '')
      inputSeated.removeAttr('required')
    }else if(type == 'SeatedCarriage'){
      bottom.hide();
      top.hide();
      sideTop.hide();
      sideBottom.hide();
      seated.show();
      inputTop.removeAttr('required')
      inputBottom.removeAttr('required')
      inputSideTop.removeAttr('required')
      inputSideBottom.removeAttr('required')
      inputSeated.attr('required', '')
    }else if(type == 'CoupeCarriage'){
      bottom.show();
      top.show();
      sideTop.hide();
      sideBottom.hide();
      seated.hide();
      inputTop.attr('required', '')
      inputBottom.attr('required', '')
      inputSideTop.removeAttr('required')
      inputSideBottom.removeAttr('required')
      inputSeated.removeAttr('required')
    };
  });
});
