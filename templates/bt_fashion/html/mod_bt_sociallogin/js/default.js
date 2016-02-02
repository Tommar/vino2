/**
 * @package 	mod_bt_sociallogin - BT Sociallogin Module
 * @version		1.1.0
 * @created		Dec 2012

 * @author		BowThemes
 * @email		support@bowthems.com
 * @website		http://bowthemes.com
 * @support		Forum - http://bowthemes.com/forum/
 * @copyright	Copyright (C) 2011 Bowthemes. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 *
 */
var BTLJ = jQuery.noConflict();
if(typeof(btTimeOut)=='undefined') var btTimeOut;
if(typeof(requireRemove)=='undefined') var requireRemove = true;
/*
var mobile = function(){
	return {
		detect:function(){
			var uagent = navigator.userAgent.toLowerCase(); 
			var list = this.mobiles;
			var ismobile = false;
			for(var d=0;d<list.length;d+=1){
				if(uagent.indexOf(list[d])!=-1){
					ismobile = true;
				}
			}
			return ismobile;
		},
		mobiles:[
			"midp","240x320","blackberry","netfront","nokia","panasonic",
			"portalmmm","sharp","sie-","sonyericsson","symbian",
			"windows ce","benq","mda","mot-","opera mini",
			"philips","pocket pc","sagem","samsung","sda",
			"sgh-","vodafone","xda","palm","iphone",
			"ipod","android"
		]
	};
}();
*/
//var autoPos = mobile.detect() == false; 
var autoPos = true; 
//var mobilePopupPos = {top:0,right:0}; // Position of popup

BTLJ(document).ready(function() {
	BTLJ('#btl-content').appendTo('body');
	BTLJ(".btl-input #jform_profile_aboutme").attr("cols",21);
	BTLJ('.bt-scroll .btl-buttonsubmit').click(function(){		
		setTimeout(function(){
			if(BTLJ("#btl-registration-error").is(':visible')){
				BTLJ('.bt-scroll').data('jsp').scrollToY(0,true);
			}else{
				var position = BTLJ('.bt-scroll').find('.invalid:first').position();
				if(position) BTLJ('.bt-scroll').data('jsp').scrollToY(position.top < 300?0:position.top-50,true);
			}
		},20);
	})
	btlOpt.LB_SIZE = btlOpt.LB_SIZE.split(',');
	btlOpt.RB_SIZE = btlOpt.RB_SIZE.split(',');
	jQuery('#btl-content-registration .bt-scroll').css({'width':btlOpt.RB_SIZE[0],'height':(btlOpt.RB_SIZE[1]-50)+'px'})
	//SET CSS FOR CALENDAR
	BTLJ("#jform_profile_dob_img").click(function(){
		//top_pos=  BTLJ("#jform_profile_dob_img").position().top -170;
		BTLJ("div.calendar:last").show().css({"position":"fixed",'z-index':1006});
		BTLJ(".calendar").click(function(){requireRemove =false;});	
	});
	//SET POSITION
	if(BTLJ('.btl-dropdown').length){
		setFPosition();
		BTLJ(window).resize(function(){
			setFPosition();
		})
	}
	BTLJ(btlOpt.LOGIN_TAGS).addClass("btl-modal");
	if(btlOpt.REGISTER_TAGS != ''){
		BTLJ(btlOpt.REGISTER_TAGS).addClass("btl-modal");
	}
	// Login event
	var elements = '#btl-panel-login';
	if (btlOpt.LOGIN_TAGS) elements += ', ' + btlOpt.LOGIN_TAGS;
	if (btlOpt.MOUSE_EVENT =='click'){ 
		BTLJ(elements).click(function (event) {
				showLoginForm();
				event.preventDefault();
		});	
	}else{
		BTLJ(elements).hover(function () {
				showLoginForm();
		},function(){});
	}
	
	// Registration/Profile event
	elements = '#btl-panel-registration';
	if (btlOpt.REGISTER_TAGS) elements += ', ' + btlOpt.REGISTER_TAGS;
	if (btlOpt.MOUSE_EVENT =='click'){ 
		BTLJ(elements).click(function (event) {
			showRegistrationForm();
			event.preventDefault();
		});	
		BTLJ("#btl-panel-profile").click(function(event){
			showProfile();
			event.preventDefault();
		});
	}else{
		BTLJ(elements).hover(function () {
				if(!BTLJ("#btl-integrated").length){
					showRegistrationForm();
				}
		},function(){});
		BTLJ("#btl-panel-profile").hover(function () {
				showProfile();
		},function(){});
	}
	BTLJ('#register-link a').click(function (event) {
			if(BTLJ('.btl-modal').length){
				BTLJ.modal.close();setTimeout("showRegistrationForm();",1000);
			}
			else{
				showRegistrationForm();
			}
			event.preventDefault();
	});	
	
	// Close form
	BTLJ(document).click(function(event){
		if(requireRemove && event.which == 1) btTimeOut = setTimeout('BTLJ("#btl-content > div").fadeOut();BTLJ(".btl-panel span").removeClass("active");',10);
		requireRemove =true;
	})
	BTLJ(".btl-content-block").click(function(){requireRemove =false;});	
	BTLJ(".btl-panel span").click(function(){requireRemove =false;});		
});
function setFPosition(){
	if(btlOpt.ALIGN == "center"){
		BTLJ("#btl-content > div").each(function(){
			var panelid = "#"+this.id.replace("content","panel");
			var left = BTLJ(panelid).offset().left + BTLJ(panelid).width()/2 - BTLJ(this).width()/2;
			if(left < 0) left = 0;
			BTLJ(this).css('left',left);
		});
	}else{
		if(btlOpt.ALIGN == "right"){
			BTLJ("#btl-content > div").css('right',BTLJ(document).width()-BTLJ('.btl-panel').offset().left-BTLJ('.btl-panel').width());
		}else{
			BTLJ("#btl-content > div").css('left',BTLJ('.btl-panel').offset().left);
		}
	}	
	BTLJ("#btl-content > div").css('top',BTLJ(".btl-panel").offset().top+BTLJ(".btl-panel").height()+2);	
}

