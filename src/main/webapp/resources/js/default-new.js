/**
 * 
 */

var fsiteLink = $('div#footer a.fsite.type1, div.footer a.fsite.type1');
	if (fsiteLink.length > 0) {

		fsiteLink.on('click', function(e){
			e.stopPropagation();
			$('div#footer a.fsite, div.footer a.fsite').next().hide();
			if($(this).hasClass('active')){
				$(this).removeClass('active').next().hide();
			}else{
				$('div#footer a.fsite, div.footer a.fsite').removeClass('active').next().hide;
				$(this).addClass('active').next().show();
			}

			var nex = $(this).next().height();
			if(nex > 310){
				$(this).next().css('height','310px');
			}

			var aTagList = $(this).parent().find('li > a');
			aTagList.on('click', function(e) {
				$(this).parent().parent().parent().find('span.f1').text($(this).text());
				$(this).parent().parent().parent().parent().find('> a').attr('href', $(this).attr('href'));
				$(this).parent().parent().parent().parent().find('> a').attr('target', '_blank');
				if(!window.location.pathname.match("^/elib/")) {
					e.preventDefault();
				}
			});
			return false;
		});
		$(document).click(function(){
		    $('div#footer a.fsite, div.footer a.fsite').removeClass('active').next().hide();
		});
	}

	var fsiteLink2 = $('div#footer a.fsite.type2, div.footer a.fsite.type2');
	if (fsiteLink2.length > 0) {
		fsiteLink2.on('click', function(e){
			e.stopPropagation();
			$('div#footer a.fsite, div.footer a.fsite').next().hide();
			if($(this).hasClass('active')){
				$(this).removeClass('active').next().hide();
			}else{
				$('div#footer a.fsite, div.footer a.fsite').removeClass('active').next().hide;
				$(this).addClass('active').next().show();
			}

			var nex1 = $(this).next().height();
			if(nex1 > 310){
				$(this).next().css('height','310px');
			}

			var aTagList = $(this).parent().find('li > a');
			aTagList.on('click', function(e) {
				$(this).parent().parent().parent().find('span.f1').text($(this).text());
			});
			return false;
		});
		$(document).click(function(){
		    $('div#footer a.fsite, div.footer a.fsite').removeClass('active').next().hide();
		});
	}

	var fsiteLink3 = $('div.mFooter a.fsite.type1');
	if (fsiteLink3.length > 0) {

		fsiteLink3.on('click', function(e){
			e.stopPropagation();
			$('div.mFooter a.fsite').next().hide();
			if($(this).hasClass('active')){
				$(this).removeClass('active').next().hide();
			}else{
				$('div.mFooter a.fsite').removeClass('active').next().hide;
				$(this).addClass('active').next().show();
			}

			var nex = $(this).next().height();
			if(nex > 310){
				$(this).next().css('height','310px');
			}

			var aTagList = $(this).parent().find('li > a');
			aTagList.on('click', function(e) {
				$(this).parent().parent().parent().find('span.f1').text($(this).text());
				$(this).parent().parent().parent().parent().find('> a').attr('href', $(this).attr('href'));
				$(this).parent().parent().parent().parent().find('> a').attr('target', '_blank');
				if(!window.location.pathname.match("^/elib/")) {
					e.preventDefault();
				}
			});
			return false;
		});
		$(document).click(function(){
		    $('div.mFooter a.fsite').removeClass('active').next().hide();
		});
	}

	var fsiteLink4 = $('div.mFooter a.fsite.type2');
	if (fsiteLink4.length > 0) {
		fsiteLink4.on('click', function(e){
			e.stopPropagation();
			$('div.mFooter a.fsite').next().hide();
			if($(this).hasClass('active')){
				$(this).removeClass('active').next().hide();
			}else{
				$('div.mFooter a.fsite').removeClass('active').next().hide;
				$(this).addClass('active').next().show();
			}

			var nex1 = $(this).next().height();
			if(nex1 > 310){
				$(this).next().css('height','310px');
			}

			var aTagList = $(this).parent().find('li > a');
			aTagList.on('click', function(e) {
				$(this).parent().parent().parent().find('span.f1').text($(this).text());
			});
			return false;
		});
		$(document).click(function(){
		    $('div.mFooter a.fsite').removeClass('active').next().hide();
		});
	}

