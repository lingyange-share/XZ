
//$(function(){
//
//  $.fn.hhDrop = function(options){
//    
//    var defaults = {};
//
//    return this.each(function(){
//
//      var options = $.extend(defaults,options);
//      var $this = $(this);
//
//      var $boxSearch = $this.find('.boxSearch');
//
//      $boxSearch.click(function(){
//        var _this = $(this);
//        //点击本身显示隐藏
//        if(_this.hasClass('boxSearchHover') ){
//          _this.removeClass('boxSearchHover');
//          _this.parent().find('.search_form').hide();
//
//        }else{
//          _this.addClass('boxSearchHover');
//          _this.parent().find('.search_form').show();
//        }
// 
//      });
//      
//  });
//    
//} 
//
//});


$(function(){

  $.fn.hhDrop = function(options){

    var defaults = {};

    return this.each(function(){

      var options = $.extend(defaults,options);
      var $this = $(this);

      var $boxSearch = $this.find('.boxSearch');

      $boxSearch.click(function(){
        var _this = $(this);
        //点击本身显示隐藏
        if(_this.hasClass('boxSearchHover') ){
          _this.removeClass('boxSearchHover');
          _this.parent().find('.search_form').hide();

        }else{
          _this.addClass('boxSearchHover');
          _this.parent().find('.search_form').show();
        }

        $(document).bind('click',function(event){
          if(!$(event.target).hasClass('boxSearch') ){
            _this.removeClass('boxSearchHover');
            _this.parent().find('.search_form').hide();
          }
        });
        
      });

  });
    
} 

});