/**
 * SHOW LOGIN FORM
 */
function showLoginForm(){

	BTLJ('.btl-panel span').removeClass("active");
	var el = '#btl-panel-login';
	BTLJ.modal.close();
	if(BTLJ(el).hasClass("btl-modal")){
		BTLJ(el).addClass("active");
		BTLJ("#btl-content > div").fadeOut();
		BTLJ("#btl-content-login").modal({
			overlayClose:true,
			persist :true,
			autoPosition:autoPos,
			fixed: BTLJ(window).width()>500,
			onOpen: function (dialog) {
				BTLJ('#btl-login-error').hide();
				dialog.overlay.fadeIn();
				dialog.container.show();
				dialog.data.show();		
			},
			onClose: function (dialog) {
				dialog.overlay.fadeOut(function () {
					dialog.container.hide();
					dialog.data.hide();		
					BTLJ.modal.close();
					BTLJ('.btl-panel span').removeClass("active");
				});
			},
			containerCss:{				
				width:btlOpt.LB_SIZE[0],
				height:btlOpt.LB_SIZE[1]
			}
		})			 
	}
	else
	{	
		BTLJ("#btl-content > div").each(function(){
			if(this.id=="btl-content-login")
			{
				if(BTLJ(this).is(":hidden")){
					BTLJ(el).addClass("active");
					BTLJ(this).slideDown();
					}
				else{
					BTLJ(this).fadeOut();
					BTLJ(el).removeClass("active");
				}						
					
			}
			else{
				if(BTLJ(this).is(":visible")){						
					BTLJ(this).fadeOut();
					BTLJ('#btl-panel-registration').removeClass("active");
				}
			}
			
		})
	}
}
/**
 * populate data in form register
 */
