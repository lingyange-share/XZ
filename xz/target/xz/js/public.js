// JavaScript Document

$(function(){DOMsize(); sideMenu(); moreToggle(); errorStyle();})
$(window).bind('resize', function(){DOMsize();})

//DOMsize
function DOMsize(){
	$('#container').height($(window).height()-$('#header').height());
	$('#content').height($('#container').height());
}

//菜单效果
function sideMenu(){
	var aLi = $('.sidemenu').find('h4');
	var liLi = $('.sidemenu').find('li');
	for(var i=0;i<aLi.length;i++){
		$(aLi[i]).bind('click', hClick);
		if($(aLi[i]).hasClass('cur')){
			$(aLi[i]).next('.c').show();
		}
	}
	for(var i=0;i<liLi.length;i++){
		$(liLi[i]).bind('click', liClick);
	}
	function hClick(){
		if($(this).hasClass('arr')){
			$(this).toggleClass('cur');
			$(this).siblings('h4').removeClass('over cur');
			$(this).next('.c').slideToggle();
			$(this).siblings('h4').next('.c').slideUp();
		}else{
			$(this).addClass('over').siblings('h4').removeClass('over cur');
			$(this).siblings('h4').next('.c').slideUp();
			$(this).siblings('h4').next('.c').find('li').removeClass('over');
		}
	}
	function liClick(){
		$(this).addClass('over').siblings().removeClass('over');
		$(this).parents('.c').siblings('.c').find('li').removeClass('over');
	}
}

//查询更多
function moreToggle(){
	$('#morez').bind('click', moreToggle);
	function moreToggle(_this){
		var _this = this;
		$('#moreput').slideToggle(120);
		if(_this.innerHTML!='更多'){
			_this.innerHTML='更多';
			_this.className='morez';
			if($.browser.mise){
				setTimeout(function(){listSize(0);}, 60);
			}else{
				setTimeout(function(){listSize(24);}, 60);
			}
		}else{
			_this.innerHTML='收起';
			_this.className='morez_ver';
			if($.browser.mise){
				setTimeout(function(){listSize(0);}, 60);
			}else{
				setTimeout(function(){listSize(24);}, 60);
			}
		}
		
	}
}

//错误提示
function errorStyle(){
	if($('.emm').length!=0){
		var emmLength = $('.emm').html().length;
		$('.autobox').width(emmLength+1+'em');
	}
	$('.error').find('input').bind('focus', hideError);
	function hideError(_this){
		var _this = this;
		_this.parentNode.className='td';
		$(this).next('.erxx').remove();
	}
}




//图片预览效果
var maxWidth=250;
var maxHeight=250;
function getPosXY(a,offset) {
       var p=offset?offset.slice(0):[0,0],tn;
       while(a) {
           tn=a.tagName.toUpperCase();
           if(tn=='IMG') {
              a=a.offsetParent;continue;
           }
          p[0]+=a.offsetLeft-(tn=="DIV"&&a.scrollLeft?a.scrollLeft:0);
          p[1]+=a.offsetTop-(tn=="DIV"&&a.scrollTop?a.scrollTop:0);
          if(tn=="BODY")
                break;
          a=a.offsetParent;
      }
      return p;
}
function checkComplete() {
     if(checkComplete.__img&&checkComplete.__img.complete)
              checkComplete.__onload();
}
checkComplete.__onload=function() {
         clearInterval(checkComplete.__timeId);
         var w=checkComplete.__img.width;
         var h=checkComplete.__img.height;
         if(w>=h&&w>maxWidth) {
              previewImage.style.width=maxWidth+'px';
         }
        else if(h>=w&&h>maxHeight) {
              previewImage.style.height=maxHeight+'px';
        }
        else {
              previewImage.style.width=previewImage.style.height='';
        }
       previewImage.src=checkComplete.__img.src;previewUrl.href=checkComplete.href;checkComplete.__img=null;
}
function showPreview(e) {
         hidePreview (e);
         previewFrom=e.target||e.srcElement;
         previewImage.src=loadingImg;
         previewImage.style.width=previewImage.style.height='';
         previewTimeoutId=setTimeout('_showPreview()',500);
         checkComplete.__img=null;
}
function hidePreview(e) {
        if(e) {
            var toElement=e.relatedTarget||e.toElement;
            while(toElement) {
                  if(toElement.id=='PreviewBox')
                          return;
                  toElement=toElement.parentNode;
            }
       }
       try {
            clearInterval(checkComplete.__timeId);
            checkComplete.__img=null;
            previewImage.src=null;
       }
       catch(e) {}
       clearTimeout(previewTimeoutId);
       previewBox.style.display='none';
}
function _showPreview() {
        checkComplete.__img=new Image();
        if(previewFrom.tagName.toUpperCase()=='A')
               previewFrom=previewFrom.getElementsByTagName('img')[0];
        var largeSrc=previewFrom.getAttribute("large-src");
        var picLink=previewFrom.getAttribute("pic-link");
        if(!largeSrc)
             return;
        else {
             checkComplete.__img.src=largeSrc;
             checkComplete.href=picLink;
             checkComplete.__timeId=setInterval("checkComplete()",20);
             var pos=getPosXY(previewFrom,[106,26]);
             previewBox.style.left=pos[0]+'px';
             previewBox.style.top=pos[1]+'px';
             previewBox.style.display='block';
        }
}
