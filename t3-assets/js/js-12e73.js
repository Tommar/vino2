

/*===============================
http://10.0.0.72/bt_fashion30/media/foundry/3.1/config/d2d365aab7af67976e9b4886acb5bd43.js
================================================================================*/;
!function(ns){var $,options,enqueue=function(fn){var queue=[],locked=1,working=0,fn=fn,instance=function(){queue.push([this,arguments]),locked||instance.execute()};return instance.execute=function(){if(!working){working=1,locked=0;for(var q;q=queue.shift();)fn.apply(q[0],q[1]);working=0}},instance.lock=function(){locked=0},instance},components={},initialized=0,installers=[],self=window[ns]={setup:function(o){options=o,self.init()},jquery:function(jquery){$||($=jquery,self.init())},init:function(){initialized||$&&options&&(self.$=$.initialize(options),self.plugin.execute(),initialized=1)},plugin:enqueue(function(name,factory){factory.apply(self,[$])}),module:enqueue(function(name,factory){$.module(name,factory)}),installer:function(recipient,name,factory){if(installers[recipient]||(installers[recipient]=[]),!name)return installers[recipient];var component=components[recipient];return component.registered?component.install(name,factory):(installers[recipient].push([name,factory]),void 0)},component:function(name,options){if(!name)return components;if(!options)return components[name];if("function"==typeof options){var component=options;return component.registered=!0,components[name]=component}var queue=[],abstractQueue=function(method,context,args){return{method:method,context:this,args:args}},abstractMethod=function(method,parent,chain){return function(){return(chain||queue).push(abstractQueue(method,this,arguments)),parent}},abstractInstance=function(instance,methods,chain){for(var i=0;i<methods.length;i++){var method=methods[i];instance[method]=abstractMethod(method,instance,chain)}return instance},abstractChain=function(name,methods){return function(){var chain=[abstractQueue(name,this,arguments)];return queue.push(chain),abstractInstance({},methods,chain)}};queue.execute=function(){for(var component=components[name],i=0;i<queue.length;i++){var fn=queue[i];if("[object Array]"===Object.prototype.toString.call(fn))for(var chain=fn,context=component,j=0;j<chain.length;j++)context=context[chain[j].method].apply(context,chain[j].args);else component[fn.method].apply(component,fn.args)}};var component=abstractInstance(function(){component.run.apply(this.arguments)},["run","ready","module","template"]);return component.className=name,component.options=options,component.queue=queue,component.require=abstractChain("require",["library","script","stylesheet","language","template","view","done","always","fail","progress"]),window[name]=components[name]=component}}}("FD31");FD31.setup({"environment":"static","source":"local","mode":"compressed","path":"http:\/\/10.0.0.72\/bt_fashion30\/media\/foundry\/3.1","extension":".min.js","rootPath":"http:\/\/10.0.0.72\/bt_fashion30","basePath":"http:\/\/10.0.0.72\/bt_fashion30","indexUrl":"http:\/\/10.0.0.72\/bt_fashion30\/index.php","joomla":{"version":"3.2.3","debug":false},"locale":{"lang":"en-GB"}});


/*===============================
http://10.0.0.72/bt_fashion30/media/com_easyblog/config/53fac1724be4bbbb05556432ad765d6d.js
================================================================================*/;
FD31.component("EasyBlog",{"environment":"static","source":"local","mode":"compressed","baseUrl":"http:\/\/10.0.0.72\/bt_fashion30\/index.php?option=com_easyblog&lang=en&Itemid=154","version":"3.9.15278","scriptVersioning":true,"responsive":true});