function populateFormRegister(data,editEmail){
	BTLJ.modal.close();
	setTimeout(function(){
		populateFormRegisterDelay(data,editEmail);
	},800);
}
function populateFormRegisterDelay(data,editEmail){
	for (var i in data)
	{
		if(i!='profile'){
			jQuery('#jform_'+i).val(data[i]);
		}else{
			for (var j in data['profile']){
				jQuery('#jform_profile_'+j).val(data['profile'][j]);
			}
		}
	}
	BTLJ('#btl-form-register #jform_password1').val('');
	BTLJ('#btl-form-register #jform_password2').val('');
	if(!editEmail){
		BTLJ('#btl-form-register #jform_email1').attr('disabled','disabled');
		BTLJ('#btl-form-register #jform_email2').attr('disabled','disabled');
	}
	showRegistrationForm();
}
// SHOW REGISTRATION FORM
function showRegistrationForm(){

	if(BTLJ("#btl-integrated").length){
		window.location.href=BTLJ("#btl-integrated").val();
		return;
	}
	BTLJ('.btl-panel span').removeClass("active");
	BTLJ.modal.close();
	var el = '#btl-panel-registration';
	if(BTLJ(el).hasClass("btl-modal")){
		BTLJ(el).addClass("active");
		BTLJ("#btl-content > div").fadeOut();
		BTLJ("#btl-content-registration").modal({
			overlayClose:true,
			persist :true,
			autoPosition:autoPos,
			fixed: BTLJ(window).width()>500,
			onOpen: function (dialog) {
				dialog.overlay.fadeIn();
				dialog.container.show();
				dialog.data.show();	
				BTLJ('.bt-scroll').jScrollPane();				
			},
			onClose: function (dialog) {
				dialog.overlay.fadeOut(function () {
					dialog.container.hide();
					dialog.data.hide();		
					BTLJ.modal.close();
					BTLJ('.btl-panel span').removeClass("active");
				});
			},
			containerCss:{				
				width:btlOpt.RB_SIZE[0],
				height:'auto'
			}
		})
	}
	else
	{	
		BTLJ("#btl-content > div").each(function(){
			if(this.id=="btl-content-registration")
			{
				if(BTLJ(this).is(":hidden")){
					BTLJ(el).addClass("active");
					BTLJ(this).slideDown(function(){
					});
					BTLJ('.bt-scroll').jScrollPane();		
				}
				else{
					BTLJ(this).fadeOut();								
					BTLJ(el).removeClass("active");
				}
			}
			else{
				if(BTLJ(this).is(":visible")){						
					BTLJ(this).fadeOut();
					BTLJ('#btl-panel-login').removeClass("active");
				}
			}
			
		})
	}
}

// SHOW PROFILE (LOGGED MODULES)
function showProfile(){
	//SET POSITION
	if(BTLJ('.btl-dropdown').length){
		setFPosition();
		BTLJ(window).resize(function(){
			setFPosition();
		})
	}
	var el = '#btl-panel-profile';
	BTLJ("#btl-content > div").each(function(){
		if(this.id=="btl-content-profile")
		{
			if(BTLJ(this).is(":hidden")){
				BTLJ(el).addClass("active");
				BTLJ(this).slideDown();
				}
			else{
				BTLJ(this).fadeOut();	
				BTLJ('.btl-panel span').removeClass("active");
			}				
		}
		else{
			if(BTLJ(this).is(":visible")){						
				BTLJ(this).fadeOut();
				BTLJ('.btl-panel span').removeClass("active");	
			}
		}
		
	})
}