/*===============================
/bt_fashion30/plugins/system/t3/base/bootstrap/js/bootstrap.js
================================================================================*/;
!function($){"use strict";$(function(){$.support.transition=(function(){var transitionEnd=(function(){var el=document.createElement('bootstrap'),transEndEventNames={'WebkitTransition':'webkitTransitionEnd','MozTransition':'transitionend','OTransition':'oTransitionEnd otransitionend','transition':'transitionend'},name
for(name in transEndEventNames){if(el.style[name]!==undefined){return transEndEventNames[name]}}}())
return transitionEnd&&{end:transitionEnd}})()})}(window.jQuery);!function($){"use strict";var dismiss='[data-dismiss="alert"]',Alert=function(el){$(el).on('click',dismiss,this.close)}
Alert.prototype.close=function(e){var $this=$(this),selector=$this.attr('data-target'),$parent
if(!selector){selector=$this.attr('href')
selector=selector&&selector.replace(/.*(?=#[^\s]*$)/,'')}
$parent=$(selector)
e&&e.preventDefault()
$parent.length||($parent=$this.hasClass('alert')?$this:$this.parent())
$parent.trigger(e=$.Event('close'))
if(e.isDefaultPrevented())return
$parent.removeClass('in')
function removeElement(){$parent.trigger('closed').remove()}
$.support.transition&&$parent.hasClass('fade')?$parent.on($.support.transition.end,removeElement):removeElement()}
var old=$.fn.alert
$.fn.alert=function(option){return this.each(function(){var $this=$(this),data=$this.data('alert')
if(!data)$this.data('alert',(data=new Alert(this)))
if(typeof option=='string')data[option].call($this)})}
$.fn.alert.Constructor=Alert
$.fn.alert.noConflict=function(){$.fn.alert=old
return this}
$(document).on('click.alert.data-api',dismiss,Alert.prototype.close)}(window.jQuery);!function($){"use strict";var Button=function(element,options){this.$element=$(element)
this.options=$.extend({},$.fn.button.defaults,options)}
Button.prototype.setState=function(state){var d='disabled',$el=this.$element,data=$el.data(),val=$el.is('input')?'val':'html'
state=state+'Text'
data.resetText||$el.data('resetText',$el[val]())
$el[val](data[state]||this.options[state])
setTimeout(function(){state=='loadingText'?$el.addClass(d).attr(d,d):$el.removeClass(d).removeAttr(d)},0)}
Button.prototype.toggle=function(){var $parent=this.$element.closest('[data-toggle="buttons-radio"]')
$parent&&$parent.find('.active').removeClass('active')
this.$element.toggleClass('active')}
var old=$.fn.button
$.fn.button=function(option){return this.each(function(){var $this=$(this),data=$this.data('button'),options=typeof option=='object'&&option
if(!data)$this.data('button',(data=new Button(this,options)))
if(option=='toggle')data.toggle()
else if(option)data.setState(option)})}
$.fn.button.defaults={loadingText:'loading...'}
$.fn.button.Constructor=Button
$.fn.button.noConflict=function(){$.fn.button=old
return this}
$(document).on('click.button.data-api','[data-toggle^=button]',function(e){var $btn=$(e.target)
if(!$btn.hasClass('btn'))$btn=$btn.closest('.btn')
$btn.button('toggle')})}(window.jQuery);!function($){"use strict";var Carousel=function(element,options){this.$element=$(element)
this.$indicators=this.$element.find('.carousel-indicators')
this.options=options
this.options.pause=='hover'&&this.$element.on('mouseenter',$.proxy(this.pause,this)).on('mouseleave',$.proxy(this.cycle,this))}
Carousel.prototype={cycle:function(e){if(!e)this.paused=false
if(this.interval)clearInterval(this.interval);this.options.interval&&!this.paused&&(this.interval=setInterval($.proxy(this.next,this),this.options.interval))
return this},getActiveIndex:function(){this.$active=this.$element.find('.item.active')
this.$items=this.$active.parent().children()
return this.$items.index(this.$active)},to:function(pos){var activeIndex=this.getActiveIndex(),that=this
if(pos>(this.$items.length-1)||pos<0)return
if(this.sliding){return this.$element.one('slid',function(){that.to(pos)})}
if(activeIndex==pos){return this.pause().cycle()}
return this.slide(pos>activeIndex?'next':'prev',$(this.$items[pos]))},pause:function(e){if(!e)this.paused=true
if(this.$element.find('.next, .prev').length&&$.support.transition.end){this.$element.trigger($.support.transition.end)
this.cycle(true)}
clearInterval(this.interval)
this.interval=null
return this},next:function(){if(this.sliding)return
return this.slide('next')},prev:function(){if(this.sliding)return
return this.slide('prev')},slide:function(type,next){var $active=this.$element.find('.item.active'),$next=next||$active[type](),isCycling=this.interval,direction=type=='next'?'left':'right',fallback=type=='next'?'first':'last',that=this,e
this.sliding=true
isCycling&&this.pause()
$next=$next.length?$next:this.$element.find('.item')[fallback]()
e=$.Event('slide',{relatedTarget:$next[0],direction:direction})
if($next.hasClass('active'))return
if(this.$indicators.length){this.$indicators.find('.active').removeClass('active')
this.$element.one('slid',function(){var $nextIndicator=$(that.$indicators.children()[that.getActiveIndex()])
$nextIndicator&&$nextIndicator.addClass('active')})}
if($.support.transition&&this.$element.hasClass('slide')){this.$element.trigger(e)
if(e.isDefaultPrevented())return
$next.addClass(type)
$next[0].offsetWidth
$active.addClass(direction)
$next.addClass(direction)
this.$element.one($.support.transition.end,function(){$next.removeClass([type,direction].join(' ')).addClass('active')
$active.removeClass(['active',direction].join(' '))
that.sliding=false
setTimeout(function(){that.$element.trigger('slid')},0)})}else{this.$element.trigger(e)
if(e.isDefaultPrevented())return
$active.removeClass('active')
$next.addClass('active')
this.sliding=false
this.$element.trigger('slid')}
isCycling&&this.cycle()
return this}}
var old=$.fn.carousel
$.fn.carousel=function(option){return this.each(function(){var $this=$(this),data=$this.data('carousel'),options=$.extend({},$.fn.carousel.defaults,typeof option=='object'&&option),action=typeof option=='string'?option:options.slide
if(!data)$this.data('carousel',(data=new Carousel(this,options)))
if(typeof option=='number')data.to(option)
else if(action)data[action]()
else if(options.interval)data.pause().cycle()})}
$.fn.carousel.defaults={interval:5000,pause:'hover'}
$.fn.carousel.Constructor=Carousel
$.fn.carousel.noConflict=function(){$.fn.carousel=old
return this}
$(document).on('click.carousel.data-api','[data-slide], [data-slide-to]',function(e){var $this=$(this),href,$target=$($this.attr('data-target')||(href=$this.attr('href'))&&href.replace(/.*(?=#[^\s]+$)/,'')),options=$.extend({},$target.data(),$this.data()),slideIndex
$target.carousel(options)
if(slideIndex=$this.attr('data-slide-to')){$target.data('carousel').pause().to(slideIndex).cycle()}
e.preventDefault()})}(window.jQuery);!function($){"use strict";var Collapse=function(element,options){this.$element=$(element)
this.options=$.extend({},$.fn.collapse.defaults,options)
if(this.options.parent){this.$parent=$(this.options.parent)}
this.options.toggle&&this.toggle()}
Collapse.prototype={constructor:Collapse,dimension:function(){var hasWidth=this.$element.hasClass('width')
return hasWidth?'width':'height'},show:function(){var dimension,scroll,actives,hasData
if(this.transitioning||this.$element.hasClass('in'))return
dimension=this.dimension()
scroll=$.camelCase(['scroll',dimension].join('-'))
actives=this.$parent&&this.$parent.find('> .accordion-group > .in')
if(actives&&actives.length){hasData=actives.data('collapse')
if(hasData&&hasData.transitioning)return
actives.collapse('hide')
hasData||actives.data('collapse',null)}
this.$element[dimension](0)
this.transition('addClass',$.Event('show'),'shown')
$.support.transition&&this.$element[dimension](this.$element[0][scroll])},hide:function(){var dimension
if(this.transitioning||!this.$element.hasClass('in'))return
dimension=this.dimension()
this.reset(this.$element[dimension]())
this.transition('removeClass',$.Event('hide'),'hidden')
this.$element[dimension](0)},reset:function(size){var dimension=this.dimension()
this.$element.removeClass('collapse')
[dimension](size||'auto')
[0].offsetWidth
this.$element[size!==null?'addClass':'removeClass']('collapse')
return this},transition:function(method,startEvent,completeEvent){var that=this,complete=function(){if(startEvent.type=='show')that.reset()
that.transitioning=0
that.$element.trigger(completeEvent)}
this.$element.trigger(startEvent)
if(startEvent.isDefaultPrevented())return
this.transitioning=1
this.$element[method]('in')
$.support.transition&&this.$element.hasClass('collapse')?this.$element.one($.support.transition.end,complete):complete()},toggle:function(){this[this.$element.hasClass('in')?'hide':'show']()}}
var old=$.fn.collapse
$.fn.collapse=function(option){return this.each(function(){var $this=$(this),data=$this.data('collapse'),options=$.extend({},$.fn.collapse.defaults,$this.data(),typeof option=='object'&&option)
if(!data)$this.data('collapse',(data=new Collapse(this,options)))
if(typeof option=='string')data[option]()})}
$.fn.collapse.defaults={toggle:true}
$.fn.collapse.Constructor=Collapse
$.fn.collapse.noConflict=function(){$.fn.collapse=old
return this}
$(document).on('click.collapse.data-api','[data-toggle=collapse]',function(e){var $this=$(this),href,target=$this.attr('data-target')||e.preventDefault()||(href=$this.attr('href'))&&href.replace(/.*(?=#[^\s]+$)/,''),option=$(target).data('collapse')?'toggle':$this.data()
$this[$(target).hasClass('in')?'addClass':'removeClass']('collapsed')
$(target).collapse(option)})}(window.jQuery);!function($){"use strict";var toggle='[data-toggle=dropdown]',Dropdown=function(element){var $el=$(element).on('click.dropdown.data-api',this.toggle)
$('html').on('click.dropdown.data-api',function(){$el.parent().removeClass('open')})}
Dropdown.prototype={constructor:Dropdown,toggle:function(e){var $this=$(this),$parent,isActive
if($this.is('.disabled, :disabled'))return
$parent=getParent($this)
isActive=$parent.hasClass('open')
clearMenus()
if(!isActive){if('ontouchstart'in document.documentElement){$('<div class="dropdown-backdrop"/>').insertBefore($(this)).on('click',clearMenus)}
$parent.toggleClass('open')}
$this.focus()
return false},keydown:function(e){var $this,$items,$active,$parent,isActive,index
if(!/(38|40|27)/.test(e.keyCode))return
$this=$(this)
e.preventDefault()
e.stopPropagation()
if($this.is('.disabled, :disabled'))return
$parent=getParent($this)
isActive=$parent.hasClass('open')
if(!isActive||(isActive&&e.keyCode==27)){if(e.which==27)$parent.find(toggle).focus()
return $this.click()}
$items=$('[role=menu] li:not(.divider):visible a',$parent)
if(!$items.length)return
index=$items.index($items.filter(':focus'))
if(e.keyCode==38&&index>0)index--
if(e.keyCode==40&&index<$items.length-1)index++
if(!~index)index=0
$items.eq(index).focus()}}
function clearMenus(){$('.dropdown-backdrop').remove()
$(toggle).each(function(){getParent($(this)).removeClass('open')})}
function getParent($this){var selector=$this.attr('data-target'),$parent
if(!selector){selector=$this.attr('href')
selector=selector&&/#/.test(selector)&&selector.replace(/.*(?=#[^\s]*$)/,'')}
$parent=selector&&$(selector)
if(!$parent||!$parent.length)$parent=$this.parent()
return $parent}
var old=$.fn.dropdown
$.fn.dropdown=function(option){return this.each(function(){var $this=$(this),data=$this.data('dropdown')
if(!data)$this.data('dropdown',(data=new Dropdown(this)))
if(typeof option=='string')data[option].call($this)})}
$.fn.dropdown.Constructor=Dropdown
$.fn.dropdown.noConflict=function(){$.fn.dropdown=old
return this}
$(document).on('click.dropdown.data-api',clearMenus).on('click.dropdown.data-api','.dropdown form',function(e){e.stopPropagation()}).on('click.dropdown.data-api',toggle,Dropdown.prototype.toggle).on('keydown.dropdown.data-api',toggle+', [role=menu]',Dropdown.prototype.keydown)}(window.jQuery);!function($){"use strict";var Modal=function(element,options){this.options=options
this.$element=$(element).delegate('[data-dismiss="modal"]','click.dismiss.modal',$.proxy(this.hide,this))
this.options.remote&&this.$element.find('.modal-body').load(this.options.remote)}
Modal.prototype={constructor:Modal,toggle:function(){return this[!this.isShown?'show':'hide']()},show:function(){var that=this,e=$.Event('show')
this.$element.trigger(e)
if(this.isShown||e.isDefaultPrevented())return
this.isShown=true
this.escape()
this.backdrop(function(){var transition=$.support.transition&&that.$element.hasClass('fade')
if(!that.$element.parent().length){that.$element.appendTo(document.body)}
that.$element.show()
if(transition){that.$element[0].offsetWidth}
that.$element.addClass('in').attr('aria-hidden',false)
that.enforceFocus()
transition?that.$element.one($.support.transition.end,function(){that.$element.focus().trigger('shown')}):that.$element.focus().trigger('shown')})},hide:function(e){e&&e.preventDefault()
var that=this
e=$.Event('hide')
this.$element.trigger(e)
if(!this.isShown||e.isDefaultPrevented())return
this.isShown=false
this.escape()
$(document).off('focusin.modal')
this.$element.removeClass('in').attr('aria-hidden',true)
$.support.transition&&this.$element.hasClass('fade')?this.hideWithTransition():this.hideModal()},enforceFocus:function(){var that=this
$(document).on('focusin.modal',function(e){if(that.$element[0]!==e.target&&!that.$element.has(e.target).length){that.$element.focus()}})},escape:function(){var that=this
if(this.isShown&&this.options.keyboard){this.$element.on('keyup.dismiss.modal',function(e){e.which==27&&that.hide()})}else if(!this.isShown){this.$element.off('keyup.dismiss.modal')}},hideWithTransition:function(){var that=this,timeout=setTimeout(function(){that.$element.off($.support.transition.end)
that.hideModal()},500)
this.$element.one($.support.transition.end,function(){clearTimeout(timeout)
that.hideModal()})},hideModal:function(){var that=this
this.$element.hide()
this.backdrop(function(){that.removeBackdrop()
that.$element.trigger('hidden')})},removeBackdrop:function(){this.$backdrop&&this.$backdrop.remove()
this.$backdrop=null},backdrop:function(callback){var that=this,animate=this.$element.hasClass('fade')?'fade':''
if(this.isShown&&this.options.backdrop){var doAnimate=$.support.transition&&animate
this.$backdrop=$('<div class="modal-backdrop '+animate+'" />').appendTo(document.body)
this.$backdrop.click(this.options.backdrop=='static'?$.proxy(this.$element[0].focus,this.$element[0]):$.proxy(this.hide,this))
if(doAnimate)this.$backdrop[0].offsetWidth
this.$backdrop.addClass('in')
if(!callback)return
doAnimate?this.$backdrop.one($.support.transition.end,callback):callback()}else if(!this.isShown&&this.$backdrop){this.$backdrop.removeClass('in')
$.support.transition&&this.$element.hasClass('fade')?this.$backdrop.one($.support.transition.end,callback):callback()}else if(callback){callback()}}}
var old=$.fn.modal
$.fn.modal=function(option){return this.each(function(){var $this=$(this),data=$this.data('modal'),options=$.extend({},$.fn.modal.defaults,$this.data(),typeof option=='object'&&option)
if(!data)$this.data('modal',(data=new Modal(this,options)))
if(typeof option=='string')data[option]()
else if(options.show)data.show()})}
$.fn.modal.defaults={backdrop:true,keyboard:true,show:true}
$.fn.modal.Constructor=Modal
$.fn.modal.noConflict=function(){$.fn.modal=old
return this}
$(document).on('click.modal.data-api','[data-toggle="modal"]',function(e){var $this=$(this),href=$this.attr('href'),$target=$($this.attr('data-target')||(href&&href.replace(/.*(?=#[^\s]+$)/,''))),option=$target.data('modal')?'toggle':$.extend({remote:!/#/.test(href)&&href},$target.data(),$this.data())
e.preventDefault()
$target.modal(option).one('hide',function(){$this.focus()})})}(window.jQuery);!function($){"use strict";var Tooltip=function(element,options){this.init('tooltip',element,options)}
Tooltip.prototype={constructor:Tooltip,init:function(type,element,options){var eventIn,eventOut,triggers,trigger,i
this.type=type
this.$element=$(element)
this.options=this.getOptions(options)
this.enabled=true
triggers=this.options.trigger.split(' ')
for(i=triggers.length;i--;){trigger=triggers[i]
if(trigger=='click'){this.$element.on('click.'+this.type,this.options.selector,$.proxy(this.toggle,this))}else if(trigger!='manual'){eventIn=trigger=='hover'?'mouseenter':'focus'
eventOut=trigger=='hover'?'mouseleave':'blur'
this.$element.on(eventIn+'.'+this.type,this.options.selector,$.proxy(this.enter,this))
this.$element.on(eventOut+'.'+this.type,this.options.selector,$.proxy(this.leave,this))}}
this.options.selector?(this._options=$.extend({},this.options,{trigger:'manual',selector:''})):this.fixTitle()},getOptions:function(options){options=$.extend({},$.fn[this.type].defaults,this.$element.data(),options)
if(options.delay&&typeof options.delay=='number'){options.delay={show:options.delay,hide:options.delay}}
return options},enter:function(e){var defaults=$.fn[this.type].defaults,options={},self
this._options&&$.each(this._options,function(key,value){if(defaults[key]!=value)options[key]=value},this)
self=$(e.currentTarget)[this.type](options).data(this.type)
if(!self.options.delay||!self.options.delay.show)return self.show()
clearTimeout(this.timeout)
self.hoverState='in'
this.timeout=setTimeout(function(){if(self.hoverState=='in')self.show()},self.options.delay.show)},leave:function(e){var self=$(e.currentTarget)[this.type](this._options).data(this.type)
if(this.timeout)clearTimeout(this.timeout)
if(!self.options.delay||!self.options.delay.hide)return self.hide()
self.hoverState='out'
this.timeout=setTimeout(function(){if(self.hoverState=='out')self.hide()},self.options.delay.hide)},show:function(){var $tip,pos,actualWidth,actualHeight,placement,tp,e=$.Event('show')
if(this.hasContent()&&this.enabled){this.$element.trigger(e)
if(e.isDefaultPrevented())return
$tip=this.tip()
this.setContent()
if(this.options.animation){$tip.addClass('fade')}
placement=typeof this.options.placement=='function'?this.options.placement.call(this,$tip[0],this.$element[0]):this.options.placement
$tip.detach().css({top:0,left:0,display:'block'})
this.options.container?$tip.appendTo(this.options.container):$tip.insertAfter(this.$element)
pos=this.getPosition()
actualWidth=$tip[0].offsetWidth
actualHeight=$tip[0].offsetHeight
switch(placement){case'bottom':tp={top:pos.top+pos.height,left:pos.left+pos.width/2-actualWidth/2}
break
case'top':tp={top:pos.top-actualHeight,left:pos.left+pos.width/2-actualWidth/2}
break
case'left':tp={top:pos.top+pos.height/2-actualHeight/2,left:pos.left-actualWidth}
break
case'right':tp={top:pos.top+pos.height/2-actualHeight/2,left:pos.left+pos.width}
break}
this.applyPlacement(tp,placement)
this.$element.trigger('shown')}},applyPlacement:function(offset,placement){var $tip=this.tip(),width=$tip[0].offsetWidth,height=$tip[0].offsetHeight,actualWidth,actualHeight,delta,replace
$tip.offset(offset).addClass(placement).addClass('in')
actualWidth=$tip[0].offsetWidth
actualHeight=$tip[0].offsetHeight
if(placement=='top'&&actualHeight!=height){offset.top=offset.top+height-actualHeight
replace=true}
if(placement=='bottom'||placement=='top'){delta=0
if(offset.left<0){delta=offset.left*-2
offset.left=0
$tip.offset(offset)
actualWidth=$tip[0].offsetWidth
actualHeight=$tip[0].offsetHeight}
this.replaceArrow(delta-width+actualWidth,actualWidth,'left')}else{this.replaceArrow(actualHeight-height,actualHeight,'top')}
if(replace)$tip.offset(offset)},replaceArrow:function(delta,dimension,position){this.arrow().css(position,delta?(50*(1-delta/dimension)+"%"):'')},setContent:function(){var $tip=this.tip(),title=this.getTitle()
$tip.find('.tooltip-inner')[this.options.html?'html':'text'](title)
$tip.removeClass('fade in top bottom left right')},hide:function(){var that=this,$tip=this.tip(),e=$.Event('hide')
this.$element.trigger(e)
if(e.isDefaultPrevented())return
$tip.removeClass('in')
function removeWithAnimation(){var timeout=setTimeout(function(){$tip.off($.support.transition.end).detach()},500)
$tip.one($.support.transition.end,function(){clearTimeout(timeout)
$tip.detach()})}
$.support.transition&&this.$tip.hasClass('fade')?removeWithAnimation():$tip.detach()
this.$element.trigger('hidden')
return this},fixTitle:function(){var $e=this.$element
if($e.attr('title')||typeof($e.attr('data-original-title'))!='string'){$e.attr('data-original-title',$e.attr('title')||'').attr('title','')}},hasContent:function(){return this.getTitle()},getPosition:function(){var el=this.$element[0]
return $.extend({},(typeof el.getBoundingClientRect=='function')?el.getBoundingClientRect():{width:el.offsetWidth,height:el.offsetHeight},this.$element.offset())},getTitle:function(){var title,$e=this.$element,o=this.options
title=$e.attr('data-original-title')||(typeof o.title=='function'?o.title.call($e[0]):o.title)
return title},tip:function(){return this.$tip=this.$tip||$(this.options.template)},arrow:function(){return this.$arrow=this.$arrow||this.tip().find(".tooltip-arrow")},validate:function(){if(!this.$element[0].parentNode){this.hide()
this.$element=null
this.options=null}},enable:function(){this.enabled=true},disable:function(){this.enabled=false},toggleEnabled:function(){this.enabled=!this.enabled},toggle:function(e){var self=e?$(e.currentTarget)[this.type](this._options).data(this.type):this
self.tip().hasClass('in')?self.hide():self.show()},destroy:function(){this.hide().$element.off('.'+this.type).removeData(this.type)}}
var old=$.fn.tooltip
$.fn.tooltip=function(option){return this.each(function(){var $this=$(this),data=$this.data('tooltip'),options=typeof option=='object'&&option
if(!data)$this.data('tooltip',(data=new Tooltip(this,options)))
if(typeof option=='string')data[option]()})}
$.fn.tooltip.Constructor=Tooltip
$.fn.tooltip.defaults={animation:true,placement:'top',selector:false,template:'<div class="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',trigger:'hover focus',title:'',delay:0,html:false,container:false}
$.fn.tooltip.noConflict=function(){$.fn.tooltip=old
return this}}(window.jQuery);!function($){"use strict";var Popover=function(element,options){this.init('popover',element,options)}
Popover.prototype=$.extend({},$.fn.tooltip.Constructor.prototype,{constructor:Popover,setContent:function(){var $tip=this.tip(),title=this.getTitle(),content=this.getContent()
$tip.find('.popover-title')[this.options.html?'html':'text'](title)
$tip.find('.popover-content')[this.options.html?'html':'text'](content)
$tip.removeClass('fade top bottom left right in')},hasContent:function(){return this.getTitle()||this.getContent()},getContent:function(){var content,$e=this.$element,o=this.options
content=(typeof o.content=='function'?o.content.call($e[0]):o.content)||$e.attr('data-content')
return content},tip:function(){if(!this.$tip){this.$tip=$(this.options.template)}
return this.$tip},destroy:function(){this.hide().$element.off('.'+this.type).removeData(this.type)}})
var old=$.fn.popover
$.fn.popover=function(option){return this.each(function(){var $this=$(this),data=$this.data('popover'),options=typeof option=='object'&&option
if(!data)$this.data('popover',(data=new Popover(this,options)))
if(typeof option=='string')data[option]()})}
$.fn.popover.Constructor=Popover
$.fn.popover.defaults=$.extend({},$.fn.tooltip.defaults,{placement:'right',trigger:'click',content:'',template:'<div class="popover"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'})
$.fn.popover.noConflict=function(){$.fn.popover=old
return this}}(window.jQuery);!function($){"use strict";function ScrollSpy(element,options){var process=$.proxy(this.process,this),$element=$(element).is('body')?$(window):$(element),href
this.options=$.extend({},$.fn.scrollspy.defaults,options)
this.$scrollElement=$element.on('scroll.scroll-spy.data-api',process)
this.selector=(this.options.target||((href=$(element).attr('href'))&&href.replace(/.*(?=#[^\s]+$)/,''))||'')+' .nav li > a'
this.$body=$('body')
this.refresh()
this.process()}
ScrollSpy.prototype={constructor:ScrollSpy,refresh:function(){var self=this,$targets
this.offsets=$([])
this.targets=$([])
$targets=this.$body.find(this.selector).map(function(){var $el=$(this),href=$el.data('target')||$el.attr('href'),$href=/^#\w/.test(href)&&$(href)
return($href&&$href.length&&[[$href.position().top+(!$.isWindow(self.$scrollElement.get(0))&&self.$scrollElement.scrollTop()),href]])||null}).sort(function(a,b){return a[0]-b[0]}).each(function(){self.offsets.push(this[0])
self.targets.push(this[1])})},process:function(){var scrollTop=this.$scrollElement.scrollTop()+this.options.offset,scrollHeight=this.$scrollElement[0].scrollHeight||this.$body[0].scrollHeight,maxScroll=scrollHeight-this.$scrollElement.height(),offsets=this.offsets,targets=this.targets,activeTarget=this.activeTarget,i
if(scrollTop>=maxScroll){return activeTarget!=(i=targets.last()[0])&&this.activate(i)}
for(i=offsets.length;i--;){activeTarget!=targets[i]&&scrollTop>=offsets[i]&&(!offsets[i+1]||scrollTop<=offsets[i+1])&&this.activate(targets[i])}},activate:function(target){var active,selector
this.activeTarget=target
$(this.selector).parent('.active').removeClass('active')
selector=this.selector
+'[data-target="'+target+'"],'
+this.selector+'[href="'+target+'"]'
active=$(selector).parent('li').addClass('active')
if(active.parent('.dropdown-menu').length){active=active.closest('li.dropdown').addClass('active')}
active.trigger('activate')}}
var old=$.fn.scrollspy
$.fn.scrollspy=function(option){return this.each(function(){var $this=$(this),data=$this.data('scrollspy'),options=typeof option=='object'&&option
if(!data)$this.data('scrollspy',(data=new ScrollSpy(this,options)))
if(typeof option=='string')data[option]()})}
$.fn.scrollspy.Constructor=ScrollSpy
$.fn.scrollspy.defaults={offset:10}
$.fn.scrollspy.noConflict=function(){$.fn.scrollspy=old
return this}
$(window).on('load',function(){$('[data-spy="scroll"]').each(function(){var $spy=$(this)
$spy.scrollspy($spy.data())})})}(window.jQuery);!function($){"use strict";var Tab=function(element){this.element=$(element)}
Tab.prototype={constructor:Tab,show:function(){var $this=this.element,$ul=$this.closest('ul:not(.dropdown-menu)'),selector=$this.attr('data-target'),previous,$target,e
if(!selector){selector=$this.attr('href')
selector=selector&&selector.replace(/.*(?=#[^\s]*$)/,'')}
if($this.parent('li').hasClass('active'))return
previous=$ul.find('.active:last a')[0]
e=$.Event('show',{relatedTarget:previous})
$this.trigger(e)
if(e.isDefaultPrevented())return
$target=$(selector)
this.activate($this.parent('li'),$ul)
this.activate($target,$target.parent(),function(){$this.trigger({type:'shown',relatedTarget:previous})})},activate:function(element,container,callback){var $active=container.find('> .active'),transition=callback&&$.support.transition&&$active.hasClass('fade')
function next(){$active.removeClass('active').find('> .dropdown-menu > .active').removeClass('active')
element.addClass('active')
if(transition){element[0].offsetWidth
element.addClass('in')}else{element.removeClass('fade')}
if(element.parent('.dropdown-menu')){element.closest('li.dropdown').addClass('active')}
callback&&callback()}
transition?$active.one($.support.transition.end,next):next()
$active.removeClass('in')}}
var old=$.fn.tab
$.fn.tab=function(option){return this.each(function(){var $this=$(this),data=$this.data('tab')
if(!data)$this.data('tab',(data=new Tab(this)))
if(typeof option=='string')data[option]()})}
$.fn.tab.Constructor=Tab
$.fn.tab.noConflict=function(){$.fn.tab=old
return this}
$(document).on('click.tab.data-api','[data-toggle="tab"], [data-toggle="pill"]',function(e){e.preventDefault()
$(this).tab('show')})}(window.jQuery);!function($){"use strict";var Typeahead=function(element,options){this.$element=$(element)
this.options=$.extend({},$.fn.typeahead.defaults,options)
this.matcher=this.options.matcher||this.matcher
this.sorter=this.options.sorter||this.sorter
this.highlighter=this.options.highlighter||this.highlighter
this.updater=this.options.updater||this.updater
this.source=this.options.source
this.$menu=$(this.options.menu)
this.shown=false
this.listen()}
Typeahead.prototype={constructor:Typeahead,select:function(){var val=this.$menu.find('.active').attr('data-value')
this.$element.val(this.updater(val)).change()
return this.hide()},updater:function(item){return item},show:function(){var pos=$.extend({},this.$element.position(),{height:this.$element[0].offsetHeight})
this.$menu.insertAfter(this.$element).css({top:pos.top+pos.height,left:pos.left}).show()
this.shown=true
return this},hide:function(){this.$menu.hide()
this.shown=false
return this},lookup:function(event){var items
this.query=this.$element.val()
if(!this.query||this.query.length<this.options.minLength){return this.shown?this.hide():this}
items=$.isFunction(this.source)?this.source(this.query,$.proxy(this.process,this)):this.source
return items?this.process(items):this},process:function(items){var that=this
items=$.grep(items,function(item){return that.matcher(item)})
items=this.sorter(items)
if(!items.length){return this.shown?this.hide():this}
return this.render(items.slice(0,this.options.items)).show()},matcher:function(item){return~item.toLowerCase().indexOf(this.query.toLowerCase())},sorter:function(items){var beginswith=[],caseSensitive=[],caseInsensitive=[],item
while(item=items.shift()){if(!item.toLowerCase().indexOf(this.query.toLowerCase()))beginswith.push(item)
else if(~item.indexOf(this.query))caseSensitive.push(item)
else caseInsensitive.push(item)}
return beginswith.concat(caseSensitive,caseInsensitive)},highlighter:function(item){var query=this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g,'\\$&')
return item.replace(new RegExp('('+query+')','ig'),function($1,match){return'<strong>'+match+'</strong>'})},render:function(items){var that=this
items=$(items).map(function(i,item){i=$(that.options.item).attr('data-value',item)
i.find('a').html(that.highlighter(item))
return i[0]})
items.first().addClass('active')
this.$menu.html(items)
return this},next:function(event){var active=this.$menu.find('.active').removeClass('active'),next=active.next()
if(!next.length){next=$(this.$menu.find('li')[0])}
next.addClass('active')},prev:function(event){var active=this.$menu.find('.active').removeClass('active'),prev=active.prev()
if(!prev.length){prev=this.$menu.find('li').last()}
prev.addClass('active')},listen:function(){this.$element.on('focus',$.proxy(this.focus,this)).on('blur',$.proxy(this.blur,this)).on('keypress',$.proxy(this.keypress,this)).on('keyup',$.proxy(this.keyup,this))
if(this.eventSupported('keydown')){this.$element.on('keydown',$.proxy(this.keydown,this))}
this.$menu.on('click',$.proxy(this.click,this)).on('mouseenter','li',$.proxy(this.mouseenter,this)).on('mouseleave','li',$.proxy(this.mouseleave,this))},eventSupported:function(eventName){var isSupported=eventName in this.$element
if(!isSupported){this.$element.setAttribute(eventName,'return;')
isSupported=typeof this.$element[eventName]==='function'}
return isSupported},move:function(e){if(!this.shown)return
switch(e.keyCode){case 9:case 13:case 27:e.preventDefault()
break
case 38:e.preventDefault()
this.prev()
break
case 40:e.preventDefault()
this.next()
break}
e.stopPropagation()},keydown:function(e){this.suppressKeyPressRepeat=~$.inArray(e.keyCode,[40,38,9,13,27])
this.move(e)},keypress:function(e){if(this.suppressKeyPressRepeat)return
this.move(e)},keyup:function(e){switch(e.keyCode){case 40:case 38:case 16:case 17:case 18:break
case 9:case 13:if(!this.shown)return
this.select()
break
case 27:if(!this.shown)return
this.hide()
break
default:this.lookup()}
e.stopPropagation()
e.preventDefault()},focus:function(e){this.focused=true},blur:function(e){this.focused=false
if(!this.mousedover&&this.shown)this.hide()},click:function(e){e.stopPropagation()
e.preventDefault()
this.select()
this.$element.focus()},mouseenter:function(e){this.mousedover=true
this.$menu.find('.active').removeClass('active')
$(e.currentTarget).addClass('active')},mouseleave:function(e){this.mousedover=false
if(!this.focused&&this.shown)this.hide()}}
var old=$.fn.typeahead
$.fn.typeahead=function(option){return this.each(function(){var $this=$(this),data=$this.data('typeahead'),options=typeof option=='object'&&option
if(!data)$this.data('typeahead',(data=new Typeahead(this,options)))
if(typeof option=='string')data[option]()})}
$.fn.typeahead.defaults={source:[],items:8,menu:'<ul class="typeahead dropdown-menu"></ul>',item:'<li><a href="#"></a></li>',minLength:1}
$.fn.typeahead.Constructor=Typeahead
$.fn.typeahead.noConflict=function(){$.fn.typeahead=old
return this}
$(document).on('focus.typeahead.data-api','[data-provide="typeahead"]',function(e){var $this=$(this)
if($this.data('typeahead'))return
$this.typeahead($this.data())})}(window.jQuery);!function($){"use strict";var Affix=function(element,options){this.options=$.extend({},$.fn.affix.defaults,options)
this.$window=$(window).on('scroll.affix.data-api',$.proxy(this.checkPosition,this)).on('click.affix.data-api',$.proxy(function(){setTimeout($.proxy(this.checkPosition,this),1)},this))
this.$element=$(element)
this.checkPosition()}
Affix.prototype.checkPosition=function(){if(!this.$element.is(':visible'))return
var scrollHeight=$(document).height(),scrollTop=this.$window.scrollTop(),position=this.$element.offset(),offset=this.options.offset,offsetBottom=offset.bottom,offsetTop=offset.top,reset='affix affix-top affix-bottom',affix
if(typeof offset!='object')offsetBottom=offsetTop=offset
if(typeof offsetTop=='function')offsetTop=offset.top()
if(typeof offsetBottom=='function')offsetBottom=offset.bottom()
affix=this.unpin!=null&&(scrollTop+this.unpin<=position.top)?false:offsetBottom!=null&&(position.top+this.$element.height()>=scrollHeight-offsetBottom)?'bottom':offsetTop!=null&&scrollTop<=offsetTop?'top':false
if(this.affixed===affix)return
this.affixed=affix
this.unpin=affix=='bottom'?position.top-scrollTop:null
this.$element.removeClass(reset).addClass('affix'+(affix?'-'+affix:''))}
var old=$.fn.affix
$.fn.affix=function(option){return this.each(function(){var $this=$(this),data=$this.data('affix'),options=typeof option=='object'&&option
if(!data)$this.data('affix',(data=new Affix(this,options)))
if(typeof option=='string')data[option]()})}
$.fn.affix.Constructor=Affix
$.fn.affix.defaults={offset:0}
$.fn.affix.noConflict=function(){$.fn.affix=old
return this}
$(window).on('load',function(){$('[data-spy="affix"]').each(function(){var $spy=$(this),data=$spy.data()
data.offset=data.offset||{}
data.offsetBottom&&(data.offset.bottom=data.offsetBottom)
data.offsetTop&&(data.offset.top=data.offsetTop)
$spy.affix(data)})})}(window.jQuery);


/*===============================
/bt_fashion30/plugins/system/t3/base/js/jquery.tap.min.js
================================================================================*/;
!function(r,t){"use strict";var d=t.support.touch=!!("ontouchstart"in window||window.DocumentTouch&&r instanceof DocumentTouch),e="._tap",i="tap",f=40,l=400,a="clientX clientY screenX screenY pageX pageY".split(" "),s=function(n,e){var c;return c=Array.prototype.indexOf?n.indexOf(e):t.inArray(e,n)},n={$el:null,x:0,y:0,count:0,cancel:!1,start:0},u=function(o,i){var n=i.originalEvent,c=t.Event(n),r=n.changedTouches?n.changedTouches[0]:n;c.type=o;for(var e=0,u=a.length;u>e;e++)c[a[e]]=r[a[e]];return c},g=function(t){var o=t.originalEvent,e=t.changedTouches?t.changedTouches[0]:o.changedTouches[0],i=Math.abs(e.pageX-n.x),a=Math.abs(e.pageY-n.y),r=Math.max(i,a);return Date.now()-n.start<l&&f>r&&!n.cancel&&1===n.count&&c.isTracking},c={isEnabled:!1,isTracking:!1,enable:function(){return this.isEnabled?this:(this.isEnabled=!0,t(r.body).on("touchstart"+e,this.onTouchStart).on("touchend"+e,this.onTouchEnd).on("touchcancel"+e,this.onTouchCancel),this)},disable:function(){return this.isEnabled?(this.isEnabled=!1,t(r.body).off("touchstart"+e,this.onTouchStart).off("touchend"+e,this.onTouchEnd).off("touchcancel"+e,this.onTouchCancel),this):this},onTouchStart:function(e){var o=e.originalEvent.touches;if(n.count=o.length,!c.isTracking){c.isTracking=!0;var i=o[0];n.cancel=!1,n.start=Date.now(),n.$el=t(e.target),n.x=i.pageX,n.y=i.pageY}},onTouchEnd:function(t){g(t)&&n.$el.trigger(u(i,t)),c.onTouchCancel(t)},onTouchCancel:function(){c.isTracking=!1,n.cancel=!0}};if(t.event.special[i]={setup:function(){c.enable()}},!d){var o=[],h=function(n){var e=n.originalEvent;if(!(n.isTrigger||s(o,e)>=0)){o.length>3&&o.splice(0,o.length-3),o.push(e);var c=u(i,n);t(n.target).trigger(c)}};t.event.special[i]={setup:function(){t(this).on("click"+e,h)},teardown:function(){t(this).off("click"+e,h)}}}}(document,jQuery);


/*===============================
/bt_fashion30/plugins/system/t3/base/js/off-canvas.js
================================================================================*/;
!function($){$(document).ready(function(){if($.support.t3transform!==false){var $btn=$('.btn-navbar[data-toggle="collapse"]'),$nav=null,$fixeditems=null;if(!$btn.length){return;}
$(document.documentElement).addClass('off-canvas-ready');$nav=$('<div class="t3-mainnav" />').appendTo($('<div id="off-canvas-nav"></div>').appendTo(document.body));var $navcollapse=$btn.parent().find($btn.data('target')+':first');if(!$navcollapse.length){$navcollapse=$($btn.data('target')+':first');}
$navcollapse.clone().appendTo($nav);$btn.click(function(e){if($(this).data('off-canvas')=='show'){hideNav();}else{showNav();}
return false;});var posNav=function(){var t=$(window).scrollTop();if(t<$nav.position().top)$nav.css('top',t);},bdHideNav=function(e){e.preventDefault();hideNav();return false;},showNav=function(){$('html').addClass('off-canvas');$nav.css('top',$(window).scrollTop());wpfix(1);setTimeout(function(){$btn.data('off-canvas','show');$('html').addClass('off-canvas-enabled');$(window).bind('scroll touchmove',posNav);$('#off-canvas-nav').bind('click',function(e){e.stopPropagation();});$('#off-canvas-nav a').bind('click',hideNav);$('body').bind('click',bdHideNav);},50);setTimeout(function(){wpfix(2);},1000);},hideNav=function(e){if(e&&e.type=='click'&&e.target.tagName.toUpperCase()=='A'&&$(e.target).parent('li').data('noclick')){return true;}
$(window).unbind('scroll touchmove',posNav);$('#off-canvas-nav').unbind('click');$('#off-canvas-nav a').unbind('click',hideNav);$('body').unbind('click',bdHideNav);$('html').removeClass('off-canvas-enabled');$btn.data('off-canvas','hide');setTimeout(function(){$('html').removeClass('off-canvas');},600);},wpfix=function(step){if($fixeditems==-1){return;}
if(!$fixeditems){$fixeditems=$('body').children().filter(function(){return $(this).css('position')==='fixed'});if(!$fixeditems.length){$fixeditems=-1;return;}}
if(step==1){$fixeditems.each(function(){var $this=$(this);var style=$this.attr('style'),opos=style&&style.match('position')?$this.css('position'):'',otop=style&&style.match('top')?$this.css('top'):'';$this.data('opos',opos).data('otop',otop);$this.css({'position':'absolute','top':($(window).scrollTop()+parseInt($this.css('top')))});});}else{$fixeditems.each(function(){$this=$(this);$this.css({'position':$this.data('opos'),'top':$this.data('otop')});});}};}});}(jQuery);


/*===============================
/bt_fashion30/plugins/system/t3/base/js/script.js
================================================================================*/;
!function($){$.support.t3transform=(function(){var style=document.createElement('div').style,vendors=['t','webkitT','MozT','msT','OT'],transform,i=0,l=vendors.length;for(;i<l;i++){transform=vendors[i]+'ransform';if(transform in style){return transform;}}
return false;})();var isTouch='ontouchstart'in window&&!(/hp-tablet/gi).test(navigator.appVersion);if(isTouch){$.fn.touchmenu=function(){if(!$(document).data('touchmenu')){$(document).data('touchmenu',1).data('touchitems',$()).on('click hidesub',function(){$(document).removeClass('hoverable').data('touchitems').data('noclick',0).removeClass('open');});if(navigator.userAgent.match(/(iPad|iPhone);.*CPU.*OS 6_\d/i)){$(document.body).children(':not(.nav)').on('click',function(){$(document).trigger('hidesub');});}}
return this.each(function(){var itemsel=$(this).has('.mega').length?'li.mega':'li.parent',jitems=$(this).find(itemsel),reset=function(){$(this).data('noclick',0);},onTouch=function(e){e.stopPropagation();$(document.body).addClass('hoverable');var jitem=$(this),val=!jitem.data('noclick');if(val){var jchild=jitem.children('.dropdown-menu'),hasopen=jitem.hasClass('open'),style=jchild.prop('style'),display=style?style['display']:'';if(jchild.css('display','none').css('display')=='none'){jchild.css('display',display);if(!hasopen){$(document).data('touchitems').removeClass('open');jitem.addClass('open').parentsUntil('.nav').filter(itemsel).addClass('open');val=jchild.css('display')!='none';}}else{val=0;}
jchild.css('display',display);}
jitems.data('noclick',0);jitem.data('noclick',val);if(val){$(this).data('rsid',setTimeout($.proxy(reset,this),500)).parent().parentsUntil('.nav').filter(itemsel).addClass('open');}},onClick=function(e){e.stopPropagation();if($(this).data('noclick')){e.preventDefault();jitems.removeClass('open');$(this).addClass('open').parentsUntil('.nav').filter(itemsel).addClass('open');}else{var href=$(this).children('a').attr('href');if(href){window.location.href=href;}}};jitems.on('mouseenter',onTouch).data('noclick',0);$(this).find('li').on('click',onClick);$(document).data('touchitems',$(document).data('touchitems').add(jitems));});};}
$('html').addClass(isTouch?'touch':'no-touch');$(document).ready(function(){(function(){if(window.MooTools&&window.MooTools.More&&Element&&Element.implement){var mthide=Element.prototype.hide,mtshow=Element.prototype.show,mtslide=Element.prototype.slide;Element.implement({show:function(args){if(arguments.callee&&arguments.callee.caller&&arguments.callee.caller.toString().indexOf('isPropagationStopped')!==-1){return this;}
return $.isFunction(mtshow)&&mtshow.apply(this,args);},hide:function(){if(arguments.callee&&arguments.callee.caller&&arguments.callee.caller.toString().indexOf('isPropagationStopped')!==-1){return this;}
return $.isFunction(mthide)&&mthide.apply(this,arguments);},slide:function(args){if(arguments.callee&&arguments.callee.caller&&arguments.callee.caller.toString().indexOf('isPropagationStopped')!==-1){return this;}
return $.isFunction(mtslide)&&mtslide.apply(this,args);}})}})();if(isTouch){$('ul.nav').has('.dropdown-menu').touchmenu();}else{$(document.body).on('click','[data-toggle="dropdown"]',function(){if($(this).parent().hasClass('open')&&this.href&&this.href!='#'||($('.btn-navbar').is(':visible')&&$(this).closest('.always-show').length)){window.location.href=this.href;}});}
$.fn.tooltip.Constructor&&$.fn.tooltip.Constructor.DEFAULTS&&($.fn.tooltip.Constructor.DEFAULTS.html=true);$.fn.popover.Constructor&&$.fn.popover.Constructor.DEFAULTS&&($.fn.popover.Constructor.DEFAULTS.html=true);$.fn.tooltip.defaults&&($.fn.tooltip.defaults.html=true);$.fn.popover.defaults&&($.fn.popover.defaults.html=true);});$(window).load(function(){if(!$(document.documentElement).hasClass('off-canvas-ready')&&($('.navbar-collapse-fixed-top').length||$('.navbar-collapse-fixed-bottom').length)){var btn=$('.btn-navbar[data-toggle="collapse"]');if(!btn.length){return;}
if(btn.data('target')){var nav=$(btn.data('target'));if(!nav.length){return;}
var fixedtop=nav.closest('.navbar-collapse-fixed-top').length;btn.on('click',function(){var wheight=(window.innerHeight||$(window).height());if(!$.support.transition){nav.parent().css('height',!btn.hasClass('collapsed')&&btn.data('t3-clicked')?'':wheight);btn.data('t3-clicked',1);}
nav.addClass('animate').css('max-height',wheight-
(fixedtop?(parseFloat(nav.css('top'))||0):(parseFloat(nav.css('bottom'))||0)));});nav.on('shown hidden',function(){nav.removeClass('animate');});}}});}(jQuery);


/*===============================
/bt_fashion30/plugins/system/t3/base/js/menu.js
================================================================================*/;
!function($){var has_touch='ontouchstart'in window;if(!has_touch){$(document).ready(function($){var mm_duration=$('.t3-megamenu').data('duration')||0;if(mm_duration){$('<style type="text/css">'+'.t3-megamenu.animate .animating > .mega-dropdown-menu,'+'.t3-megamenu.animate.slide .animating > .mega-dropdown-menu > div {'+'transition-duration: '+mm_duration+'ms !important;'+'-webkit-transition-duration: '+mm_duration+'ms !important;'+'}'+'</style>').appendTo('head');}
var mm_timeout=mm_duration?100+mm_duration:500,mm_rtl=$('html').attr('dir')=='rtl',sb_width=(function(){var parent=$('<div style="width:50px;height:50px;overflow:auto"><div/></div>').appendTo('body'),child=parent.children(),width=child.innerWidth()-child.height(100).innerWidth();parent.remove();return width;})();if(!$.support.transition){$('.t3-megamenu').removeClass('animate');mm_timeout=100;}
function position_menu(item){var sub=item.children('.mega-dropdown-menu'),is_show=sub.is(':visible');if(!is_show){sub.show();}
var offset=item.offset(),width=item.outerWidth(),screen_width=$(window).width()-sb_width,sub_width=sub.outerWidth(),level=item.data('level');if(!is_show){sub.css('display','');}
sub.css({left:'',right:''});if(level==1){var align=item.data('alignsub'),align_offset=0,align_delta=0,align_trans=0;if(align=='justify'){return;}
if(!align){align='left';}
if(align=='center'){align_offset=offset.left+(width/2);if(!$.support.t3transform){align_trans=-sub_width/2;sub.css(mm_rtl?'right':'left',align_trans+width/2);}}else{align_offset=offset.left+((align=='left'&&mm_rtl||align=='right'&&!mm_rtl)?width:0);}
if(mm_rtl){if(align=='right'){if(align_offset+sub_width>screen_width){align_delta=screen_width-align_offset-sub_width;sub.css('left',align_delta);if(screen_width<sub_width){sub.css('left',align_delta+sub_width-screen_width);}}}else{if(align_offset<(align=='center'?sub_width/2:sub_width)){align_delta=align_offset-(align=='center'?sub_width/2:sub_width);sub.css('right',align_delta+align_trans);}
if(align_offset+(align=='center'?sub_width/2:0)-align_delta>screen_width){sub.css('right',align_offset+(align=='center'?(sub_width+width)/2:0)+align_trans-screen_width);}}}else{if(align=='right'){if(align_offset<sub_width){align_delta=align_offset-sub_width;sub.css('right',align_delta);if(sub_width>screen_width){sub.css('right',sub_width-screen_width+align_delta);}}}else{if(align_offset+(align=='center'?sub_width/2:sub_width)>screen_width){align_delta=screen_width-align_offset-(align=='center'?sub_width/2:sub_width);sub.css('left',align_delta+align_trans);}
if(align_offset-(align=='center'?sub_width/2:0)+align_delta<0){sub.css('left',(align=='center'?(sub_width+width)/2:0)+align_trans-align_offset);}}}}else{if(mm_rtl){if(item.closest('.mega-dropdown-menu').parent().hasClass('mega-align-right')){item.removeClass('mega-align-left').addClass('mega-align-right');if(offset.left+width+sub_width>screen_width){item.removeClass('mega-align-right');if(offset.left-sub_width<0){sub.css('right',offset.left+width-sub_width);}}}else{if(offset.left-sub_width<0){item.removeClass('mega-align-left').addClass('mega-align-right');if(offset.left+width+sub_width>screen_width){sub.css('left',screen_width-offset.left-sub_width);}}}}else{if(item.closest('.mega-dropdown-menu').parent().hasClass('mega-align-right')){item.removeClass('mega-align-left').addClass('mega-align-right');if(offset.left-sub_width<0){item.removeClass('mega-align-right');if(offset.left+width+sub_width>screen_width){sub.css('left',screen_width-offset.left-sub_width);}}}else{if(offset.left+width+sub_width>screen_width){item.removeClass('mega-align-left').addClass('mega-align-right');if(offset.left-sub_width<0){sub.css('right',offset.left+width-sub_width);}}}}}}
$('.nav').has('.dropdown-menu').children('li').add('li.mega').hover(function(event){var $this=$(this);if($this.hasClass('mega')){position_menu($this);setTimeout(function(){$this.addClass('animating')},10);clearTimeout($this.data('animatingTimeout'));$this.data('animatingTimeout',setTimeout(function(){$this.removeClass('animating')},mm_timeout+50));clearTimeout($this.data('hoverTimeout'));$this.data('hoverTimeout',setTimeout(function(){$this.addClass('open')},100));}else{clearTimeout($this.data('hoverTimeout'));$this.data('hoverTimeout',setTimeout(function(){$this.addClass('open')},100));}},function(event){var $this=$(this);if($this.hasClass('mega')){$this.addClass('animating');clearTimeout($this.data('animatingTimeout'));$this.data('animatingTimeout',setTimeout(function(){$this.removeClass('animating')},mm_timeout));clearTimeout($this.data('hoverTimeout'));$this.data('hoverTimeout',setTimeout(function(){$this.removeClass('open')},100));}else{clearTimeout($this.data('hoverTimeout'));$this.data('hoverTimeout',setTimeout(function(){$this.removeClass('open')},100));}});});}}(jQuery);


/*===============================
/bt_fashion30/plugins/system/t3/base/js/responsive.js
================================================================================*/;
jQuery(document).ready(function($){var current_layout='';var responsive_elements=$('[class*="span"], .t3respon');responsive_elements.each(function(){var $this=$(this);$this.data();$this.removeAttr('data-default data-wide data-normal data-xtablet data-tablet data-mobile');if(!$this.data('default'))$this.data('default',$this.attr('class'));});var scrollbarWidth=(function(){var div=$('<div style="width:50px;height:50px;overflow:hidden;position:absolute;top:-200px;left:-200px;"><div style="height:100px;"></div>');$('body').append(div);var w1=$('div',div).innerWidth();div.css('overflow-y','scroll');var w2=$('div',div).innerWidth();$(div).remove();return(w1-w2);})();var update_layout_classes=function(new_layout){if(new_layout==current_layout)return;responsive_elements.each(function(){var $this=$(this);if(!$this.data('default'))return;if(!$this.data(new_layout)&&(!current_layout||!$this.data(current_layout)))return;if($this.data(current_layout))$this.removeClass($this.data(current_layout));else $this.removeClass($this.data('default'));if($this.data(new_layout))$this.addClass($this.data(new_layout));else $this.addClass($this.data('default'));});current_layout=new_layout;};var detect_layout=function(){var devices={wide:1200,normal:980,xtablet:768,tablet:600,mobile:0};var width=$(window).width()+scrollbarWidth;for(var device in devices){if(width>=devices[device])return device;}}
update_layout_classes(detect_layout());$(window).resize(function(){if($.data(window,'detect-layout-timeout')){clearTimeout($.data(window,'detect-layout-timeout'));}
$.data(window,'detect-layout-timeout',setTimeout(function(){update_layout_classes(detect_layout());},200))})});


/*===============================
http://10.0.0.72/bt_fashion30/modules/mod_bt_sociallogin/tmpl/js/jquery.jscrollpane.min.js
================================================================================*/;
/*! Copyright (c) 2011 Brandon Aaron (http://brandonaaron.net)
 * Licensed under the MIT License (LICENSE.txt).
 *
 * Thanks to: http://adomas.org/javascript-mouse-wheel/ for some pointers.
 * Thanks to: Mathias Bank(http://www.mathias-bank.de) for a scope bug fix.
 * Thanks to: Seamus Leahy for adding deltaX and deltaY
 *
 * Version: 3.0.6
 * 
 * Requires: 1.2.2+
 */

(function($) {

var types = ['DOMMouseScroll', 'mousewheel'];

if ($.event.fixHooks) {
    for ( var i=types.length; i; ) {
        $.event.fixHooks[ types[--i] ] = $.event.mouseHooks;
    }
}

$.event.special.mousewheel = {
    setup: function() {
        if ( this.addEventListener ) {
            for ( var i=types.length; i; ) {
                this.addEventListener( types[--i], handler, false );
            }
        } else {
            this.onmousewheel = handler;
        }
    },
    
    teardown: function() {
        if ( this.removeEventListener ) {
            for ( var i=types.length; i; ) {
                this.removeEventListener( types[--i], handler, false );
            }
        } else {
            this.onmousewheel = null;
        }
    }
};

$.fn.extend({
    mousewheel: function(fn) {
        return fn ? this.bind("mousewheel", fn) : this.trigger("mousewheel");
    },
    
    unmousewheel: function(fn) {
        return this.unbind("mousewheel", fn);
    }
});


function handler(event) {
    var orgEvent = event || window.event, args = [].slice.call( arguments, 1 ), delta = 0, returnValue = true, deltaX = 0, deltaY = 0;
    event = $.event.fix(orgEvent);
    event.type = "mousewheel";
    
    // Old school scrollwheel delta
    if ( orgEvent.wheelDelta ) { delta = orgEvent.wheelDelta/120; }
    if ( orgEvent.detail     ) { delta = -orgEvent.detail/3; }
    
    // New school multidimensional scroll (touchpads) deltas
    deltaY = delta;
    
    // Gecko
    if ( orgEvent.axis !== undefined && orgEvent.axis === orgEvent.HORIZONTAL_AXIS ) {
        deltaY = 0;
        deltaX = -1*delta;
    }
    
    // Webkit
    if ( orgEvent.wheelDeltaY !== undefined ) { deltaY = orgEvent.wheelDeltaY/120; }
    if ( orgEvent.wheelDeltaX !== undefined ) { deltaX = -1*orgEvent.wheelDeltaX/120; }
    
    // Add event and delta to the front of the arguments
    args.unshift(event, delta, deltaX, deltaY);
    
    return ($.event.dispatch || $.event.handle).apply(this, args);
}

})(jQuery);



/*
 * jScrollPane - v2.0.0beta12 - 2012-09-27
 * http://jscrollpane.kelvinluck.com/
 *
 * Copyright (c) 2010 Kelvin Luck
 * Dual licensed under the MIT or GPL licenses.
 */
(function(b,a,c){b.fn.jScrollPane=function(e){function d(D,O){var ay,Q=this,Y,aj,v,al,T,Z,y,q,az,aE,au,i,I,h,j,aa,U,ap,X,t,A,aq,af,am,G,l,at,ax,x,av,aH,f,L,ai=true,P=true,aG=false,k=false,ao=D.clone(false,false).empty(),ac=b.fn.mwheelIntent?"mwheelIntent.jsp":"mousewheel.jsp";aH=D.css("paddingTop")+" "+D.css("paddingRight")+" "+D.css("paddingBottom")+" "+D.css("paddingLeft");f=(parseInt(D.css("paddingLeft"),10)||0)+(parseInt(D.css("paddingRight"),10)||0);function ar(aQ){var aL,aN,aM,aJ,aI,aP,aO=false,aK=false;ay=aQ;if(Y===c){aI=D.scrollTop();aP=D.scrollLeft();D.css({overflow:"hidden",padding:0});aj=D.innerWidth()+f;v=D.innerHeight();D.width(aj);Y=b('<div class="jspPane" />').css("padding",aH).append(D.children());al=b('<div class="jspContainer" />').css({width:aj+"px",height:v+"px"}).append(Y).appendTo(D)}else{D.css("width","");aO=ay.stickToBottom&&K();aK=ay.stickToRight&&B();aJ=D.innerWidth()+f!=aj||D.outerHeight()!=v;if(aJ){aj=D.innerWidth()+f;v=D.innerHeight();al.css({width:aj+"px",height:v+"px"})}if(!aJ&&L==T&&Y.outerHeight()==Z){D.width(aj);return}L=T;Y.css("width","");D.width(aj);al.find(">.jspVerticalBar,>.jspHorizontalBar").remove().end()}Y.css("overflow","auto");if(aQ.contentWidth){T=aQ.contentWidth}else{T=Y[0].scrollWidth}Z=Y[0].scrollHeight;Y.css("overflow","");y=T/aj;q=Z/v;az=q>1;aE=y>1;if(!(aE||az)){D.removeClass("jspScrollable");Y.css({top:0,width:al.width()-f});n();E();R();w()}else{D.addClass("jspScrollable");aL=ay.maintainPosition&&(I||aa);if(aL){aN=aC();aM=aA()}aF();z();F();if(aL){N(aK?(T-aj):aN,false);M(aO?(Z-v):aM,false)}J();ag();an();if(ay.enableKeyboardNavigation){S()}if(ay.clickOnTrack){p()}C();if(ay.hijackInternalLinks){m()}}if(ay.autoReinitialise&&!av){av=setInterval(function(){ar(ay)},ay.autoReinitialiseDelay)}else{if(!ay.autoReinitialise&&av){clearInterval(av)}}aI&&D.scrollTop(0)&&M(aI,false);aP&&D.scrollLeft(0)&&N(aP,false);D.trigger("jsp-initialised",[aE||az])}function aF(){if(az){al.append(b('<div class="jspVerticalBar" />').append(b('<div class="jspCap jspCapTop" />'),b('<div class="jspTrack" />').append(b('<div class="jspDrag" />').append(b('<div class="jspDragTop" />'),b('<div class="jspDragBottom" />'))),b('<div class="jspCap jspCapBottom" />')));U=al.find(">.jspVerticalBar");ap=U.find(">.jspTrack");au=ap.find(">.jspDrag");if(ay.showArrows){aq=b('<a class="jspArrow jspArrowUp" />').bind("mousedown.jsp",aD(0,-1)).bind("click.jsp",aB);af=b('<a class="jspArrow jspArrowDown" />').bind("mousedown.jsp",aD(0,1)).bind("click.jsp",aB);if(ay.arrowScrollOnHover){aq.bind("mouseover.jsp",aD(0,-1,aq));af.bind("mouseover.jsp",aD(0,1,af))}ak(ap,ay.verticalArrowPositions,aq,af)}t=v;al.find(">.jspVerticalBar>.jspCap:visible,>.jspVerticalBar>.jspArrow").each(function(){t-=b(this).outerHeight()});au.hover(function(){au.addClass("jspHover")},function(){au.removeClass("jspHover")}).bind("mousedown.jsp",function(aI){b("html").bind("dragstart.jsp selectstart.jsp",aB);au.addClass("jspActive");var s=aI.pageY-au.position().top;b("html").bind("mousemove.jsp",function(aJ){V(aJ.pageY-s,false)}).bind("mouseup.jsp mouseleave.jsp",aw);return false});o()}}function o(){ap.height(t+"px");I=0;X=ay.verticalGutter+ap.outerWidth();Y.width(aj-X-f);try{if(U.position().left===0){Y.css("margin-left",X+"px")}}catch(s){}}function z(){if(aE){al.append(b('<div class="jspHorizontalBar" />').append(b('<div class="jspCap jspCapLeft" />'),b('<div class="jspTrack" />').append(b('<div class="jspDrag" />').append(b('<div class="jspDragLeft" />'),b('<div class="jspDragRight" />'))),b('<div class="jspCap jspCapRight" />')));am=al.find(">.jspHorizontalBar");G=am.find(">.jspTrack");h=G.find(">.jspDrag");if(ay.showArrows){ax=b('<a class="jspArrow jspArrowLeft" />').bind("mousedown.jsp",aD(-1,0)).bind("click.jsp",aB);x=b('<a class="jspArrow jspArrowRight" />').bind("mousedown.jsp",aD(1,0)).bind("click.jsp",aB);
if(ay.arrowScrollOnHover){ax.bind("mouseover.jsp",aD(-1,0,ax));x.bind("mouseover.jsp",aD(1,0,x))}ak(G,ay.horizontalArrowPositions,ax,x)}h.hover(function(){h.addClass("jspHover")},function(){h.removeClass("jspHover")}).bind("mousedown.jsp",function(aI){b("html").bind("dragstart.jsp selectstart.jsp",aB);h.addClass("jspActive");var s=aI.pageX-h.position().left;b("html").bind("mousemove.jsp",function(aJ){W(aJ.pageX-s,false)}).bind("mouseup.jsp mouseleave.jsp",aw);return false});l=al.innerWidth();ah()}}function ah(){al.find(">.jspHorizontalBar>.jspCap:visible,>.jspHorizontalBar>.jspArrow").each(function(){l-=b(this).outerWidth()});G.width(l+"px");aa=0}function F(){if(aE&&az){var aI=G.outerHeight(),s=ap.outerWidth();t-=aI;b(am).find(">.jspCap:visible,>.jspArrow").each(function(){l+=b(this).outerWidth()});l-=s;v-=s;aj-=aI;G.parent().append(b('<div class="jspCorner" />').css("width",aI+"px"));o();ah()}if(aE){Y.width((al.outerWidth()-f)+"px")}Z=Y.outerHeight();q=Z/v;if(aE){at=Math.ceil(1/y*l);if(at>ay.horizontalDragMaxWidth){at=ay.horizontalDragMaxWidth}else{if(at<ay.horizontalDragMinWidth){at=ay.horizontalDragMinWidth}}h.width(at+"px");j=l-at;ae(aa)}if(az){A=Math.ceil(1/q*t);if(A>ay.verticalDragMaxHeight){A=ay.verticalDragMaxHeight}else{if(A<ay.verticalDragMinHeight){A=ay.verticalDragMinHeight}}au.height(A+"px");i=t-A;ad(I)}}function ak(aJ,aL,aI,s){var aN="before",aK="after",aM;if(aL=="os"){aL=/Mac/.test(navigator.platform)?"after":"split"}if(aL==aN){aK=aL}else{if(aL==aK){aN=aL;aM=aI;aI=s;s=aM}}aJ[aN](aI)[aK](s)}function aD(aI,s,aJ){return function(){H(aI,s,this,aJ);this.blur();return false}}function H(aL,aK,aO,aN){aO=b(aO).addClass("jspActive");var aM,aJ,aI=true,s=function(){if(aL!==0){Q.scrollByX(aL*ay.arrowButtonSpeed)}if(aK!==0){Q.scrollByY(aK*ay.arrowButtonSpeed)}aJ=setTimeout(s,aI?ay.initialDelay:ay.arrowRepeatFreq);aI=false};s();aM=aN?"mouseout.jsp":"mouseup.jsp";aN=aN||b("html");aN.bind(aM,function(){aO.removeClass("jspActive");aJ&&clearTimeout(aJ);aJ=null;aN.unbind(aM)})}function p(){w();if(az){ap.bind("mousedown.jsp",function(aN){if(aN.originalTarget===c||aN.originalTarget==aN.currentTarget){var aL=b(this),aO=aL.offset(),aM=aN.pageY-aO.top-I,aJ,aI=true,s=function(){var aR=aL.offset(),aS=aN.pageY-aR.top-A/2,aP=v*ay.scrollPagePercent,aQ=i*aP/(Z-v);if(aM<0){if(I-aQ>aS){Q.scrollByY(-aP)}else{V(aS)}}else{if(aM>0){if(I+aQ<aS){Q.scrollByY(aP)}else{V(aS)}}else{aK();return}}aJ=setTimeout(s,aI?ay.initialDelay:ay.trackClickRepeatFreq);aI=false},aK=function(){aJ&&clearTimeout(aJ);aJ=null;b(document).unbind("mouseup.jsp",aK)};s();b(document).bind("mouseup.jsp",aK);return false}})}if(aE){G.bind("mousedown.jsp",function(aN){if(aN.originalTarget===c||aN.originalTarget==aN.currentTarget){var aL=b(this),aO=aL.offset(),aM=aN.pageX-aO.left-aa,aJ,aI=true,s=function(){var aR=aL.offset(),aS=aN.pageX-aR.left-at/2,aP=aj*ay.scrollPagePercent,aQ=j*aP/(T-aj);if(aM<0){if(aa-aQ>aS){Q.scrollByX(-aP)}else{W(aS)}}else{if(aM>0){if(aa+aQ<aS){Q.scrollByX(aP)}else{W(aS)}}else{aK();return}}aJ=setTimeout(s,aI?ay.initialDelay:ay.trackClickRepeatFreq);aI=false},aK=function(){aJ&&clearTimeout(aJ);aJ=null;b(document).unbind("mouseup.jsp",aK)};s();b(document).bind("mouseup.jsp",aK);return false}})}}function w(){if(G){G.unbind("mousedown.jsp")}if(ap){ap.unbind("mousedown.jsp")}}function aw(){b("html").unbind("dragstart.jsp selectstart.jsp mousemove.jsp mouseup.jsp mouseleave.jsp");if(au){au.removeClass("jspActive")}if(h){h.removeClass("jspActive")}}function V(s,aI){if(!az){return}if(s<0){s=0}else{if(s>i){s=i}}if(aI===c){aI=ay.animateScroll}if(aI){Q.animate(au,"top",s,ad)}else{au.css("top",s);ad(s)}}function ad(aI){if(aI===c){aI=au.position().top}al.scrollTop(0);I=aI;var aL=I===0,aJ=I==i,aK=aI/i,s=-aK*(Z-v);if(ai!=aL||aG!=aJ){ai=aL;aG=aJ;D.trigger("jsp-arrow-change",[ai,aG,P,k])}u(aL,aJ);Y.css("top",s);D.trigger("jsp-scroll-y",[-s,aL,aJ]).trigger("scroll")}function W(aI,s){if(!aE){return}if(aI<0){aI=0}else{if(aI>j){aI=j}}if(s===c){s=ay.animateScroll}if(s){Q.animate(h,"left",aI,ae)
}else{h.css("left",aI);ae(aI)}}function ae(aI){if(aI===c){aI=h.position().left}al.scrollTop(0);aa=aI;var aL=aa===0,aK=aa==j,aJ=aI/j,s=-aJ*(T-aj);if(P!=aL||k!=aK){P=aL;k=aK;D.trigger("jsp-arrow-change",[ai,aG,P,k])}r(aL,aK);Y.css("left",s);D.trigger("jsp-scroll-x",[-s,aL,aK]).trigger("scroll")}function u(aI,s){if(ay.showArrows){aq[aI?"addClass":"removeClass"]("jspDisabled");af[s?"addClass":"removeClass"]("jspDisabled")}}function r(aI,s){if(ay.showArrows){ax[aI?"addClass":"removeClass"]("jspDisabled");x[s?"addClass":"removeClass"]("jspDisabled")}}function M(s,aI){var aJ=s/(Z-v);V(aJ*i,aI)}function N(aI,s){var aJ=aI/(T-aj);W(aJ*j,s)}function ab(aV,aQ,aJ){var aN,aK,aL,s=0,aU=0,aI,aP,aO,aS,aR,aT;try{aN=b(aV)}catch(aM){return}aK=aN.outerHeight();aL=aN.outerWidth();al.scrollTop(0);al.scrollLeft(0);while(!aN.is(".jspPane")){s+=aN.position().top;aU+=aN.position().left;aN=aN.offsetParent();if(/^body|html$/i.test(aN[0].nodeName)){return}}aI=aA();aO=aI+v;if(s<aI||aQ){aR=s-ay.verticalGutter}else{if(s+aK>aO){aR=s-v+aK+ay.verticalGutter}}if(aR){M(aR,aJ)}aP=aC();aS=aP+aj;if(aU<aP||aQ){aT=aU-ay.horizontalGutter}else{if(aU+aL>aS){aT=aU-aj+aL+ay.horizontalGutter}}if(aT){N(aT,aJ)}}function aC(){return -Y.position().left}function aA(){return -Y.position().top}function K(){var s=Z-v;return(s>20)&&(s-aA()<10)}function B(){var s=T-aj;return(s>20)&&(s-aC()<10)}function ag(){al.unbind(ac).bind(ac,function(aL,aM,aK,aI){var aJ=aa,s=I;Q.scrollBy(aK*ay.mouseWheelSpeed,-aI*ay.mouseWheelSpeed,false);return aJ==aa&&s==I})}function n(){al.unbind(ac)}function aB(){return false}function J(){Y.find(":input,a").unbind("focus.jsp").bind("focus.jsp",function(s){ab(s.target,false)})}function E(){Y.find(":input,a").unbind("focus.jsp")}function S(){var s,aI,aK=[];aE&&aK.push(am[0]);az&&aK.push(U[0]);Y.focus(function(){D.focus()});D.attr("tabindex",0).unbind("keydown.jsp keypress.jsp").bind("keydown.jsp",function(aN){if(aN.target!==this&&!(aK.length&&b(aN.target).closest(aK).length)){return}var aM=aa,aL=I;switch(aN.keyCode){case 40:case 38:case 34:case 32:case 33:case 39:case 37:s=aN.keyCode;aJ();break;case 35:M(Z-v);s=null;break;case 36:M(0);s=null;break}aI=aN.keyCode==s&&aM!=aa||aL!=I;return !aI}).bind("keypress.jsp",function(aL){if(aL.keyCode==s){aJ()}return !aI});if(ay.hideFocus){D.css("outline","none");if("hideFocus" in al[0]){D.attr("hideFocus",true)}}else{D.css("outline","");if("hideFocus" in al[0]){D.attr("hideFocus",false)}}function aJ(){var aM=aa,aL=I;switch(s){case 40:Q.scrollByY(ay.keyboardSpeed,false);break;case 38:Q.scrollByY(-ay.keyboardSpeed,false);break;case 34:case 32:Q.scrollByY(v*ay.scrollPagePercent,false);break;case 33:Q.scrollByY(-v*ay.scrollPagePercent,false);break;case 39:Q.scrollByX(ay.keyboardSpeed,false);break;case 37:Q.scrollByX(-ay.keyboardSpeed,false);break}aI=aM!=aa||aL!=I;return aI}}function R(){D.attr("tabindex","-1").removeAttr("tabindex").unbind("keydown.jsp keypress.jsp")}function C(){if(location.hash&&location.hash.length>1){var aK,aI,aJ=escape(location.hash.substr(1));try{aK=b("#"+aJ+', a[name="'+aJ+'"]')}catch(s){return}if(aK.length&&Y.find(aJ)){if(al.scrollTop()===0){aI=setInterval(function(){if(al.scrollTop()>0){ab(aK,true);b(document).scrollTop(al.position().top);clearInterval(aI)}},50)}else{ab(aK,true);b(document).scrollTop(al.position().top)}}}}function m(){if(b(document.body).data("jspHijack")){return}b(document.body).data("jspHijack",true);b(document.body).delegate("a[href*=#]","click",function(s){var aI=this.href.substr(0,this.href.indexOf("#")),aK=location.href,aO,aP,aJ,aM,aL,aN;if(location.href.indexOf("#")!==-1){aK=location.href.substr(0,location.href.indexOf("#"))}if(aI!==aK){return}aO=escape(this.href.substr(this.href.indexOf("#")+1));aP;try{aP=b("#"+aO+', a[name="'+aO+'"]')}catch(aQ){return}if(!aP.length){return}aJ=aP.closest(".jspScrollable");aM=aJ.data("jsp");aM.scrollToElement(aP,true);if(aJ[0].scrollIntoView){aL=b(a).scrollTop();aN=aP.offset().top;if(aN<aL||aN>aL+b(a).height()){aJ[0].scrollIntoView()}}s.preventDefault()
})}function an(){var aJ,aI,aL,aK,aM,s=false;al.unbind("touchstart.jsp touchmove.jsp touchend.jsp click.jsp-touchclick").bind("touchstart.jsp",function(aN){var aO=aN.originalEvent.touches[0];aJ=aC();aI=aA();aL=aO.pageX;aK=aO.pageY;aM=false;s=true}).bind("touchmove.jsp",function(aQ){if(!s){return}var aP=aQ.originalEvent.touches[0],aO=aa,aN=I;Q.scrollTo(aJ+aL-aP.pageX,aI+aK-aP.pageY);aM=aM||Math.abs(aL-aP.pageX)>5||Math.abs(aK-aP.pageY)>5;return aO==aa&&aN==I}).bind("touchend.jsp",function(aN){s=false}).bind("click.jsp-touchclick",function(aN){if(aM){aM=false;return false}})}function g(){var s=aA(),aI=aC();D.removeClass("jspScrollable").unbind(".jsp");D.replaceWith(ao.append(Y.children()));ao.scrollTop(s);ao.scrollLeft(aI);if(av){clearInterval(av)}}b.extend(Q,{reinitialise:function(aI){aI=b.extend({},ay,aI);ar(aI)},scrollToElement:function(aJ,aI,s){ab(aJ,aI,s)},scrollTo:function(aJ,s,aI){N(aJ,aI);M(s,aI)},scrollToX:function(aI,s){N(aI,s)},scrollToY:function(s,aI){M(s,aI)},scrollToPercentX:function(aI,s){N(aI*(T-aj),s)},scrollToPercentY:function(aI,s){M(aI*(Z-v),s)},scrollBy:function(aI,s,aJ){Q.scrollByX(aI,aJ);Q.scrollByY(s,aJ)},scrollByX:function(s,aJ){var aI=aC()+Math[s<0?"floor":"ceil"](s),aK=aI/(T-aj);W(aK*j,aJ)},scrollByY:function(s,aJ){var aI=aA()+Math[s<0?"floor":"ceil"](s),aK=aI/(Z-v);V(aK*i,aJ)},positionDragX:function(s,aI){W(s,aI)},positionDragY:function(aI,s){V(aI,s)},animate:function(aI,aL,s,aK){var aJ={};aJ[aL]=s;aI.animate(aJ,{duration:ay.animateDuration,easing:ay.animateEase,queue:false,step:aK})},getContentPositionX:function(){return aC()},getContentPositionY:function(){return aA()},getContentWidth:function(){return T},getContentHeight:function(){return Z},getPercentScrolledX:function(){return aC()/(T-aj)},getPercentScrolledY:function(){return aA()/(Z-v)},getIsScrollableH:function(){return aE},getIsScrollableV:function(){return az},getContentPane:function(){return Y},scrollToBottom:function(s){V(i,s)},hijackInternalLinks:b.noop,destroy:function(){g()}});ar(O)}e=b.extend({},b.fn.jScrollPane.defaults,e);b.each(["mouseWheelSpeed","arrowButtonSpeed","trackClickSpeed","keyboardSpeed"],function(){e[this]=e[this]||e.speed});return this.each(function(){var f=b(this),g=f.data("jsp");if(g){g.reinitialise(e)}else{b("script",f).filter('[type="text/javascript"],:not([type])').remove();g=new d(f,e);f.data("jsp",g)}})};b.fn.jScrollPane.defaults={showArrows:false,maintainPosition:true,stickToBottom:false,stickToRight:false,clickOnTrack:true,autoReinitialise:false,autoReinitialiseDelay:500,verticalDragMinHeight:0,verticalDragMaxHeight:99999,horizontalDragMinWidth:0,horizontalDragMaxWidth:99999,contentWidth:c,animateScroll:false,animateDuration:300,animateEase:"linear",hijackInternalLinks:false,verticalGutter:4,horizontalGutter:4,mouseWheelSpeed:0,arrowButtonSpeed:0,arrowRepeatFreq:50,arrowScrollOnHover:false,trackClickSpeed:0,trackClickRepeatFreq:70,verticalArrowPositions:"split",horizontalArrowPositions:"split",enableKeyboardNavigation:true,hideFocus:false,keyboardSpeed:0,initialDelay:300,speed:30,scrollPagePercent:0.8}})(jQuery,this);


/*===============================
http://10.0.0.72/bt_fashion30/modules/mod_bt_sociallogin/tmpl/js/jquery.simplemodal.js
================================================================================*/;
(function(b){"function"===typeof define&&define.amd?define(["jquery"],b):b(jQuery)})(function(b){var j=[],n=b(document),k=navigator.userAgent.toLowerCase(),l=b(window),g=[],o=null,p=/msie/.test(k)&&!/opera/.test(k),q=/opera/.test(k),m,r;m=p&&/msie 6./.test(k)&&"object"!==typeof window.XMLHttpRequest;r=p&&/msie 7.0/.test(k);b.modal=function(a,h){return b.modal.impl.init(a,h)};b.modal.close=function(){b.modal.impl.close()};b.modal.focus=function(a){b.modal.impl.focus(a)};b.modal.setContainerDimensions=function(){b.modal.impl.setContainerDimensions()};b.modal.setPosition=function(){b.modal.impl.setPosition()};b.modal.update=function(a,h){b.modal.impl.update(a,h)};b.fn.modal=function(a){return b.modal.impl.init(this,a)};b.modal.defaults={appendTo:"body",focus:!0,opacity:50,overlayId:"simplemodal-overlay",overlayCss:{},containerId:"simplemodal-container",containerCss:{},dataId:"simplemodal-data",dataCss:{},minHeight:null,minWidth:null,maxHeight:null,maxWidth:null,autoResize:!1,autoPosition:!0,zIndex:1E3,close:!0,closeHTML:'<a class="modalCloseImg" title="Close"></a>',closeClass:"simplemodal-close",escClose:!0,overlayClose:!1,fixed:!0,position:null,persist:!1,modal:!0,onOpen:null,onShow:null,onClose:null};b.modal.impl={d:{},init:function(a,h){if(this.d.data)return!1;o=p&&!b.support.boxModel;this.o=b.extend({},b.modal.defaults,h);this.zIndex=this.o.zIndex;this.occb=!1;if("object"===typeof a){if(a=a instanceof b?a:b(a),this.d.placeholder=!1,0<a.parent().parent().size()&&(a.before(b("<span></span>").attr("id","simplemodal-placeholder").css({display:"none"})),this.d.placeholder=!0,this.display=a.css("display"),!this.o.persist))this.d.orig=a.clone(!0)}else if("string"===typeof a||"number"===typeof a)a=b("<div></div>").html(a);else return alert("SimpleModal Error: Unsupported data type: "+typeof a),this;this.create(a);this.open();b.isFunction(this.o.onShow)&&this.o.onShow.apply(this,[this.d]);return this},create:function(a){this.getDimensions();if(this.o.modal&&m)this.d.iframe=b('<iframe src="javascript:false;"></iframe>').css(b.extend(this.o.iframeCss,{display:"none",opacity:0,position:"fixed",height:g[0],width:g[1],zIndex:this.o.zIndex,top:0,left:0})).appendTo(this.o.appendTo);this.d.overlay=b("<div></div>").attr("id",this.o.overlayId).addClass("simplemodal-overlay").css(b.extend(this.o.overlayCss,{display:"none",opacity:this.o.opacity/100,height:this.o.modal?j[0]:0,width:this.o.modal?j[1]:0,position:"fixed",left:0,top:0,zIndex:this.o.zIndex+1})).appendTo(this.o.appendTo);this.d.container=b("<div></div>").attr("id",this.o.containerId).addClass("simplemodal-container").css(b.extend({position:this.o.fixed?"fixed":"absolute"},this.o.containerCss,{display:"none",zIndex:this.o.zIndex+2})).append(this.o.close&&this.o.closeHTML?b(this.o.closeHTML).addClass(this.o.closeClass):"").appendTo(this.o.appendTo);this.d.wrap=b("<div></div>").attr("tabIndex",-1).addClass("simplemodal-wrap").css({height:"100%",outline:0,width:"100%"}).appendTo(this.d.container);this.d.data=a.attr("id",a.attr("id")||this.o.dataId).addClass("simplemodal-data").css(b.extend(this.o.dataCss,{display:"none"})).appendTo("body");this.setContainerDimensions();this.d.data.appendTo(this.d.wrap);(m||o)&&this.fixIE()},bindEvents:function(){var a=this;b("."+a.o.closeClass).bind("click.simplemodal",function(b){b.preventDefault();a.close()});a.o.modal&&a.o.close&&a.o.overlayClose&&a.d.overlay.bind("click.simplemodal",function(b){b.preventDefault();a.close()});n.bind("keydown.simplemodal",function(b){a.o.modal&&9===b.keyCode?a.watchTab(b):a.o.close&&a.o.escClose&&27===b.keyCode&&(b.preventDefault(),a.close())});l.bind("resize.simplemodal orientationchange.simplemodal",function(){a.getDimensions();a.o.autoResize?a.setContainerDimensions():a.o.autoPosition&&a.setPosition();m||o?a.fixIE():a.o.modal&&(a.d.iframe&&a.d.iframe.css({height:g[0],width:g[1]}),a.d.overlay.css({height:j[0],width:j[1]}))})},unbindEvents:function(){b("."+this.o.closeClass).unbind("click.simplemodal");n.unbind("keydown.simplemodal");l.unbind(".simplemodal");this.d.overlay.unbind("click.simplemodal")},fixIE:function(){var a=this.o.position;b.each([this.d.iframe||null,!this.o.modal?null:this.d.overlay,"fixed"===this.d.container.css("position")?this.d.container:null],function(b,e){if(e){var f=e[0].style;f.position="absolute";if(2>b)f.removeExpression("height"),f.removeExpression("width"),f.setExpression("height",'document.body.scrollHeight > document.body.clientHeight ? document.body.scrollHeight : document.body.clientHeight + "px"'),f.setExpression("width",'document.body.scrollWidth > document.body.clientWidth ? document.body.scrollWidth : document.body.clientWidth + "px"');else{var c,d;a&&a.constructor===Array?(c=a[0]?"number"===typeof a[0]?a[0].toString():a[0].replace(/px/,""):e.css("top").replace(/px/,""),c=-1===c.indexOf("%")?c+' + (t = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + "px"':parseInt(c.replace(/%/,""))+' * ((document.documentElement.clientHeight || document.body.clientHeight) / 100) + (t = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + "px"',a[1]&&(d="number"===typeof a[1]?a[1].toString():a[1].replace(/px/,""),d=-1===d.indexOf("%")?d+' + (t = document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft) + "px"':parseInt(d.replace(/%/,""))+' * ((document.documentElement.clientWidth || document.body.clientWidth) / 100) + (t = document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft) + "px"')):(c='(document.documentElement.clientHeight || document.body.clientHeight) / 2 - (this.offsetHeight / 2) + (t = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + "px"',d='(document.documentElement.clientWidth || document.body.clientWidth) / 2 - (this.offsetWidth / 2) + (t = document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft) + "px"');f.removeExpression("top");f.removeExpression("left");f.setExpression("top",c);f.setExpression("left",d)}}})},focus:function(a){var h=this,a=a&&-1!==b.inArray(a,["first","last"])?a:"first",e=b(":input:enabled:visible:"+a,h.d.wrap);setTimeout(function(){0<e.length?e.focus():h.d.wrap.focus()},10)},getDimensions:function(){var a="undefined"===typeof window.innerHeight?l.height():window.innerHeight;j=[n.height(),n.width()];g=[a,l.width()]},getVal:function(a,b){return a?"number"===typeof a?a:"auto"===a?0:0<a.indexOf("%")?parseInt(a.replace(/%/,""))/100*("h"===b?g[0]:g[1]):parseInt(a.replace(/px/,"")):null},update:function(a,b){if(!this.d.data)return!1;this.d.origHeight=this.getVal(a,"h");this.d.origWidth=this.getVal(b,"w");this.d.data.hide();a&&this.d.container.css("height",a);b&&this.d.container.css("width",b);this.setContainerDimensions();this.d.data.show();this.o.focus&&this.focus();this.unbindEvents();this.bindEvents()},setContainerDimensions:function(){var a=m||r,b=this.d.origHeight?this.d.origHeight:q?this.d.container.height():this.getVal(a?this.d.container[0].currentStyle.height:this.d.container.css("height"),"h"),a=this.d.origWidth?this.d.origWidth:q?this.d.container.width():this.getVal(a?this.d.container[0].currentStyle.width:this.d.container.css("width"),"w"),e=this.d.data.outerHeight(!0),f=this.d.data.outerWidth(!0);this.d.origHeight=this.d.origHeight||b;this.d.origWidth=this.d.origWidth||a;var c=this.o.maxHeight?this.getVal(this.o.maxHeight,"h"):null,d=this.o.maxWidth?this.getVal(this.o.maxWidth,"w"):null,c=c&&c<g[0]?c:g[0],d=d&&d<g[1]?d:g[1],i=this.o.minHeight?this.getVal(this.o.minHeight,"h"):"auto",b=b?this.o.autoResize&&b>c?c:b<i?i:b:e?e>c?c:this.o.minHeight&&"auto"!==i&&e<i?i:e:i,c=this.o.minWidth?this.getVal(this.o.minWidth,"w"):"auto",a=a?this.o.autoResize&&a>d?d:a<c?c:a:f?f>d?d:this.o.minWidth&&"auto"!==c&&f<c?c:f:c;this.d.container.css({height:b,width:a});this.d.wrap.css({overflow:e>b||f>a?"auto":"visible"});this.o.autoPosition&&this.setPosition()},setPosition:function(){var a,b;a=g[0]/2-this.d.container.outerHeight(!0)/2;b=g[1]/2-this.d.container.outerWidth(!0)/2;var e="fixed"!==this.d.container.css("position")?l.scrollTop():0;this.o.position&&"[object Array]"===Object.prototype.toString.call(this.o.position)?(a=e+(this.o.position[0]||a),b=this.o.position[1]||b):a=e+a;this.d.container.css({left:b,top:a})},watchTab:function(a){if(0<b(a.target).parents(".simplemodal-container").length){if(this.inputs=b(":input:enabled:visible:first, :input:enabled:visible:last",this.d.data[0]),!a.shiftKey&&a.target===this.inputs[this.inputs.length-1]||a.shiftKey&&a.target===this.inputs[0]||0===this.inputs.length)a.preventDefault(),this.focus(a.shiftKey?"last":"first")}else a.preventDefault(),this.focus()},open:function(){this.d.iframe&&this.d.iframe.show();b.isFunction(this.o.onOpen)?this.o.onOpen.apply(this,[this.d]):(this.d.overlay.show(),this.d.container.show(),this.d.data.show());this.o.focus&&this.focus();this.bindEvents()},close:function(){if(!this.d.data)return!1;this.unbindEvents();if(b.isFunction(this.o.onClose)&&!this.occb)this.occb=!0,this.o.onClose.apply(this,[this.d]);else{if(this.d.placeholder){var a=b("#simplemodal-placeholder");this.o.persist?a.replaceWith(this.d.data.removeClass("simplemodal-data").css("display",this.display)):(this.d.data.hide().remove(),a.replaceWith(this.d.orig))}else this.d.data.hide().remove();this.d.container.hide().remove();this.d.overlay.hide();this.d.iframe&&this.d.iframe.hide().remove();this.d.overlay.remove();this.d={}}}}});


/*===============================
http://10.0.0.72/bt_fashion30/templates/bt_fashion/html/mod_bt_sociallogin/js/default.js
================================================================================*/;
var BTLJ=jQuery.noConflict();if(typeof(btTimeOut)=='undefined')var btTimeOut;if(typeof(requireRemove)=='undefined')var requireRemove=true;var autoPos=true;BTLJ(document).ready(function(){BTLJ('#btl-content').appendTo('body');BTLJ(".btl-input #jform_profile_aboutme").attr("cols",21);BTLJ('.bt-scroll .btl-buttonsubmit').click(function(){setTimeout(function(){if(BTLJ("#btl-registration-error").is(':visible')){BTLJ('.bt-scroll').data('jsp').scrollToY(0,true);}else{var position=BTLJ('.bt-scroll').find('.invalid:first').position();if(position)BTLJ('.bt-scroll').data('jsp').scrollToY(position.top<300?0:position.top-50,true);}},20);})
btlOpt.LB_SIZE=btlOpt.LB_SIZE.split(',');btlOpt.RB_SIZE=btlOpt.RB_SIZE.split(',');jQuery('#btl-content-registration .bt-scroll').css({'width':btlOpt.RB_SIZE[0],'height':(btlOpt.RB_SIZE[1]-50)+'px'})
BTLJ("#jform_profile_dob_img").click(function(){BTLJ("div.calendar:last").show().css({"position":"fixed",'z-index':1006});BTLJ(".calendar").click(function(){requireRemove=false;});});if(BTLJ('.btl-dropdown').length){setFPosition();BTLJ(window).resize(function(){setFPosition();})}
BTLJ(btlOpt.LOGIN_TAGS).addClass("btl-modal");if(btlOpt.REGISTER_TAGS!=''){BTLJ(btlOpt.REGISTER_TAGS).addClass("btl-modal");}
var elements='#btl-panel-login';if(btlOpt.LOGIN_TAGS)elements+=', '+btlOpt.LOGIN_TAGS;if(btlOpt.MOUSE_EVENT=='click'){BTLJ(elements).click(function(event){showLoginForm();event.preventDefault();});}else{BTLJ(elements).hover(function(){showLoginForm();},function(){});}
elements='#btl-panel-registration';if(btlOpt.REGISTER_TAGS)elements+=', '+btlOpt.REGISTER_TAGS;if(btlOpt.MOUSE_EVENT=='click'){BTLJ(elements).click(function(event){showRegistrationForm();event.preventDefault();});BTLJ("#btl-panel-profile").click(function(event){showProfile();event.preventDefault();});}else{BTLJ(elements).hover(function(){if(!BTLJ("#btl-integrated").length){showRegistrationForm();}},function(){});BTLJ("#btl-panel-profile").hover(function(){showProfile();},function(){});}
BTLJ('#register-link a').click(function(event){if(BTLJ('.btl-modal').length){BTLJ.modal.close();setTimeout("showRegistrationForm();",1000);}
else{showRegistrationForm();}
event.preventDefault();});BTLJ(document).click(function(event){if(requireRemove&&event.which==1)btTimeOut=setTimeout('BTLJ("#btl-content > div").fadeOut();BTLJ(".btl-panel span").removeClass("active");',10);requireRemove=true;})
BTLJ(".btl-content-block").click(function(){requireRemove=false;});BTLJ(".btl-panel span").click(function(){requireRemove=false;});});function setFPosition(){if(btlOpt.ALIGN=="center"){BTLJ("#btl-content > div").each(function(){var panelid="#"+this.id.replace("content","panel");var left=BTLJ(panelid).offset().left+BTLJ(panelid).width()/2-BTLJ(this).width()/2;if(left<0)left=0;BTLJ(this).css('left',left);});}else{if(btlOpt.ALIGN=="right"){BTLJ("#btl-content > div").css('right',BTLJ(document).width()-BTLJ('.btl-panel').offset().left-BTLJ('.btl-panel').width());}else{BTLJ("#btl-content > div").css('left',BTLJ('.btl-panel').offset().left);}}
BTLJ("#btl-content > div").css('top',BTLJ(".btl-panel").offset().top+BTLJ(".btl-panel").height()+2);}
function showLoginForm(){BTLJ('.btl-panel span').removeClass("active");var el='#btl-panel-login';BTLJ.modal.close();if(BTLJ(el).hasClass("btl-modal")){BTLJ(el).addClass("active");BTLJ("#btl-content > div").fadeOut();BTLJ("#btl-content-login").modal({overlayClose:true,persist:true,autoPosition:autoPos,fixed:BTLJ(window).width()>500,onOpen:function(dialog){BTLJ('#btl-login-error').hide();dialog.overlay.fadeIn();dialog.container.show();dialog.data.show();},onClose:function(dialog){dialog.overlay.fadeOut(function(){dialog.container.hide();dialog.data.hide();BTLJ.modal.close();BTLJ('.btl-panel span').removeClass("active");});},containerCss:{width:btlOpt.LB_SIZE[0],height:btlOpt.LB_SIZE[1]}})}
else
{BTLJ("#btl-content > div").each(function(){if(this.id=="btl-content-login")
{if(BTLJ(this).is(":hidden")){BTLJ(el).addClass("active");BTLJ(this).slideDown();}
else{BTLJ(this).fadeOut();BTLJ(el).removeClass("active");}}
else{if(BTLJ(this).is(":visible")){BTLJ(this).fadeOut();BTLJ('#btl-panel-registration').removeClass("active");}}})}}
function populateFormRegister(data,editEmail){BTLJ.modal.close();setTimeout(function(){populateFormRegisterDelay(data,editEmail);},800);}
function populateFormRegisterDelay(data,editEmail){for(var i in data)
{if(i!='profile'){jQuery('#jform_'+i).val(data[i]);}else{for(var j in data['profile']){jQuery('#jform_profile_'+j).val(data['profile'][j]);}}}
BTLJ('#btl-form-register #jform_password1').val('');BTLJ('#btl-form-register #jform_password2').val('');if(!editEmail){BTLJ('#btl-form-register #jform_email1').attr('disabled','disabled');BTLJ('#btl-form-register #jform_email2').attr('disabled','disabled');}
showRegistrationForm();}
function showRegistrationForm(){if(BTLJ("#btl-integrated").length){window.location.href=BTLJ("#btl-integrated").val();return;}
BTLJ('.btl-panel span').removeClass("active");BTLJ.modal.close();var el='#btl-panel-registration';if(BTLJ(el).hasClass("btl-modal")){BTLJ(el).addClass("active");BTLJ("#btl-content > div").fadeOut();BTLJ("#btl-content-registration").modal({overlayClose:true,persist:true,autoPosition:autoPos,fixed:BTLJ(window).width()>500,onOpen:function(dialog){dialog.overlay.fadeIn();dialog.container.show();dialog.data.show();BTLJ('.bt-scroll').jScrollPane();},onClose:function(dialog){dialog.overlay.fadeOut(function(){dialog.container.hide();dialog.data.hide();BTLJ.modal.close();BTLJ('.btl-panel span').removeClass("active");});},containerCss:{width:btlOpt.RB_SIZE[0],height:'auto'}})}
else
{BTLJ("#btl-content > div").each(function(){if(this.id=="btl-content-registration")
{if(BTLJ(this).is(":hidden")){BTLJ(el).addClass("active");BTLJ(this).slideDown(function(){});BTLJ('.bt-scroll').jScrollPane();}
else{BTLJ(this).fadeOut();BTLJ(el).removeClass("active");}}
else{if(BTLJ(this).is(":visible")){BTLJ(this).fadeOut();BTLJ('#btl-panel-login').removeClass("active");}}})}}
function showProfile(){if(BTLJ('.btl-dropdown').length){setFPosition();BTLJ(window).resize(function(){setFPosition();})}
var el='#btl-panel-profile';BTLJ("#btl-content > div").each(function(){if(this.id=="btl-content-profile")
{if(BTLJ(this).is(":hidden")){BTLJ(el).addClass("active");BTLJ(this).slideDown();}
else{BTLJ(this).fadeOut();BTLJ('.btl-panel span').removeClass("active");}}
else{if(BTLJ(this).is(":visible")){BTLJ(this).fadeOut();BTLJ('.btl-panel span').removeClass("active");}}})}
function registerAjax(){BTLJ("#btl-registration-error").hide();if(BTLJ(".btl-input #jform_name").val()==""){BTLJ("#btl-registration-error").html(Joomla.JText._('REQUIRED_NAME')).show();return false;}
if(BTLJ(".btl-input #jform_username").val()==""){BTLJ("#btl-registration-error").html(Joomla.JText._('REQUIRED_USERNAME')).show();return false;}
if(BTLJ(".btl-input #jform_password1").val()==""){BTLJ("#btl-registration-error").html(Joomla.JText._('REQUIRED_PASSWORD')).show();return false;}
if(BTLJ(".btl-input #jform_password2").val()==""){BTLJ("#btl-registration-error").html(Joomla.JText._('REQUIRED_VERIFY_PASSWORD')).show();return false;}
if(BTLJ(".btl-input #jform_password2").val()!=BTLJ(".btl-input #jform_password1").val()){BTLJ("#btl-registration-error").html(Joomla.JText._('PASSWORD_NOT_MATCH')).show();return false;}
if(BTLJ(".btl-input #jform_email1").val()==""&&!BTLJ(".btl-input #jform_email1").attr('disabled')){BTLJ("#btl-registration-error").html(Joomla.JText._('REQUIRED_EMAIL')).show();return false;}
var emailRegExp=/^[_a-zA-Z0-9-]+(\.[_a-zA-z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.([a-zA-Z]){2,4})$/;if(!BTLJ(".btl-input #jform_email1").attr('disabled')&&!emailRegExp.test(BTLJ(".btl-input #jform_email1").val())){BTLJ("#btl-registration-error").html(Joomla.JText._('EMAIL_INVALID')).show();return false;}
if(BTLJ(".btl-input #jform_email1").val()!=BTLJ(".btl-input #jform_email2").val()){BTLJ("#btl-registration-error").html(Joomla.JText._('EMAIL_NOT_MATCH')).show();;return false;}
if(BTLJ("#jform_profile_tos0").length){if(!BTLJ("#jform_profile_tos0").is(":checked")){BTLJ("#jform_profile_tos").css("border","1px solid red");BTLJ("#jform_profile_tos").addClass("invalid");BTLJ("#jform_profile_tos0").focus();result=1;}else{BTLJ("#jform_profile_tos").css("border","none");BTLJ("#jform_profile_tos").removeClass("invalid");}}
if(btlOpt.RECAPTCHA!='0'){if(BTLJ('#recaptcha_response_field').length&&BTLJ('#recaptcha_response_field').val()==''){BTLJ('#recaptcha_response_field').focus();return false;}}
var token=BTLJ('.btl-buttonsubmit input:last').attr("name");var value_token=BTLJ('.btl-buttonsubmit input:last').val();var datasubmit=BTLJ('#btl-form-register').serialize();BTLJ.ajax({type:"POST",beforeSend:function(){BTLJ("#btl-register-in-process").show();},async:true,url:btlOpt.BT_AJAX,data:datasubmit,success:function(html){BTLJ("#btl-register-in-process").hide();if(html.indexOf('$error$')!=-1){BTLJ("#btl-registration-error").html(html.replace('$error$',''));BTLJ("#btl-registration-error").show();BTLJ('.bt-scroll').data('jsp').scrollToY(0,true);if(btlOpt.RECAPTCHA=="recaptcha"){Recaptcha.reload();}}else{BTLJ(".bt-scroll").hide();BTLJ("#btl-success").html(html);BTLJ("#btl-success").show();setTimeout(function(){window.location.reload();},7000);}},error:function(XMLHttpRequest,textStatus,errorThrown){alert(textStatus+': Ajax request failed!');}});return false;}
function loginAjax(){if(BTLJ("#btl-input-username").val()==""){BTLJ("#btl-login-error").html(Joomla.JText._('REQUIRED_USERNAME'))
BTLJ("#btl-login-error").show();return false;}
if(BTLJ("#btl-input-password").val()==""){BTLJ("#btl-login-error").html(Joomla.JText._('REQUIRED_PASSWORD'));BTLJ("#btl-login-error").show();return false;}
var token=BTLJ('.btl-buttonsubmit input:last').attr("name");var value_token=encodeURIComponent(BTLJ('.btl-buttonsubmit input:last').val());var datasubmit="bttask=login&username="+encodeURIComponent(BTLJ("#btl-input-username").val())
+"&passwd="+encodeURIComponent(BTLJ("#btl-input-password").val())
+"&"+token+"="+value_token
+"&return="+encodeURIComponent(BTLJ("#btl-return").val());if(BTLJ("#btl-checkbox-remember").is(":checked")){datasubmit+='&remember=yes';}
BTLJ.ajax({type:"POST",beforeSend:function(){BTLJ("#btl-login-in-process").show();BTLJ("#btl-login-in-process").css('height',BTLJ('#btl-content-login').outerHeight()+'px');},async:true,url:btlOpt.BT_AJAX,data:datasubmit,success:function(html){if(html=="1"||html==1){window.location.href=btlOpt.BT_RETURN;}else{BTLJ("#btl-login-in-process").hide();BTLJ("#btl-login-error").html(Joomla.JText._('E_LOGIN_AUTHENTICATE'));BTLJ("#btl-login-error").show();}},error:function(XMLHttpRequest,textStatus,errorThrown){alert(textStatus+': ajax request failed');}});return false;}
function newPopup(pageURL,title,w,h){var left=(screen.width/2)-(w/2);var top=(screen.height/2)-(h/2);var popupWindow=window.open(pageURL,'connectingPopup','height='+h+',width='+w+',left='+left+',top='+top+',resizable=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,directories=no,status=yes');}


/*===============================
/bt_fashion30/media/system/js/punycode.js
================================================================================*/;
/*! http://mths.be/punycode v1.2.4 (C) by @mathias | MIT License*/
!function(a){function b(a){throw RangeError(E[a])}function c(a,b){for(var c=a.length;c--;)a[c]=b(a[c]);return a}function d(a,b){return c(a.split(D),b).join(".")}function e(a){for(var b,c,d=[],e=0,f=a.length;f>e;)b=a.charCodeAt(e++),b>=55296&&56319>=b&&f>e?(c=a.charCodeAt(e++),56320==(64512&c)?d.push(((1023&b)<<10)+(1023&c)+65536):(d.push(b),e--)):d.push(b);return d}function f(a){return c(a,function(a){var b="";return a>65535&&(a-=65536,b+=H(a>>>10&1023|55296),a=56320|1023&a),b+=H(a)}).join("")}function g(a){return 10>a-48?a-22:26>a-65?a-65:26>a-97?a-97:t}function h(a,b){return a+22+75*(26>a)-((0!=b)<<5)}function i(a,b,c){var d=0;for(a=c?G(a/x):a>>1,a+=G(a/b);a>F*v>>1;d+=t)a=G(a/F);return G(d+(F+1)*a/(a+w))}function j(a){var c,d,e,h,j,k,l,m,n,o,p=[],q=a.length,r=0,w=z,x=y;for(d=a.lastIndexOf(A),0>d&&(d=0),e=0;d>e;++e)a.charCodeAt(e)>=128&&b("not-basic"),p.push(a.charCodeAt(e));for(h=d>0?d+1:0;q>h;){for(j=r,k=1,l=t;h>=q&&b("invalid-input"),m=g(a.charCodeAt(h++)),(m>=t||m>G((s-r)/k))&&b("overflow"),r+=m*k,n=x>=l?u:l>=x+v?v:l-x,!(n>m);l+=t)o=t-n,k>G(s/o)&&b("overflow"),k*=o;c=p.length+1,x=i(r-j,c,0==j),G(r/c)>s-w&&b("overflow"),w+=G(r/c),r%=c,p.splice(r++,0,w)}return f(p)}function k(a){var c,d,f,g,j,k,l,m,n,o,p,q,r,w,x,B=[];for(a=e(a),q=a.length,c=z,d=0,j=y,k=0;q>k;++k)p=a[k],128>p&&B.push(H(p));for(f=g=B.length,g&&B.push(A);q>f;){for(l=s,k=0;q>k;++k)p=a[k],p>=c&&l>p&&(l=p);for(r=f+1,l-c>G((s-d)/r)&&b("overflow"),d+=(l-c)*r,c=l,k=0;q>k;++k)if(p=a[k],c>p&&++d>s&&b("overflow"),p==c){for(m=d,n=t;o=j>=n?u:n>=j+v?v:n-j,!(o>m);n+=t)x=m-o,w=t-o,B.push(H(h(o+x%w,0))),m=G(x/w);B.push(H(h(m,0))),j=i(d,r,f==g),d=0,++f}++d,++c}return B.join("")}function l(a){return d(a,function(a){return B.test(a)?j(a.slice(4).toLowerCase()):a})}function m(a){return d(a,function(a){return C.test(a)?"xn--"+k(a):a})}var n="object"==typeof exports&&exports,o="object"==typeof module&&module&&module.exports==n&&module,p="object"==typeof global&&global;(p.global===p||p.window===p)&&(a=p);var q,r,s=2147483647,t=36,u=1,v=26,w=38,x=700,y=72,z=128,A="-",B=/^xn--/,C=/[^ -~]/,D=/\x2E|\u3002|\uFF0E|\uFF61/g,E={overflow:"Overflow: input needs wider integers to process","not-basic":"Illegal input >= 0x80 (not a basic code point)","invalid-input":"Invalid input"},F=t-u,G=Math.floor,H=String.fromCharCode;if(q={version:"1.2.4",ucs2:{decode:e,encode:f},decode:j,encode:k,toASCII:m,toUnicode:l},"function"==typeof define&&"object"==typeof define.amd&&define.amd)define("punycode",function(){return q});else if(n&&!n.nodeType)if(o)o.exports=q;else for(r in q)q.hasOwnProperty(r)&&(n[r]=q[r]);else a.punycode=q}(this);


/*===============================
/bt_fashion30/media/system/js/validate.js
================================================================================*/;
Object.append(Browser.Features,{inputemail:function(){var e=document.createElement("input");e.setAttribute("type","email");return e.type!=="text"}()});var JFormValidator=new Class({initialize:function(){this.handlers=Object();this.custom=Object();this.setHandler("username",function(e){regex=new RegExp("[<|>|\"|'|%|;|(|)|&]","i");return!regex.test(e)});this.setHandler("password",function(e){regex=/^\S[\S ]{2,98}\S$/;return regex.test(e)});this.setHandler("numeric",function(e){regex=/^(\d|-)?(\d|,)*\.?\d*$/;return regex.test(e)});this.setHandler("email",function(e){e=punycode.encode(e);regex=/^[a-zA-Z0-9.!#$%&‚Äô*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;return regex.test(e)});var e=$$("form.form-validate");e.each(function(e){this.attachToForm(e)},this)},setHandler:function(e,t,n){n=n==""?true:n;this.handlers[e]={enabled:n,exec:t}},attachToForm:function(e){e.getElements("input,textarea,select,button").each(function(e){if(e.hasClass("required")){e.set("aria-required","true");e.set("required","required")}if((document.id(e).get("tag")=="input"||document.id(e).get("tag")=="button")&&document.id(e).get("type")=="submit"){if(e.hasClass("validate")){e.onclick=function(){return document.formvalidator.isValid(this.form)}}}else{e.addEvent("blur",function(){return document.formvalidator.validate(this)});if(e.hasClass("validate-email")&&Browser.Features.inputemail){e.type="email"}}})},validate:function(e){e=document.id(e);if(e.get("disabled")&&!e.hasClass('required')){this.handleResponse(true,e);return true}if(e.hasClass("required")){if(e.get("tag")=="fieldset"&&(e.hasClass("radio")||e.hasClass("checkboxes"))){for(var t=0;;t++){if(document.id(e.get("id")+t)){if(document.id(e.get("id")+t).checked){break}}else{this.handleResponse(false,e);return false}}}else if(!e.get("value")){this.handleResponse(false,e);return false}}var n=e.className&&e.className.search(/validate-([a-zA-Z0-9\_\-]+)/)!=-1?e.className.match(/validate-([a-zA-Z0-9\_\-]+)/)[1]:"";if(n==""){this.handleResponse(true,e);return true}if(n&&n!="none"&&this.handlers[n]&&e.get("value")){if(this.handlers[n].exec(e.get("value"))!=true){this.handleResponse(false,e);return false}}this.handleResponse(true,e);return true},isValid:function(e){var t=true;var n=e.getElements("fieldset").concat(Array.from(e.elements));for(var r=0;r<n.length;r++){if(this.validate(n[r])==false){t=false}}(new Hash(this.custom)).each(function(e){if(e.exec()!=true){t=false}});if(!t){var i=Joomla.JText._("JLIB_FORM_FIELD_INVALID");var s=jQuery("label.invalid");var o=new Object;o.error=new Array;for(var r=0;r<s.length;r++){var u=jQuery(s[r]).text();if(u!="undefined"){o.error[r]=i+u.replace("*","")}}Joomla.renderMessages(o)}return t},handleResponse:function(e,t){if(!t.labelref){var n=$$("label");n.each(function(e){if(e.get("for")==t.get("id")){t.labelref=e}})}if(e==false){t.addClass("invalid");t.set("aria-invalid","true");if(t.labelref){document.id(t.labelref).addClass("invalid");document.id(t.labelref).set("aria-invalid","true")}}else{t.removeClass("invalid");t.set("aria-invalid","false");if(t.labelref){document.id(t.labelref).removeClass("invalid");document.id(t.labelref).set("aria-invalid","false")}}}});document.formvalidator=null;window.addEvent("domready",function(){document.formvalidator=new JFormValidator})


/*===============================
http://10.0.0.72/bt_fashion30/modules/mod_bt_smartsearch/tmpl/js/chosen.jquery.min.js
================================================================================*/;
// Chosen, a Select Box Enhancer for jQuery and Protoype
// by Patrick Filler for Harvest, http://getharvest.com
// 
// Version 0.9.5
// Full source at https://github.com/harvesthq/chosen
// Copyright (c) 2011 Harvest http://getharvest.com

// MIT License, https://github.com/harvesthq/chosen/blob/master/LICENSE.md
// This file is generated by `cake build`, do not edit it by hand.
(function() {
  var SelectParser;
  SelectParser = (function() {
    function SelectParser() {
      this.options_index = 0;
      this.parsed = [];
    }
    SelectParser.prototype.add_node = function(child) {
      if (child.nodeName === "OPTGROUP") {
        return this.add_group(child);
      } else {
        return this.add_option(child);
      }
    };
    SelectParser.prototype.add_group = function(group) {
      var group_position, option, _i, _len, _ref, _results;
      group_position = this.parsed.length;
      this.parsed.push({
        array_index: group_position,
        group: true,
        label: group.label,
        children: 0,
        disabled: group.disabled
      });
      _ref = group.childNodes;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        option = _ref[_i];
        _results.push(this.add_option(option, group_position, group.disabled));
      }
      return _results;
    };
    SelectParser.prototype.add_option = function(option, group_position, group_disabled) {
      if (option.nodeName === "OPTION") {
        if (option.text !== "") {
          if (group_position != null) {
            this.parsed[group_position].children += 1;
          }
          this.parsed.push({
            array_index: this.parsed.length,
            options_index: this.options_index,
            value: option.value,
            text: option.text,
            html: option.innerHTML,
            selected: option.selected,
            disabled: group_disabled === true ? group_disabled : option.disabled,
            group_array_index: group_position,
            classes: option.className,
            style: option.style.cssText
          });
        } else {
          this.parsed.push({
            array_index: this.parsed.length,
            options_index: this.options_index,
            empty: true
          });
        }
        return this.options_index += 1;
      }
    };
    return SelectParser;
  })();
  SelectParser.select_to_array = function(select) {
    var child, parser, _i, _len, _ref;
    parser = new SelectParser();
    _ref = select.childNodes;
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      child = _ref[_i];
      parser.add_node(child);
    }
    return parser.parsed;
  };
  this.SelectParser = SelectParser;
}).call(this);
(function() {
  /*
  Chosen source: generate output using 'cake build'
  Copyright (c) 2011 by Harvest
  */
  var AbstractChosen, root;
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  root = this;
  AbstractChosen = (function() {
    function AbstractChosen(form_field, options) {
      this.form_field = form_field;
      this.options = options != null ? options : {};
      this.set_default_values();
      this.is_multiple = this.form_field.multiple;
      this.default_text_default = this.is_multiple ? "Select Some Options" : "Select an Option";
      this.setup();
      this.set_up_html();
      this.register_observers();
      this.finish_setup();
    }
    AbstractChosen.prototype.set_default_values = function() {
      this.click_test_action = __bind(function(evt) {
        return this.test_active_click(evt);
      }, this);
      this.activate_action = __bind(function(evt) {
        return this.activate_field(evt);
      }, this);
      this.active_field = false;
      this.mouse_on_container = false;
      this.results_showing = false;
      this.result_highlighted = null;
      this.result_single_selected = null;
      this.allow_single_deselect = (this.options.allow_single_deselect != null) && this.form_field.options[0].text === "" ? this.options.allow_single_deselect : false;
      this.disable_search_threshold = this.options.disable_search_threshold || 0;
      this.choices = 0;
      return this.results_none_found = this.options.no_results_text || "No results match";
    };
    AbstractChosen.prototype.mouse_enter = function() {
      return this.mouse_on_container = true;
    };
    AbstractChosen.prototype.mouse_leave = function() {
      return this.mouse_on_container = false;
    };
    AbstractChosen.prototype.input_focus = function(evt) {
      if (!this.active_field) {
        return setTimeout((__bind(function() {
          return this.container_mousedown();
        }, this)), 50);
      }
    };
    AbstractChosen.prototype.input_blur = function(evt) {
      if (!this.mouse_on_container) {
        this.active_field = false;
        return setTimeout((__bind(function() {
          return this.blur_test();
        }, this)), 100);
      }
    };
    AbstractChosen.prototype.result_add_option = function(option) {
      var classes, style;
      if (!option.disabled) {
        option.dom_id = this.container_id + "_o_" + option.array_index;
        classes = option.selected && this.is_multiple ? [] : ["active-result"];
        if (option.selected) {
          classes.push("result-selected");
        }
        if (option.group_array_index != null) {
          classes.push("group-option");
        }
        if (option.classes !== "") {
          classes.push(option.classes);
        }
        style = option.style.cssText !== "" ? " style=\"" + option.style + "\"" : "";
        return '<li id="' + option.dom_id + '" class="' + classes.join(' ') + '"' + style + '>' + option.html + '</li>';
      } else {
        return "";
      }
    };
    AbstractChosen.prototype.results_update_field = function() {
      this.result_clear_highlight();
      this.result_single_selected = null;
      return this.results_build();
    };
    AbstractChosen.prototype.results_toggle = function() {
      if (this.results_showing) {
        return this.results_hide();
      } else {
        return this.results_show();
      }
    };
    AbstractChosen.prototype.results_search = function(evt) {
      if (this.results_showing) {
        return this.winnow_results();
      } else {
        return this.results_show();
      }
    };
    AbstractChosen.prototype.keyup_checker = function(evt) {
      var stroke, _ref;
      stroke = (_ref = evt.which) != null ? _ref : evt.keyCode;
      this.search_field_scale();
      switch (stroke) {
        case 8:
          if (this.is_multiple && this.backstroke_length < 1 && this.choices > 0) {
            return this.keydown_backstroke();
          } else if (!this.pending_backstroke) {
            this.result_clear_highlight();
            return this.results_search();
          }
          break;
        case 13:
          evt.preventDefault();
          if (this.results_showing) {
            return this.result_select(evt);
          }
          break;
        case 27:
          if (this.results_showing) {
            return this.results_hide();
          }
          break;
        case 9:
        case 38:
        case 40:
        case 16:
        case 91:
        case 17:
          break;
        default:
          return this.results_search();
      }
    };
    AbstractChosen.prototype.generate_field_id = function() {
      var new_id;
      new_id = this.generate_random_id();
      this.form_field.id = new_id;
      return new_id;
    };
    AbstractChosen.prototype.generate_random_char = function() {
      var chars, newchar, rand;
      chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZ";
      rand = Math.floor(Math.random() * chars.length);
      return newchar = chars.substring(rand, rand + 1);
    };
    return AbstractChosen;
  })();
  root.AbstractChosen = AbstractChosen;
}).call(this);
(function() {
  /*
  Chosen source: generate output using 'cake build'
  Copyright (c) 2011 by Harvest
  */
  var $, Chosen, get_side_border_padding, root;
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) {
    for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; }
    function ctor() { this.constructor = child; }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor;
    child.__super__ = parent.prototype;
    return child;
  }, __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  root = this;
  $ = jQuery;
  $.fn.extend({
    chosen: function(options) {
      if ($.browser.msie && ($.browser.version === "6.0" || $.browser.version === "7.0")) {
        return this;
      }
      return $(this).each(function(input_field) {
        if (!($(this)).hasClass("chzn-done")) {
          return new Chosen(this, options);
        }
      });
    }
  });
  Chosen = (function() {
    __extends(Chosen, AbstractChosen);
    function Chosen() {
      Chosen.__super__.constructor.apply(this, arguments);
    }
    Chosen.prototype.setup = function() {
      this.form_field_jq = $(this.form_field);
      return this.is_rtl = this.form_field_jq.hasClass("chzn-rtl");
    };
    Chosen.prototype.finish_setup = function() {
      return this.form_field_jq.addClass("chzn-done");
    };
    Chosen.prototype.set_up_html = function() {
      var container_div, dd_top, dd_width, sf_width;
      this.container_id = this.form_field.id.length ? this.form_field.id.replace(/(:|\.)/g, '_') : this.generate_field_id();
      this.container_id += "_chzn";
      this.f_width = this.form_field_jq.outerWidth();
      this.default_text = this.form_field_jq.data('placeholder') ? this.form_field_jq.data('placeholder') : this.default_text_default;
      container_div = $("<div />", {
        id: this.container_id,
        "class": "chzn-container" + (this.is_rtl ? ' chzn-rtl' : ''),
        style: 'width: ' + this.f_width + 'px;'
      });
      if (this.is_multiple) {
        container_div.html('<ul class="chzn-choices"><li class="search-field"><input type="text" value="' + this.default_text + '" class="default" autocomplete="off" style="width:25px;" /></li></ul><div class="chzn-drop" style="left:-9000px;"><ul class="chzn-results"></ul></div>');
      } else {
        container_div.html('<a href="javascript:void(0)" class="chzn-single"><span>' + this.default_text + '</span><div><b></b></div></a><div class="chzn-drop" style="left:-9000px;"><div class="chzn-search"><input type="text" autocomplete="off" /></div><ul class="chzn-results"></ul></div>');
      }
      this.form_field_jq.hide().after(container_div);
      this.container = $('#' + this.container_id);
      this.container.addClass("chzn-container-" + (this.is_multiple ? "multi" : "single"));
      if (!this.is_multiple && this.form_field.options.length <= this.disable_search_threshold) {
        this.container.addClass("chzn-container-single-nosearch");
      }
      this.dropdown = this.container.find('div.chzn-drop').first();
      dd_top = this.container.height();
      dd_width = this.f_width - get_side_border_padding(this.dropdown);
      this.dropdown.css({
        "width": dd_width + "px",
        "top": dd_top + "px"
      });
      this.search_field = this.container.find('input').first();
      this.search_results = this.container.find('ul.chzn-results').first();
      this.search_field_scale();
      this.search_no_results = this.container.find('li.no-results').first();
      if (this.is_multiple) {
        this.search_choices = this.container.find('ul.chzn-choices').first();
        this.search_container = this.container.find('li.search-field').first();
      } else {
        this.search_container = this.container.find('div.chzn-search').first();
        this.selected_item = this.container.find('.chzn-single').first();
        sf_width = dd_width - get_side_border_padding(this.search_container) - get_side_border_padding(this.search_field);
        this.search_field.css({
          "width": sf_width + "px"
        });
      }
      this.results_build();
      this.set_tab_index();
      return this.form_field_jq.trigger("liszt:ready", {
        chosen: this
      });
    };
    Chosen.prototype.register_observers = function() {
      this.container.mousedown(__bind(function(evt) {
        return this.container_mousedown(evt);
      }, this));
      this.container.mouseup(__bind(function(evt) {
        return this.container_mouseup(evt);
      }, this));
      this.container.mouseenter(__bind(function(evt) {
        return this.mouse_enter(evt);
      }, this));
      this.container.mouseleave(__bind(function(evt) {
        return this.mouse_leave(evt);
      }, this));
      this.search_results.mouseup(__bind(function(evt) {
        return this.search_results_mouseup(evt);
      }, this));
      this.search_results.mouseover(__bind(function(evt) {
        return this.search_results_mouseover(evt);
      }, this));
      this.search_results.mouseout(__bind(function(evt) {
        return this.search_results_mouseout(evt);
      }, this));
      this.form_field_jq.bind("liszt:updated", __bind(function(evt) {
        return this.results_update_field(evt);
      }, this));
      this.search_field.blur(__bind(function(evt) {
        return this.input_blur(evt);
      }, this));
      this.search_field.keyup(__bind(function(evt) {
        return this.keyup_checker(evt);
      }, this));
      this.search_field.keydown(__bind(function(evt) {
        return this.keydown_checker(evt);
      }, this));
      if (this.is_multiple) {
        this.search_choices.click(__bind(function(evt) {
          return this.choices_click(evt);
        }, this));
        return this.search_field.focus(__bind(function(evt) {
          return this.input_focus(evt);
        }, this));
      }
    };
    Chosen.prototype.search_field_disabled = function() {
      this.is_disabled = this.form_field_jq.attr('disabled');
      if (this.is_disabled) {
        this.container.addClass('chzn-disabled');
        this.search_field.attr('disabled', true);
        if (!this.is_multiple) {
          this.selected_item.unbind("focus", this.activate_action);
        }
        return this.close_field();
      } else {
        this.container.removeClass('chzn-disabled');
        this.search_field.attr('disabled', false);
        if (!this.is_multiple) {
          return this.selected_item.bind("focus", this.activate_action);
        }
      }
    };
    Chosen.prototype.container_mousedown = function(evt) {
      var target_closelink;
      if (!this.is_disabled) {
        target_closelink = evt != null ? ($(evt.target)).hasClass("search-choice-close") : false;
        if (evt && evt.type === "mousedown") {
          evt.stopPropagation();
        }
        if (!this.pending_destroy_click && !target_closelink) {
          if (!this.active_field) {
            if (this.is_multiple) {
              this.search_field.val("");
            }
            $(document).click(this.click_test_action);
            this.results_show();
          } else if (!this.is_multiple && evt && ($(evt.target) === this.selected_item || $(evt.target).parents("a.chzn-single").length)) {
            evt.preventDefault();
            this.results_toggle();
          }
          return this.activate_field();
        } else {
          return this.pending_destroy_click = false;
        }
      }
    };
    Chosen.prototype.container_mouseup = function(evt) {
      if (evt.target.nodeName === "ABBR") {
        return this.results_reset(evt);
      }
    };
    Chosen.prototype.blur_test = function(evt) {
      if (!this.active_field && this.container.hasClass("chzn-container-active")) {
        return this.close_field();
      }
    };
    Chosen.prototype.close_field = function() {
      $(document).unbind("click", this.click_test_action);
      if (!this.is_multiple) {
        this.selected_item.attr("tabindex", this.search_field.attr("tabindex"));
        this.search_field.attr("tabindex", -1);
      }
      this.active_field = false;
      this.results_hide();
      this.container.removeClass("chzn-container-active");
      this.winnow_results_clear();
      this.clear_backstroke();
      this.show_search_field_default();
      return this.search_field_scale();
    };
    Chosen.prototype.activate_field = function() {
      if (!this.is_multiple && !this.active_field) {
        this.search_field.attr("tabindex", this.selected_item.attr("tabindex"));
        this.selected_item.attr("tabindex", -1);
      }
      this.container.addClass("chzn-container-active");
      this.active_field = true;
      this.search_field.val(this.search_field.val());
      return this.search_field.focus();
    };
    Chosen.prototype.test_active_click = function(evt) {
      if ($(evt.target).parents('#' + this.container_id).length) {
        return this.active_field = true;
      } else {
        return this.close_field();
      }
    };
    Chosen.prototype.results_build = function() {
      var content, data, startTime, _i, _len, _ref;
      startTime = new Date();
      this.parsing = true;
      this.results_data = root.SelectParser.select_to_array(this.form_field);
      if (this.is_multiple && this.choices > 0) {
        this.search_choices.find("li.search-choice").remove();
        this.choices = 0;
      } else if (!this.is_multiple) {
        this.selected_item.find("span").text(this.default_text);
      }
      content = '';
      _ref = this.results_data;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        data = _ref[_i];
        if (data.group) {
          content += this.result_add_group(data);
        } else if (!data.empty) {
          content += this.result_add_option(data);
          if (data.selected && this.is_multiple) {
            this.choice_build(data);
          } else if (data.selected && !this.is_multiple) {
            this.selected_item.find("span").text(data.text);
            if (this.allow_single_deselect) {
              this.single_deselect_control_build();
            }
          }
        }
      }
      this.search_field_disabled();
      this.show_search_field_default();
      this.search_field_scale();
      this.search_results.html(content);
      return this.parsing = false;
    };
    Chosen.prototype.result_add_group = function(group) {
      if (!group.disabled) {
        group.dom_id = this.container_id + "_g_" + group.array_index;
        return '<li id="' + group.dom_id + '" class="group-result">' + $("<div />").text(group.label).html() + '</li>';
      } else {
        return "";
      }
    };
    Chosen.prototype.result_do_highlight = function(el) {
      var high_bottom, high_top, maxHeight, visible_bottom, visible_top;
      if (el.length) {
        this.result_clear_highlight();
        this.result_highlight = el;
        this.result_highlight.addClass("highlighted");
        maxHeight = parseInt(this.search_results.css("maxHeight"), 10);
        visible_top = this.search_results.scrollTop();
        visible_bottom = maxHeight + visible_top;
        high_top = this.result_highlight.position().top + this.search_results.scrollTop();
        high_bottom = high_top + this.result_highlight.outerHeight();
        if (high_bottom >= visible_bottom) {
          return this.search_results.scrollTop((high_bottom - maxHeight) > 0 ? high_bottom - maxHeight : 0);
        } else if (high_top < visible_top) {
          return this.search_results.scrollTop(high_top);
        }
      }
    };
    Chosen.prototype.result_clear_highlight = function() {
      if (this.result_highlight) {
        this.result_highlight.removeClass("highlighted");
      }
      return this.result_highlight = null;
    };
    Chosen.prototype.results_show = function() {
      var dd_top;
      if (!this.is_multiple) {
        this.selected_item.addClass("chzn-single-with-drop");
        if (this.result_single_selected) {
          this.result_do_highlight(this.result_single_selected);
        }
      }
      dd_top = this.is_multiple ? this.container.height() : this.container.height() - 1;
      this.dropdown.css({
        "top": dd_top + "px",
        "left": 0
      });
      this.results_showing = true;
      this.search_field.focus();
      this.search_field.val(this.search_field.val());
      return this.winnow_results();
    };
    Chosen.prototype.results_hide = function() {
      if (!this.is_multiple) {
        this.selected_item.removeClass("chzn-single-with-drop");
      }
      this.result_clear_highlight();
      this.dropdown.css({
        "left": "-9000px"
      });
      return this.results_showing = false;
    };
    Chosen.prototype.set_tab_index = function(el) {
      var ti;
      if (this.form_field_jq.attr("tabindex")) {
        ti = this.form_field_jq.attr("tabindex");
        this.form_field_jq.attr("tabindex", -1);
        if (this.is_multiple) {
          return this.search_field.attr("tabindex", ti);
        } else {
          this.selected_item.attr("tabindex", ti);
          return this.search_field.attr("tabindex", -1);
        }
      }
    };
    Chosen.prototype.show_search_field_default = function() {
      if (this.is_multiple && this.choices < 1 && !this.active_field) {
        this.search_field.val(this.default_text);
        return this.search_field.addClass("default");
      } else {
        this.search_field.val("");
        return this.search_field.removeClass("default");
      }
    };
    Chosen.prototype.search_results_mouseup = function(evt) {
      var target;
      target = $(evt.target).hasClass("active-result") ? $(evt.target) : $(evt.target).parents(".active-result").first();
      if (target.length) {
        this.result_highlight = target;
        return this.result_select(evt);
      }
    };
    Chosen.prototype.search_results_mouseover = function(evt) {
      var target;
      target = $(evt.target).hasClass("active-result") ? $(evt.target) : $(evt.target).parents(".active-result").first();
      if (target) {
        return this.result_do_highlight(target);
      }
    };
    Chosen.prototype.search_results_mouseout = function(evt) {
      if ($(evt.target).hasClass("active-result" || $(evt.target).parents('.active-result').first())) {
        return this.result_clear_highlight();
      }
    };
    Chosen.prototype.choices_click = function(evt) {
      evt.preventDefault();
      if (this.active_field && !($(evt.target).hasClass("search-choice" || $(evt.target).parents('.search-choice').first)) && !this.results_showing) {
        return this.results_show();
      }
    };
    Chosen.prototype.choice_build = function(item) {
      var choice_id, link;
      choice_id = this.container_id + "_c_" + item.array_index;
      this.choices += 1;
      this.search_container.before('<li class="search-choice" id="' + choice_id + '"><span>' + item.html + '</span><a href="javascript:void(0)" class="search-choice-close" rel="' + item.array_index + '"></a></li>');
      link = $('#' + choice_id).find("a").first();
      return link.click(__bind(function(evt) {
        return this.choice_destroy_link_click(evt);
      }, this));
    };
    Chosen.prototype.choice_destroy_link_click = function(evt) {
      evt.preventDefault();
      if (!this.is_disabled) {
        this.pending_destroy_click = true;
        return this.choice_destroy($(evt.target));
      } else {
        return evt.stopPropagation;
      }
    };
    Chosen.prototype.choice_destroy = function(link) {
      this.choices -= 1;
      this.show_search_field_default();
      if (this.is_multiple && this.choices > 0 && this.search_field.val().length < 1) {
        this.results_hide();
      }
      this.result_deselect(link.attr("rel"));
      return link.parents('li').first().remove();
    };
    Chosen.prototype.results_reset = function(evt) {
      this.form_field.options[0].selected = true;
      this.selected_item.find("span").text(this.default_text);
      this.show_search_field_default();
      $(evt.target).remove();
      this.form_field_jq.trigger("change");
      if (this.active_field) {
        return this.results_hide();
      }
    };
    Chosen.prototype.result_select = function(evt) {
      var high, high_id, item, position;
      if (this.result_highlight) {
        high = this.result_highlight;
        high_id = high.attr("id");
        this.result_clear_highlight();
        if (this.is_multiple) {
          this.result_deactivate(high);
        } else {
          this.search_results.find(".result-selected").removeClass("result-selected");
          this.result_single_selected = high;
        }
        high.addClass("result-selected");
        position = high_id.substr(high_id.lastIndexOf("_") + 1);
        item = this.results_data[position];
        item.selected = true;
        this.form_field.options[item.options_index].selected = true;
        if (this.is_multiple) {
          this.choice_build(item);
        } else {
          this.selected_item.find("span").first().text(item.text);
          if (this.allow_single_deselect) {
            this.single_deselect_control_build();
          }
        }
        if (!(evt.metaKey && this.is_multiple)) {
          this.results_hide();
        }
        this.search_field.val("");
        this.form_field_jq.trigger("change");
        return this.search_field_scale();
      }
    };
    Chosen.prototype.result_activate = function(el) {
      return el.addClass("active-result");
    };
    Chosen.prototype.result_deactivate = function(el) {
      return el.removeClass("active-result");
    };
    Chosen.prototype.result_deselect = function(pos) {
      var result, result_data;
      result_data = this.results_data[pos];
      result_data.selected = false;
      this.form_field.options[result_data.options_index].selected = false;
      result = $("#" + this.container_id + "_o_" + pos);
      result.removeClass("result-selected").addClass("active-result").show();
      this.result_clear_highlight();
      this.winnow_results();
      this.form_field_jq.trigger("change");
      return this.search_field_scale();
    };
    Chosen.prototype.single_deselect_control_build = function() {
      if (this.allow_single_deselect && this.selected_item.find("abbr").length < 1) {
        return this.selected_item.find("span").first().after("<abbr class=\"search-choice-close\"></abbr>");
      }
    };
    Chosen.prototype.winnow_results = function() {
      var found, option, part, parts, regex, result_id, results, searchText, startTime, startpos, text, zregex, _i, _j, _len, _len2, _ref;
      startTime = new Date();
      this.no_results_clear();
      results = 0;
      searchText = this.search_field.val() === this.default_text ? "" : $('<div/>').text($.trim(this.search_field.val())).html();
      regex = new RegExp('^' + searchText.replace(/[-[\]{}()*+?.,\\^$|#\s]/g, "\\$&"), 'i');
      zregex = new RegExp(searchText.replace(/[-[\]{}()*+?.,\\^$|#\s]/g, "\\$&"), 'i');
      _ref = this.results_data;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        option = _ref[_i];
        if (!option.disabled && !option.empty) {
          if (option.group) {
            $('#' + option.dom_id).hide();
          } else if (!(this.is_multiple && option.selected)) {
            found = false;
            result_id = option.dom_id;
            if (regex.test(option.html)) {
              found = true;
              results += 1;
            } else if (option.html.indexOf(" ") >= 0 || option.html.indexOf("[") === 0) {
              parts = option.html.replace(/\[|\]/g, "").split(" ");
              if (parts.length) {
                for (_j = 0, _len2 = parts.length; _j < _len2; _j++) {
                  part = parts[_j];
                  if (regex.test(part)) {
                    found = true;
                    results += 1;
                  }
                }
              }
            }
            if (found) {
              if (searchText.length) {
                startpos = option.html.search(zregex);
                text = option.html.substr(0, startpos + searchText.length) + '</em>' + option.html.substr(startpos + searchText.length);
                text = text.substr(0, startpos) + '<em>' + text.substr(startpos);
              } else {
                text = option.html;
              }
              if ($("#" + result_id).html !== text) {
                $("#" + result_id).html(text);
              }
              this.result_activate($("#" + result_id));
              if (option.group_array_index != null) {
                $("#" + this.results_data[option.group_array_index].dom_id).show();
              }
            } else {
              if (this.result_highlight && result_id === this.result_highlight.attr('id')) {
                this.result_clear_highlight();
              }
              this.result_deactivate($("#" + result_id));
            }
          }
        }
      }
      if (results < 1 && searchText.length) {
        return this.no_results(searchText);
      } else {
        return this.winnow_results_set_highlight();
      }
    };
    Chosen.prototype.winnow_results_clear = function() {
      var li, lis, _i, _len, _results;
      this.search_field.val("");
      lis = this.search_results.find("li");
      _results = [];
      for (_i = 0, _len = lis.length; _i < _len; _i++) {
        li = lis[_i];
        li = $(li);
        _results.push(li.hasClass("group-result") ? li.show() : !this.is_multiple || !li.hasClass("result-selected") ? this.result_activate(li) : void 0);
      }
      return _results;
    };
    Chosen.prototype.winnow_results_set_highlight = function() {
      var do_high, selected_results;
      if (!this.result_highlight) {
        selected_results = !this.is_multiple ? this.search_results.find(".result-selected.active-result") : [];
        do_high = selected_results.length ? selected_results.first() : this.search_results.find(".active-result").first();
        if (do_high != null) {
          return this.result_do_highlight(do_high);
        }
      }
    };
    Chosen.prototype.no_results = function(terms) {
      var no_results_html;
      no_results_html = $('<li class="no-results">' + this.results_none_found + ' "<span></span>"</li>');
      no_results_html.find("span").first().html(terms);
      return this.search_results.append(no_results_html);
    };
    Chosen.prototype.no_results_clear = function() {
      return this.search_results.find(".no-results").remove();
    };
    Chosen.prototype.keydown_arrow = function() {
      var first_active, next_sib;
      if (!this.result_highlight) {
        first_active = this.search_results.find("li.active-result").first();
        if (first_active) {
          this.result_do_highlight($(first_active));
        }
      } else if (this.results_showing) {
        next_sib = this.result_highlight.nextAll("li.active-result").first();
        if (next_sib) {
          this.result_do_highlight(next_sib);
        }
      }
      if (!this.results_showing) {
        return this.results_show();
      }
    };
    Chosen.prototype.keyup_arrow = function() {
      var prev_sibs;
      if (!this.results_showing && !this.is_multiple) {
        return this.results_show();
      } else if (this.result_highlight) {
        prev_sibs = this.result_highlight.prevAll("li.active-result");
        if (prev_sibs.length) {
          return this.result_do_highlight(prev_sibs.first());
        } else {
          if (this.choices > 0) {
            this.results_hide();
          }
          return this.result_clear_highlight();
        }
      }
    };
    Chosen.prototype.keydown_backstroke = function() {
      if (this.pending_backstroke) {
        this.choice_destroy(this.pending_backstroke.find("a").first());
        return this.clear_backstroke();
      } else {
        this.pending_backstroke = this.search_container.siblings("li.search-choice").last();
        return this.pending_backstroke.addClass("search-choice-focus");
      }
    };
    Chosen.prototype.clear_backstroke = function() {
      if (this.pending_backstroke) {
        this.pending_backstroke.removeClass("search-choice-focus");
      }
      return this.pending_backstroke = null;
    };
    Chosen.prototype.keydown_checker = function(evt) {
      var stroke, _ref;
      stroke = (_ref = evt.which) != null ? _ref : evt.keyCode;
      this.search_field_scale();
      if (stroke !== 8 && this.pending_backstroke) {
        this.clear_backstroke();
      }
      switch (stroke) {
        case 8:
          this.backstroke_length = this.search_field.val().length;
          break;
        case 9:
          if (this.results_showing && !this.is_multiple) {
            this.result_select(evt);
          }
          this.mouse_on_container = false;
          break;
        case 13:
          evt.preventDefault();
          break;
        case 38:
          evt.preventDefault();
          this.keyup_arrow();
          break;
        case 40:
          this.keydown_arrow();
          break;
      }
    };
    Chosen.prototype.search_field_scale = function() {
      var dd_top, div, h, style, style_block, styles, w, _i, _len;
      if (this.is_multiple) {
        h = 0;
        w = 0;
        style_block = "position:absolute; left: -1000px; top: -1000px; display:none;";
        styles = ['font-size', 'font-style', 'font-weight', 'font-family', 'line-height', 'text-transform', 'letter-spacing'];
        for (_i = 0, _len = styles.length; _i < _len; _i++) {
          style = styles[_i];
          style_block += style + ":" + this.search_field.css(style) + ";";
        }
        div = $('<div />', {
          'style': style_block
        });
        div.text(this.search_field.val());
        $('body').append(div);
        w = div.width() + 25;
        div.remove();
        if (w > this.f_width - 10) {
          w = this.f_width - 10;
        }
        this.search_field.css({
          'width': w + 'px'
        });
        dd_top = this.container.height();
        return this.dropdown.css({
          "top": dd_top + "px"
        });
      }
    };
    Chosen.prototype.generate_random_id = function() {
      var string;
      string = "sel" + this.generate_random_char() + this.generate_random_char() + this.generate_random_char();
      while ($("#" + string).length > 0) {
        string += this.generate_random_char();
      }
      return string;
    };
    return Chosen;
  })();
  get_side_border_padding = function(elmt) {
    var side_border_padding;
    return side_border_padding = elmt.outerWidth() - elmt.width();
  };
  root.get_side_border_padding = get_side_border_padding;
}).call(this);



/*===============================
/bt_fashion30/media/com_finder/js/autocompleter.js
================================================================================*/;
var Observer=new Class({Implements:[Options,Events],options:{periodical:false,delay:1000},initialize:function(el,onFired,options){this.element=document.id(el)||$document.id(el);this.addEvent('onFired',onFired);this.setOptions(options);this.bound=this.changed.bind(this);this.resume();},changed:function(){var value=this.element.get('value');if($equals(this.value,value))return;this.clear();this.value=value;this.timeout=this.onFired.delay(this.options.delay,this);},setValue:function(value){this.value=value;this.element.set('value',value);return this.clear();},onFired:function(){this.fireEvent('onFired',[this.value,this.element]);},clear:function(){clearTimeout(this.timeout||null);return this;},pause:function(){if(this.timer)clearTimeout(this.timer);else this.element.removeEvent('keyup',this.bound);return this.clear();},resume:function(){this.value=this.element.get('value');if(this.options.periodical)this.timer=this.changed.periodical(this.options.periodical,this);else this.element.addEvent('keyup',this.bound);return this;}});var $equals=function(obj1,obj2){return(obj1==obj2||JSON.encode(obj1)==JSON.encode(obj2));};var Autocompleter=new Class({Implements:[Options,Events],options:{minLength:1,markQuery:true,width:'inherit',maxChoices:10,injectChoice:null,customChoices:null,emptyChoices:null,visibleChoices:true,className:'autocompleter-choices',zIndex:1000,delay:400,observerOptions:{},fxOptions:{},autoSubmit:false,overflow:false,overflowMargin:25,selectFirst:false,filter:null,filterCase:false,filterSubset:false,forceSelect:false,selectMode:true,choicesMatch:null,multiple:false,separator:', ',separatorSplit:/\s*[,;]\s*/,autoTrim:false,allowDupes:false,cache:true,relative:false},initialize:function(element,options){this.element=document.id(element);this.setOptions(options);this.build();this.observer=new Observer(this.element,this.prefetch.bind(this),Object.merge({},{'delay':this.options.delay},this.options.observerOptions));this.queryValue=null;if(this.options.filter)this.filter=this.options.filter.bind(this);var mode=this.options.selectMode;this.typeAhead=(mode=='type-ahead');this.selectMode=(mode===true)?'selection':mode;this.cached=[];},build:function(){if(document.id(this.options.customChoices)){this.choices=this.options.customChoices;}else{this.choices=new Element('ul',{'class':this.options.className,'styles':{'zIndex':this.options.zIndex}}).inject(document.body);this.relative=false;if(this.options.relative){this.choices.inject(this.element,'after');this.relative=this.element.getOffsetParent();}
this.fix=new OverlayFix(this.choices);}
if(!this.options.separator.test(this.options.separatorSplit)){this.options.separatorSplit=this.options.separator;}
this.fx=(!this.options.fxOptions)?null:new Fx.Tween(this.choices,Object.merge({},{'property':'opacity','link':'cancel','duration':200},this.options.fxOptions)).addEvent('onStart',Chain.prototype.clearChain).set(0);this.element.setProperty('autocomplete','off').addEvent((Browser.ie||Browser.safari||Browser.chrome)?'keydown':'keypress',this.onCommand.bind(this)).addEvent('click',this.onCommand.bind(this,[false])).addEvent('focus',this.toggleFocus.pass({bind:this,arguments:true,delay:100})).addEvent('blur',this.toggleFocus.pass({bind:this,arguments:false,delay:100}));},destroy:function(){if(this.fix)this.fix.destroy();this.choices=this.selected=this.choices.destroy();},toggleFocus:function(state){this.focussed=state;if(!state)this.hideChoices(true);this.fireEvent((state)?'onFocus':'onBlur',[this.element]);},onCommand:function(e){if(!e&&this.focussed)return this.prefetch();if(e&&e.key&&!e.shift){switch(e.key){case'enter':if(this.element.value!=this.opted)return true;if(this.selected&&this.visible){this.choiceSelect(this.selected);return!!(this.options.autoSubmit);}
break;case'up':case'down':if(!this.prefetch()&&this.queryValue!==null){var up=(e.key=='up');this.choiceOver((this.selected||this.choices)[(this.selected)?((up)?'getPrevious':'getNext'):((up)?'getLast':'getFirst')](this.options.choicesMatch),true);}
return false;case'esc':case'tab':this.hideChoices(true);break;}}
return true;},setSelection:function(finish){var input=this.selected.inputValue,value=input;var start=this.queryValue.length,end=input.length;if(input.substr(0,start).toLowerCase()!=this.queryValue.toLowerCase())start=0;if(this.options.multiple){var split=this.options.separatorSplit;value=this.element.value;start+=this.queryIndex;end+=this.queryIndex;var old=value.substr(this.queryIndex).split(split,1)[0];value=value.substr(0,this.queryIndex)+input+value.substr(this.queryIndex+old.length);if(finish){var tokens=value.split(this.options.separatorSplit).filter(function(entry){return this.test(entry);},/[^\s,]+/);if(!this.options.allowDupes)tokens=[].combine(tokens);var sep=this.options.separator;value=tokens.join(sep)+sep;end=value.length;}}
this.observer.setValue(value);this.opted=value;if(finish||this.selectMode=='pick')start=end;this.element.selectRange(start,end);this.fireEvent('onSelection',[this.element,this.selected,value,input]);},showChoices:function(){var match=this.options.choicesMatch,first=this.choices.getFirst(match);this.selected=this.selectedValue=null;if(this.fix){var pos=this.element.getCoordinates(this.relative),width=this.options.width||'auto';this.choices.setStyles({'left':pos.left,'top':pos.bottom,'width':(width===true||width=='inherit')?pos.width:width});}
if(!first)return;if(!this.visible){this.visible=true;this.choices.setStyle('display','');if(this.fx)this.fx.start(1);this.fireEvent('onShow',[this.element,this.choices]);}
if(this.options.selectFirst||this.typeAhead||first.inputValue==this.queryValue)this.choiceOver(first,this.typeAhead);var items=this.choices.getChildren(match),max=this.options.maxChoices;var styles={'overflowY':'hidden','height':''};this.overflown=false;if(items.length>max){var item=items[max-1];styles.overflowY='scroll';styles.height=item.getCoordinates(this.choices).bottom;this.overflown=true;};this.choices.setStyles(styles);this.fix.show();if(this.options.visibleChoices){var scroll=document.getScroll(),size=document.getSize(),coords=this.choices.getCoordinates();if(coords.right>scroll.x+size.x)scroll.x=coords.right-size.x;if(coords.bottom>scroll.y+size.y)scroll.y=coords.bottom-size.y;window.scrollTo(Math.min(scroll.x,coords.left),Math.min(scroll.y,coords.top));}},hideChoices:function(clear){if(clear){var value=this.element.value;if(this.options.forceSelect)value=this.opted;if(this.options.autoTrim){value=value.split(this.options.separatorSplit).filter($arguments(0)).join(this.options.separator);}
this.observer.setValue(value);}
if(!this.visible)return;this.visible=false;if(this.selected)this.selected.removeClass('autocompleter-selected');this.observer.clear();var hide=function(){this.choices.setStyle('display','none');this.fix.hide();}.bind(this);if(this.fx)this.fx.start(0).chain(hide);else hide();this.fireEvent('onHide',[this.element,this.choices]);},prefetch:function(){var value=this.element.value,query=value;if(this.options.multiple){var split=this.options.separatorSplit;var values=value.split(split);var index=this.element.getSelectedRange().start;var toIndex=value.substr(0,index).split(split);var last=toIndex.length-1;index-=toIndex[last].length;query=values[last];}
if(query.length<this.options.minLength){this.hideChoices();}else{if(query===this.queryValue||(this.visible&&query==this.selectedValue)){if(this.visible)return false;this.showChoices();}else{this.queryValue=query;this.queryIndex=index;if(!this.fetchCached())this.query();}}
return true;},fetchCached:function(){return false;if(!this.options.cache||!this.cached||!this.cached.length||this.cached.length>=this.options.maxChoices||this.queryValue)return false;this.update(this.filter(this.cached));return true;},update:function(tokens){this.choices.empty();this.cached=tokens;var type=tokens&&typeOf(tokens);if(!type||(type=='array'&&!tokens.length)||(type=='hash'&&!tokens.getLength())){(this.options.emptyChoices||this.hideChoices).call(this);}else{if(this.options.maxChoices<tokens.length&&!this.options.overflow)tokens.length=this.options.maxChoices;tokens.each(this.options.injectChoice||function(token){var choice=new Element('li',{'html':this.markQueryValue(token)});choice.inputValue=token;this.addChoiceEvents(choice).inject(this.choices);},this);this.showChoices();}},choiceOver:function(choice,selection){if(!choice||choice==this.selected)return;if(this.selected)this.selected.removeClass('autocompleter-selected');this.selected=choice.addClass('autocompleter-selected');this.fireEvent('onSelect',[this.element,this.selected,selection]);if(!this.selectMode)this.opted=this.element.value;if(!selection)return;this.selectedValue=this.selected.inputValue;if(this.overflown){var coords=this.selected.getCoordinates(this.choices),margin=this.options.overflowMargin,top=this.choices.scrollTop,height=this.choices.offsetHeight,bottom=top+height;if(coords.top-margin<top&&top)this.choices.scrollTop=Math.max(coords.top-margin,0);else if(coords.bottom+margin>bottom)this.choices.scrollTop=Math.min(coords.bottom-height+margin,bottom);}
if(this.selectMode)this.setSelection();},choiceSelect:function(choice){if(choice)this.choiceOver(choice);this.setSelection(true);this.queryValue=false;this.hideChoices();},filter:function(tokens){return(tokens||this.tokens).filter(function(token){return this.test(token);},new RegExp(((this.options.filterSubset)?'':'^')+this.queryValue.escapeRegExp(),(this.options.filterCase)?'':'i'));},markQueryValue:function(str){return(!this.options.markQuery||!this.queryValue)?str:str.replace(new RegExp('('+((this.options.filterSubset)?'':'^')+this.queryValue.escapeRegExp()+')',(this.options.filterCase)?'':'i'),'<span class="autocompleter-queried">$1</span>');},addChoiceEvents:function(el){return el.addEvents({'mouseover':this.choiceOver.bind(this,el),'click':this.choiceSelect.bind(this,el)});}});var OverlayFix=new Class({initialize:function(el){if(Browser.ie){this.element=document.id(el);this.relative=this.element.getOffsetParent();this.fix=new Element('iframe',{'frameborder':'0','scrolling':'no','src':'javascript:false;','styles':{'position':'absolute','border':'none','display':'none','filter':'progid:DXImageTransform.Microsoft.Alpha(opacity=0)'}}).inject(this.element,'after');}},show:function(){if(this.fix){var coords=this.element.getCoordinates(this.relative);delete coords.right;delete coords.bottom;this.fix.setStyles(Object.append(coords,{'display':'','zIndex':(this.element.getStyle('zIndex')||1)-1}));}
return this;},hide:function(){if(this.fix)this.fix.setStyle('display','none');return this;},destroy:function(){if(this.fix)this.fix=this.fix.destroy();}});Element.implement({getSelectedRange:function(){if(!Browser.ie)return{start:this.selectionStart,end:this.selectionEnd};var pos={start:0,end:0};var range=this.getDocument().selection.createRange();if(!range||range.parentElement()!=this)return pos;var dup=range.duplicate();if(this.type=='text'){pos.start=0-dup.moveStart('character',-100000);pos.end=pos.start+range.text.length;}else{var value=this.value;var offset=value.length-value.match(/[\n\r]*$/)[0].length;dup.moveToElementText(this);dup.setEndPoint('StartToEnd',range);pos.end=offset-dup.text.length;dup.setEndPoint('StartToStart',range);pos.start=offset-dup.text.length;}
return pos;},selectRange:function(start,end){if(Browser.ie){var diff=this.value.substr(start,end-start).replace(/\r/g,'').length;start=this.value.substr(0,start).replace(/\r/g,'').length;var range=this.createTextRange();range.collapse(true);range.moveEnd('character',start+diff);range.moveStart('character',start);range.select();}else{this.focus();this.setSelectionRange(start,end);}
return this;}});Autocompleter.Base=Autocompleter;Autocompleter.Request=new Class({Extends:Autocompleter,options:{postData:{},ajaxOptions:{},postVar:'value'},query:function(){var data=this.options.postData.unlink||{};data[this.options.postVar]=this.queryValue;var indicator=document.id(this.options.indicator);if(indicator)indicator.setStyle('display','');var cls=this.options.indicatorClass;if(cls)this.element.addClass(cls);this.fireEvent('onRequest',[this.element,this.request,data,this.queryValue]);this.request.send({'data':data});},queryResponse:function(){var indicator=document.id(this.options.indicator);if(indicator)indicator.setStyle('display','none');var cls=this.options.indicatorClass;if(cls)this.element.removeClass(cls);return this.fireEvent('onComplete',[this.element,this.request]);}});Autocompleter.Request.JSON=new Class({Extends:Autocompleter.Request,initialize:function(el,url,options){this.parent(el,options);this.request=new Request.JSON(Object.merge({},{'url':url,'link':'cancel'},this.options.ajaxOptions)).addEvent('onComplete',this.queryResponse.bind(this));},queryResponse:function(response){this.parent();this.update(response);}});Autocompleter.Request.HTML=new Class({Extends:Autocompleter.Request,initialize:function(el,url,options){this.parent(el,options);this.request=new Request.HTML(Object.merge({},{'url':url,'link':'cancel','update':this.choices},this.options.ajaxOptions)).addEvent('onComplete',this.queryResponse.bind(this));},queryResponse:function(tree,elements){this.parent();if(!elements||!elements.length){this.hideChoices();}else{this.choices.getChildren(this.options.choicesMatch).each(this.options.injectChoice||function(choice){var value=choice.innerHTML;choice.inputValue=value;this.addChoiceEvents(choice.set('html',this.markQueryValue(value)));},this);this.showChoices();}}});Autocompleter.Ajax={Base:Autocompleter.Request,Json:Autocompleter.Request.JSON,Xhtml:Autocompleter.Request.HTML};