// AJAX REGISTRATION
function registerAjax(){
	BTLJ("#btl-registration-error").hide();
	if(BTLJ(".btl-input #jform_name").val()==""){
		BTLJ("#btl-registration-error").html(Joomla.JText._('REQUIRED_NAME')).show();
		return false;
	}
	
	if(BTLJ(".btl-input #jform_username").val()==""){
		BTLJ("#btl-registration-error").html(Joomla.JText._('REQUIRED_USERNAME')).show();
		return false;
	}
	
	if(BTLJ(".btl-input #jform_password1").val()==""){
		BTLJ("#btl-registration-error").html(Joomla.JText._('REQUIRED_PASSWORD')).show();
		return false;
	}
	
	if(BTLJ(".btl-input #jform_password2").val()==""){
		BTLJ("#btl-registration-error").html(Joomla.JText._('REQUIRED_VERIFY_PASSWORD')).show();
		return false;
	}
	
	if(BTLJ(".btl-input #jform_password2").val()!=BTLJ(".btl-input #jform_password1").val()){
		BTLJ("#btl-registration-error").html(Joomla.JText._('PASSWORD_NOT_MATCH')).show();
		return false;
	}
	if(BTLJ(".btl-input #jform_email1").val()=="" && !BTLJ(".btl-input #jform_email1").attr('disabled')){
		BTLJ("#btl-registration-error").html(Joomla.JText._('REQUIRED_EMAIL')).show();
		return false;
	}
	var emailRegExp = /^[_a-zA-Z0-9-]+(\.[_a-zA-z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.([a-zA-Z]){2,4})$/;
	if(!BTLJ(".btl-input #jform_email1").attr('disabled') && !emailRegExp.test(BTLJ(".btl-input #jform_email1").val())){		
		BTLJ("#btl-registration-error").html(Joomla.JText._('EMAIL_INVALID')).show();
		return false;
	}
	
	if(BTLJ(".btl-input #jform_email1").val()!=BTLJ(".btl-input #jform_email2").val()){
		BTLJ("#btl-registration-error").html(Joomla.JText._('EMAIL_NOT_MATCH')).show();;
		return false;
	}
	if(BTLJ("#jform_profile_tos0").length){
		if(!BTLJ("#jform_profile_tos0").is(":checked")){
			BTLJ("#jform_profile_tos").css("border","1px solid red");
			BTLJ("#jform_profile_tos").addClass("invalid");
			BTLJ("#jform_profile_tos0").focus();
			result = 1;
		}else{
			BTLJ("#jform_profile_tos").css("border","none");
			BTLJ("#jform_profile_tos").removeClass("invalid");
		}
	}
	if(btlOpt.RECAPTCHA != '0'){
		if(BTLJ('#recaptcha_response_field').length && BTLJ('#recaptcha_response_field').val()==''){
			BTLJ('#recaptcha_response_field').focus();
			return false;
		}
	}
	 
	
	var token = BTLJ('.btl-buttonsubmit input:last').attr("name");
	var value_token = BTLJ('.btl-buttonsubmit input:last').val(); 
	var datasubmit=  BTLJ('#btl-form-register').serialize();
	BTLJ.ajax({
		   type: "POST",
		   beforeSend:function(){
			   BTLJ("#btl-register-in-process").show();			   
		   },
		   async: true,
		   url: btlOpt.BT_AJAX,
		   data: datasubmit,
		   success: function(html){				  
			   //if html contain "Registration failed" is register fail
			  BTLJ("#btl-register-in-process").hide();	
			 
			  if(html.indexOf('$error$')!= -1){
				  BTLJ("#btl-registration-error").html(html.replace('$error$',''));  
				  BTLJ("#btl-registration-error").show();
				  BTLJ('.bt-scroll').data('jsp').scrollToY(0,true);
				  if(btlOpt.RECAPTCHA =="recaptcha"){
					  Recaptcha.reload();
				  }
				  
			   }else{				   
				   BTLJ(".bt-scroll").hide();
				   BTLJ("#btl-success").html(html);	
				   BTLJ("#btl-success").show();	
				   setTimeout(function() {window.location.reload();},7000);

			   }
		   },
		   error: function (XMLHttpRequest, textStatus, errorThrown) {
				alert(textStatus + ': Ajax request failed!');
		   }
		});
		return false;
}

// AJAX LOGIN
function loginAjax(){
	if(BTLJ("#btl-input-username").val()=="") {
		BTLJ("#btl-login-error").html(Joomla.JText._('REQUIRED_USERNAME'))
		BTLJ("#btl-login-error").show();
		return false;
	}
	if(BTLJ("#btl-input-password").val()==""){
		BTLJ("#btl-login-error").html(Joomla.JText._('REQUIRED_PASSWORD'));
		BTLJ("#btl-login-error").show();
		return false;
	}
	var token = BTLJ('.btl-buttonsubmit input:last').attr("name");
	var value_token = encodeURIComponent(BTLJ('.btl-buttonsubmit input:last').val()); 
	var datasubmit= "bttask=login&username="+encodeURIComponent(BTLJ("#btl-input-username").val())
	+"&passwd=" + encodeURIComponent(BTLJ("#btl-input-password").val())
	+ "&"+token+"="+value_token
	+"&return="+ encodeURIComponent(BTLJ("#btl-return").val());
	
	if(BTLJ("#btl-checkbox-remember").is(":checked")){
		datasubmit += '&remember=yes';
	}
	BTLJ.ajax({
	   type: "POST",
	   beforeSend:function(){
		   BTLJ("#btl-login-in-process").show();
		   BTLJ("#btl-login-in-process").css('height',BTLJ('#btl-content-login').outerHeight()+'px');
	   },
	   async: true,
	   url: btlOpt.BT_AJAX,
	   data: datasubmit,
	   success: function(html){
		 if(html == "1" || html == 1){
			   window.location.href=btlOpt.BT_RETURN;
		   }else{
			   BTLJ("#btl-login-in-process").hide();
			   BTLJ("#btl-login-error").html(Joomla.JText._('E_LOGIN_AUTHENTICATE'));
			   BTLJ("#btl-login-error").show();
		   }
	   },
	   error: function (XMLHttpRequest, textStatus, errorThrown) {
			alert(textStatus + ': ajax request failed');
	   }
	});
	return false;
}
function newPopup(pageURL, title,w,h){
	var left = (screen.width/2)-(w/2);
	var top = (screen.height/2)-(h/2);
	var popupWindow = window.open(pageURL,'connectingPopup','height='+h+',width='+w+',left='+left+',top='+top+',resizable=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,directories=no,status=yes');
	//popupWindow.document.title = title;
}