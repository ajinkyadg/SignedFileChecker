#!/bin/bash

# Update apt cache.
sudo apt-get update

# Install Nginx.
sudo apt-get install -y nginx

# Set the home page.
echo "<html><!-- Text between angle brackets is an HTML tag and is not displayed.
Most tags, such as the HTML and /HTML tags that surround the contents of
a page, come in pairs; some tags, like HR, for a horizontal rule, stand 
alone. Comments, such as the text you're reading, are not displayed when
the Web page is shown. The information between the HEAD and /HEAD tags is 
not displayed. The information between the BODY and /BODY tags is displayed.--><head><script data-ezscrex='false' data-cfasync='false' data-pagespeed-no-defer>var __ez=__ez||{};__ez.stms=Date.now();__ez.evt={};__ez.script={};__ez.ck=__ez.ck||{};__ez.template={};__ez.template.isOrig=false;__ez.queue=(function(){var count=0,incr=0,items=[],timeDelayFired=false,hpItems=[],lpItems=[],allowLoad=true;var obj={func:function(name,funcName,parameters,isBlock,blockedBy,deleteWhenComplete,proceedIfError){var self=this;this.name=name;this.funcName=funcName;this.parameters=parameters===null?null:(parameters instanceof Array)?parameters:[parameters];this.isBlock=isBlock;this.blockedBy=blockedBy;this.deleteWhenComplete=deleteWhenComplete;this.isError=false;this.isComplete=false;this.isInitialized=false;this.proceedIfError=proceedIfError;this.isTimeDelay=false;this.process=function(){log("... func = "+name);self.isInitialized=true;self.isComplete=true;log("... func.apply: "+name);var funcs=self.funcName.split('.');var func=null;if(funcs.length>3){}else if(funcs.length===3){func=window[funcs[0]][funcs[1]][funcs[2]];}else if(funcs.length===2){func=window[funcs[0]][funcs[1]];}else{func=window[self.funcName];}
if(typeof func!=='undefined'&&func!==null){func.apply(null,this.parameters);}
if(self.deleteWhenComplete===true)delete items[name];if(self.isBlock===true){log("----- F'D: "+self.name);processAll();}}},file:function(name,path,isBlock,blockedBy,async,defer,proceedIfError){var self=this;this.name=name;this.path=path;this.async=async;this.defer=defer;this.isBlock=isBlock;this.blockedBy=blockedBy;this.isInitialized=false;this.isError=false;this.isComplete=false;this.proceedIfError=proceedIfError;this.isTimeDelay=false;this.process=function(){self.isInitialized=true;log("... file = "+name);var scr=document.createElement('script');scr.src=path;if(async===true)scr.async=true;else if(defer===true)scr.defer=true;scr.onerror=function(){log("----- ERR'D: "+self.name);self.isError=true;if(self.isBlock===true){processAll();}};scr.onreadystatechange=scr.onload=function(){var state=scr.readyState;log("----- F'D: "+self.name);if((!state||/loaded|complete/.test(state))){self.isComplete=true;if(self.isBlock===true){processAll();}}};document.getElementsByTagName('head')[0].appendChild(scr);}},fileLoaded:function(name,isComplete){this.name=name;this.path="";this.async=false;this.defer=false;this.isBlock=false;this.blockedBy=[];this.isInitialized=true;this.isError=false;this.isComplete=isComplete;this.proceedIfError=false;this.isTimeDelay=false;this.process=function(){};}};function init(){window.addEventListener("load",function(){setTimeout(function(){timeDelayFired=true;log('TDELAY -----');processAll();},5000);},false);}
function addFile(name,path,isBlock,blockedBy,async,defer,proceedIfError,priority){var item=new obj.file(name,path,isBlock,blockedBy,async,defer,proceedIfError);if(priority===true){hpItems[name]=item}else{lpItems[name]=item}
items[name]=item;checkIfBlocked(item);}
function setallowLoad(settobool){allowLoad=settobool}
function addFunc(name,func,parameters,isBlock,blockedBy,autoInc,deleteWhenComplete,proceedIfError,priority){if(autoInc===true)name=name+"_"+incr++;var item=new obj.func(name,func,parameters,isBlock,blockedBy,deleteWhenComplete,proceedIfError);if(priority===true){hpItems[name]=item}else{lpItems[name]=item}
items[name]=item;checkIfBlocked(item);}
function addTimeDelayFile(name,path){var item=new obj.file(name,path,false,[],false,false,true);item.isTimeDelay=true;log(name+' ... '+' FILE! TDELAY');lpItems[name]=item;items[name]=item;checkIfBlocked(item);}
function addTimeDelayFunc(name,func,parameters){var item=new obj.func(name,func,parameters,false,[],true,true);item.isTimeDelay=true;log(name+' ... '+' FUNCTION! TDELAY');lpItems[name]=item;items[name]=item;checkIfBlocked(item);}
function checkIfBlocked(item){if(isBlocked(item)===true||allowLoad==false)return;item.process();}
function isBlocked(item){if(item.isTimeDelay===true&&timeDelayFired===false){log(item.name+" blocked = TIME DELAY!");return true;}
if(item.blockedBy instanceof Array){for(var i=0;i<item.blockedBy.length;i++){var block=item.blockedBy[i];if(items.hasOwnProperty(block)===false){log(item.name+" blocked = "+block);return true;}else if(item.proceedIfError===true&&items[block].isError===true){return false;}else if(items[block].isComplete===false){log(item.name+" blocked = "+block);return true;}}}
return false;}
function markLoaded(filename){if(!filename||0===filename.length){return;}
if(filename in items){var item=items[filename];if(item.isComplete===true){log(item.name+' '+filename+': error loaded duplicate')}else{item.isComplete=true;item.isInitialized=true;}}else{items[filename]=new obj.fileLoaded(filename,true);}
log("markLoaded dummyfile: "+items[filename].name);}
function logWhatsBlocked(){for(var i in items){if(items.hasOwnProperty(i)===false)continue;var item=items[i];isBlocked(item)}}
function log(msg){var href=window.location.href;var reg=new RegExp('[?&]ezq=([^&#]*)','i');var string=reg.exec(href);var res=string?string[1]:null;if(res==="1")console.debug(msg);}
function processAll(){count++;if(count>200)return;log("let's go");processItems(hpItems);processItems(lpItems);}
function processItems(list){for(var i in list){if(list.hasOwnProperty(i)===false)continue;var item=list[i];if(item.isComplete===true||isBlocked(item)||item.isInitialized===true||item.isError===true){if(item.isError===true){log(item.name+': error')}else if(item.isComplete===true){log(item.name+': complete already')}else if(item.isInitialized===true){log(item.name+': initialized already')}}else{item.process();}}}
init();return{addFile:addFile,addDelayFile:addTimeDelayFile,addFunc:addFunc,addDelayFunc:addTimeDelayFunc,items:items,processAll:processAll,setallowLoad:setallowLoad,markLoaded:markLoaded,logWhatsBlocked:logWhatsBlocked,};})();__ez.evt.add=function(e,t,n){e.addEventListener?e.addEventListener(t,n,!1):e.attachEvent?e.attachEvent("on"+t,n):e["on"+t]=n()},__ez.evt.remove=function(e,t,n){e.removeEventListener?e.removeEventListener(t,n,!1):e.detachEvent?e.detachEvent("on"+t,n):delete e["on"+t]};__ez.script.add=function(e){var t=document.createElement("script");t.src=e,t.async=!0,t.type="text/javascript",document.getElementsByTagName("head")[0].appendChild(t)};__ez.dot={};</script>
<link rel="preconnect" href="//www.mygifs.com" crossorigin>
<link rel="preconnect" href="//www.dummies.com" crossorigin>
<link rel="preconnect" href="//go.ezoic.net" crossorigin>
<script>window.ezslots_raw=[];var __sellerid='cc7dee9232e820ec3d37cae9d028177c';var __schain_domain='filesamples.com';var __ez_nid ='21732118914';__advertiserRule=[''];var ezasVars = {'cid':'','pid':'','ssid':44};var adsenseNoUnit = true;window.google_reactive_ads_global_state = {
                adCount: {},
                floatingAdsStacking: { maxZIndexListeners: [], maxZIndexRestrictions: {}, nextRestrictionId: 0 },
                messageValidationEnabled: false,
                reactiveTypeDisabledByPublisher: {},
                reactiveTypeEnabledInAsfe: {},
                sideRailAvailableSpace: [],
                sideRailOverlappableElements: [],
                stateForType: {},
                tagSpecificState: {},
                wasPlaTagProcessed: true,
                wasReactiveAdConfigReceived: { 1: true, 2: true, 8: true },
                wasReactiveAdVisible: {},
                wasReactiveTagRequestSent: true,
                description: "Can't disable auto ads programmatically on the page, so here we are!"
            };window.ezasvEvent=function(e,o){if(e[0].isIntersecting===true){var i=e[0].target.attributes[0].value.substr(0,e[0].target.attributes[0].value.length-9);window.ezoSTPixelAdd(i,'viewed',1);o.disconnect();}};window.ezaslEvent=function(m,o){if(typeof m[0].target.attributes['data-ad-status']!='undefined'){var v=m[0].target.attributes['data-ad-status'].value;var i=m[0].target.attributes[0].value.substr(0,m[0].target.attributes[0].value.length-9);if(v=='filled'){window.ezoSTPixelAdd(i,'loaded',1);var vo=new IntersectionObserver(window.ezasvEvent,{threshold:[1]});vo.observe(document.getElementById(i+'-asloaded'));}
if(v=='unfilled'){window.ezoAdBackFill(m);}
o.disconnect();}};window.ezoAdBackFill=function(m){var target=m[0].target;var parent=target.parentElement;target.style.display='none !important';var s=[parseInt(parent.getAttribute('ezaw')),parseInt(parent.getAttribute('ezah'))];var slsf=parent.parentElement.getAttribute('data-ez-name');var pId=parseInt(parent.parentElement.className.substr(parent.parentElement.className.lastIndexOf("-")+1));var sl=__ez_fad_initslot[parent.id]();var gId=parseInt(parent.id.substr(parent.id.lastIndexOf('-')+1,1));var man=0;if(parent.id.lastIndexOf('_')==parent.id.length-2){man=parseInt(parent.id.substr(parent.id.length-1,1));}
var adUnit=[s,slsf,sl,pId,gId,man];var slot=window[sl];slot.setTargeting('compid','0');slot.setTargeting('bkfl','1');var br2=slot.getTargeting('br2')[0];if(typeof window.ezobfh!='undefined'&&typeof window.ezobfh[br2]!='undefined'){slot.setTargeting('br1',br2);slot.setTargeting('eb_br',window.ezobfh[br2]);}
eval(ez_write_tag(adUnit));};window.ezoSTPixels=[];var stPixelInterval=setInterval(function(){if(typeof __ez!=='undefined'&&typeof __ezDotData!=='undefined'&&(typeof ezslots!=='undefined'&&window.ezslots_raw.length>0)){window.ezoSTPixelFire();clearInterval(stPixelInterval);}},250);window.ezoSTPixelAdd=function(id,name,value){window.ezoSTPixels.push({id:id,name:name,value:value});window.ezoSTPixelFire();};window.ezoGetSlotById=function(id){var slotId=id.split('div-gpt-ad-')[1].split('-',3).join('-');for(s in window.ezslots_raw){if(window.ezslots_raw[s].tap.includes(slotId)){return window.ezslots_raw[s];}}};window.ezoGetSlotNum=function(id){var slotId=id.split('div-gpt-ad-')[1].split('-',3).join('-');for(s in window.ezslots_raw){if(window.ezslots_raw[s].tap.includes(slotId)){return s;}}};window.ezoSTPixelFire=function(){if(typeof __ez!=='undefined'&&typeof __ezDotData!=='undefined'&&(typeof ezslots!=='undefined'&&window.ezslots_raw.length>0)){while(window.ezoSTPixels.length>0){var event=window.ezoSTPixels.shift();var s=window.ezoGetSlotById(event.id);if(typeof s==="undefined"){window.ezoSTPixels.push(event);return;}
var pxData=[{type:'impression',impression_id:s.eid,domain_id:window.did.toString(),unit:event.id,t_epoch:__ez.dot.getEpoch(0),ad_position:parseInt(s.ap),country_code:__ez.dot.getCC(),pageview_id:__ez.dot.getPageviewId(),comp_id:1,data:__ez.dot.dataToStr([(new __ezDotData(event.name,event.value.toString()))]),is_orig:0}];var pxURL='/porpoiseant/army.gif';var pixelURL=__ez.dot.getURL(pxURL)+'?orig=0&sts='+btoa(JSON.stringify(pxData));__ez.dot.Fire(pixelURL);}}};</script>
<script>window.ezhbopt=true;</script>
<script>window.ezpbCache=true;</script>
<link href="//ad.doubleclick.net" rel="dns-prefetch">
<link href="//pagead2.googlesyndication.com" rel="dns-prefetch">
<link href="//googleads.g.doubleclick.net" rel="dns-prefetch">
<link href="//tpc.googlesyndication.com" rel="dns-prefetch">
<link href="//adservice.google.com" rel="dns-prefetch">
<link href="//secureads.g.doubleclick.net" rel="dns-prefetch">
<link href="//www.googletagservices.com" rel="dns-prefetch">
<link rel='preload' as='script' href='//securepubads.g.doubleclick.net/tag/js/gpt.js'>
<link rel='preload' as='script' href='//go.ezodn.com/hb/dall.js?b=amx,criteo,oftmedia,onemobile,onetag,pubmatic,pulsepoint,sharethrough,smilewanted,spotx,unruly,yahoossp,yieldmo&cb=195-2-44' onerror="window.ezDallErr=true">
<script type="text/javascript">
	var __banger_pmp_deals=function(){var d={17:{"DealId":17,"Floor":160},18:{"DealId":18,"Floor":25},19:{"DealId":19,"Floor":100},20:{"DealId":20,"Floor":300},1428:{"DealId":1428,"Floor":25},2310:{"DealId":2310,"Floor":400},2351:{"DealId":2351,"Floor":155},2526:{"DealId":2526,"Floor":300},2527:{"DealId":2527,"Floor":300},2610:{"DealId":2610,"Floor":125},2688:{"DealId":2688,"Floor":100},2693:{"DealId":2693,"Floor":50},2761:{"DealId":2761,"Floor":200},2763:{"DealId":2763,"Floor":250},2764:{"DealId":2764,"Floor":325},2765:{"DealId":2765,"Floor":400},3044:{"DealId":3044,"Floor":175},3045:{"DealId":3045,"Floor":75},3052:{"DealId":3052,"Floor":20},3053:{"DealId":3053,"Floor":37},3054:{"DealId":3054,"Floor":555},3154:{"DealId":3154,"Floor":275},3455:{"DealId":3455,"Floor":475},3456:{"DealId":3456,"Floor":525},3457:{"DealId":3457,"Floor":600},3682:{"DealId":3682,"Floor":650},3684:{"DealId":3684,"Floor":375},835:{"DealId":835,"Floor":200}};return[{"SlotName":"/21732118914,22573772600/filesamples_com-box-2","Deals":[d[17],d[18],d[19],d[20],d[1428],d[2310],d[2351],d[2526],d[2527],d[2610],d[2688],d[2693],d[2761],d[2763],d[2764],d[2765],d[3044],d[3045],d[3052],d[3053],d[3054],d[3154],d[3455],d[3456],d[3457],d[3682],d[3684],d[835]]},{"SlotName":"/21732118914,22573772600/filesamples_com-medrectangle-2","Deals":[d[17],d[18],d[19],d[20],d[1428],d[2310],d[2351],d[2526],d[2527],d[2610],d[2688],d[2693],d[2761],d[2763],d[2764],d[2765],d[3044],d[3045],d[3052],d[3053],d[3054],d[3154],d[3455],d[3456],d[3457],d[3682],d[3684],d[835]]}]}();
</script>
<script type='text/javascript'>_ebcids=[138231308856,138231308940,138231308949,138231387842,138231421744,138231421759,138231421774,138231421783,138231421789,138231421792,138242067587,138242067590,138242067602,138242067605,138242067608,138242067614,138242229406,138242229415,138242229421,138242229430];</script>
<script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>ezobv=129;</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>function ez_isclean(data){if(typeof data==='undefined'){data=document.URL;}
var re=/(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))(@|%2540|%40)((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))/;var isClean=!re.test(data);return isClean;}
var ezSlotKVStore={};function ezSetSlotTargeting(divid,key,value){var slot=ezGetSlotById(divid);if(slot){slot.setTargeting(key,value);}else{if(typeof ezSlotKVStore[divid]=='undefined'){ezSlotKVStore[divid]={};}
ezSlotKVStore[divid][key]=value;}}
function ezGetSlotById(id){if(typeof window.ezslots==='undefined'||window.ezslots==0){return;}
for(var i=0;i<window.ezslots.length;i++){var slot=window[ezslots[i]];if(typeof slot==='undefined'){continue;}
var slotId=slot.getSlotElementId();if(typeof slotId!=='undefined'&&slotId==id){return slot;}}}
function ezSetTargetingFromMap(slot,obj){if(typeof slot==='undefined'){return;}
for(var key in obj){if(!obj.hasOwnProperty(key)){continue;}
slot.setTargeting(key,obj[key]);}}
var ez_queue=new Array();function sort_queue(a,b)
{if(a.priority<b.priority)return-1;else if(a.priority==b.priority)return 0;else return 1;}
function execute_ez_queue()
{ez_queue.sort(sort_queue);for(var i in ez_queue)
{if(typeof ez_queue[i].method!="undefined")
{try{ez_queue[i].method.call(null);}
catch(err){}}}}
window.ez_ad_units=new Array();window.ezslots=new Array();window.ezsrqt={};function ez_write_tag(d){if(ez_isclean()&&d instanceof Array){if(typeof ezstandalone!=='undefined'&&typeof ezstandalone.selectedPlaceholders!=='undefined'&&ezstandalone.selectedPlaceholders[d[3]]===true){return "1+1";}
if(typeof ezstandaloneForAll!=='undefined'&&typeof ezstandaloneForAll.selectedPlaceholders!=='undefined'&&ezstandaloneForAll.selectedPlaceholders[d[3]]===true){return "1+1";}
ez_ad_units[ez_ad_units.length]=d;var dve="";if(typeof d[5]!='undefined'&&d[5]>0){dve='_'+d[5];}
var ezcmd="googletag.cmd.push(function() {var divid = 'div-gpt-ad-"+d[1]+"-"+d[4]+""+dve+"';if(typeof ezlrarn == 'function'){ezlrarn(divid);}googletag.display(divid);var to = 0;if("+d[2]+".getTargeting('ga')[0] == '0'){to = 500;}if((window.ezDisableInitialLoad==true || googletag.pubads().isInitialLoadDisabled()) && window.ezoll != true){setTimeout(function(){if(typeof window.adjustHbValues == 'function'){window.adjustHbValues("+d[2]+");}if(typeof window.ezasBuild == 'function' && window.ezasBuild("+d[2]+")){return;}googletag.pubads().refresh(["+d[2]+"])},to);}});";return ezcmd;}
return "1+1";}
function in_array(needle,haystack){var length=haystack.length;for(var i=0;i<length;i++){if(haystack[i]==needle)return true;}
return false;}
var ezrpos=new Array();var ez_current_interval;var ez_current_load=0;function __ez_fad_load(n,r,force){if(!force&&(!__ez_fad_csnt()||!__ez_fad_rdy()||ezslit_run[n]===true||typeof __ez_fad_divs[n]==='undefined'||__ez_fad_divs[n].length===0)){return;}
ezslit_run[n]=true;__ez_fad_gpt();if(n>0&&n!==5){__ez_fad_pb();}
googletag.cmd.push(function(){var s=[];for(var i=0;i<__ez_fad_divs[n].length;i++){if(__ez_fad_divsd.indexOf(__ez_fad_divs[n][i])==-1){__ez_fad_divsd.push(__ez_fad_divs[n][i]);s.push(__ez_fad_initslot[__ez_fad_divs[n][i]](r));googletag.display(__ez_fad_divs[n][i]);}}
var ws=[];for(i3=0;i3<s.length;i3++){var slot=window[s[i3]];if(typeof window.ezasBuild==='function'){if(window.ezasBuild(slot)){continue;}}
if(typeof window.adjustHbValues==='function'){window.adjustHbValues(slot);}
ws.push(slot);}
if(ws.length>0){googletag.pubads().refresh(ws);}
setTimeout(__ez_fad_floatshow,0);});if(n===0){if(document.readyState==="complete"){googletag.cmd.push(function(){__ez_fad_load(5,null);});setTimeout(function(){__ez_fad_load(1,null);__ez_fad_load(5,null);},5500);return;}
document.addEventListener('DOMContentLoaded',function(evt){googletag.cmd.push(function(){__ez_fad_load(5,null);});setTimeout(function(){__ez_fad_load(1,null);__ez_fad_load(5,null);},5500);},false);}}
var __ez_fad_floatshowd=false;function __ez_fad_floatshow(d){if(__ez_fad_floatshowd===true||typeof __ez_fad_floating==='undefined'){return;}
__ez_fad_floatshowd=true;var e=document.getElementById('ezmobfooter');if(e!=null){e.classList.add('ezmobtrans');}else{head=document.head||document.getElementsByTagName('head')[0],style=document.createElement('style');head.appendChild(style);var css="body > #ezmobfooter{bottom:0px;visibility:visible;}";style.type='text/css';if(style.styleSheet){style.styleSheet.cssText=css;}else{style.appendChild(document.createTextNode(css));}}
googletag.cmd.push(function(){for(var i=0;i<__ez_fad_floating.length;i++){var s=__ez_fad_initslot[__ez_fad_floating[i]](null);googletag.display(__ez_fad_floating[i]);if(typeof window.adjustHbValues==='function'){window.adjustHbValues(window[s]);}
googletag.pubads().refresh([window[s]]);}});}
var __ez_fad_initslot={};var __ez_fad_fastd=[];var __ez_fad_fastdiv=[];var __ez_fad_fastslots=[];var __ez_fad_viewslots=[];var __ez_fad_instaslots=[];var ezslit_run=[];var __ez_fad_divs=[[],[],[],[],[],[],[]];__ez_fad_divpos={};var __ez_fad_divsd=[];var __ez_fad_vw=window.screen.width;var __ez_fad_vh=window.screen.height;var __ez_fad_count=0;function __ez_fad_invisible(e){!!(e.offsetWidth||e.offsetHeight||e.getClientRects().length)}
function __ez_fad_position(id){var did=document.getElementById(id);if(did===null){return;}
var rect=did.getBoundingClientRect();var vs=window.scrollY||document.body.scrollTop||document.documentElement.scrollTop;var vh=vs+__ez_fad_vh;_ez_fad_vw=window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth;__ez_fad_vh=window.innerHeight||Math.max(document.documentElement.clientHeight,document.body.clientHeight);var height_adjust=800;if(__ez_fad_vw<1200){height_adjust=__ez_fad_vh*1.25;vh+=0;}
if(__ez_fad_floating.indexOf(id)!==-1){__ez_fad_load(6,null,true);return;}
__ez_fad_divpos[id]=rect.top;if(__ez_fad_invisible(did)&&isFloat!=true){__ez_fad_add(4,id);}else if(rect.top<vh&&(ezslit_run[0]!=true||ezslit_run[5]!=true)){if(ezslit_run[0]!=true){__ez_fad_gpt();__ez_fad_add(0,id);}else{__ez_fad_add(5,id);}}else if(rect.top<(vh+height_adjust)&&ezslit_run[1]!=true){if(ezslit_run[0]!=true){__ez_fad_load(0,0);};__ez_fad_add(1,id);}else if(rect.top<(vh+height_adjust+(__ez_fad_vh))&&ezslit_run[2]!=true){if(ezslit_run[0]!=true){__ez_fad_load(0,0);}
__ez_fad_add(2,id);}else{if(ezslit_run[0]!=true){__ez_fad_load(0,0);}
__ez_fad_add(3,id);}
__ez_fad_count++;}
function __ez_fad_add(d,id){__ez_fad_divs[d].push(id);if(ezslit_run[d]===true){ezslit_run[d]=false;}
if(typeof __ez_fad_scrollmond!=='undefined'&&__ez_fad_scrollmond===true){__ez_fad_scrollmond=false;setTimeout(__ez_fad_scrollmon,500);}}
function __ez_fad_fast(s,f,m){if(__ez_fad_fastd.indexOf(s)==-1){__ez_fad_fastd.push(s);var ebbr2='empty';var br2=0;if(typeof ezoibfh[f]!='undefined'){ebbr2=ezoibfh[f];br2=f;}
if(typeof window['ezslot_'+s]!='undefined'){var br1=parseInt(window['ezslot_'+s].getTargeting('br1')[0]);if(isNaN(br1)||br2<br1){window['ezslot_'+s].setTargeting('br1',br2).setTargeting('eb_br',ebbr2);if(m!=null){window['ezslot_'+s].setTargeting('bvr',m);}}else{}}else{}}}
function __ez_fad_csnt(){return document.cookie.indexOf('ezCMPCookieConsent')!==-1||typeof __ez_conestreq=='undefined';}
var __ez_fad_haspo=false;if(typeof PerformanceObserver!='undefined'&&typeof PerformanceObserver.supportedEntryTypes!='undefined'){if(PerformanceObserver.supportedEntryTypes.indexOf('largest-contentful-paint')>-1){__ez_fad_haspo=true;}}
function __ez_fad_rdy(){if(document.body!==null&&(__ez_fad_haspo==false&&__ez_fad_doc_ht>__ez_fad_vp_ht||__ez_fad_hascp)||document.readyState==="complete"){return true;}else{__ez_fad_doc_ht=__ez_fad_docht();__ez_fad_vp_ht=__ez_fad_vpht();}
return false;}
function __ez_fad_docht(){if(typeof document.body!='undefined'&&document.body!=null){return Math.max(document.body.scrollHeight,document.body.offsetHeight);}else if(typeof document.documentElement!='undefined'){return Math.max(document.documentElement.clientHeight,document.documentElement.scrollHeight,document.documentElement.offsetHeight);}else{return 0;}}
function __ez_fad_vpht(){if(typeof window.innerHeight!='undefined'){return window.innerHeight;}else if(typeof document.body!='undefined'&&document.body!=null){return document.body.clientHeight;}else if(typeof document.documentElement!='undefined'){return document.documentElement.clientHeight;}
else{return 0;}}
function __ez_close_anchor(){googletag.cmd.push(function(slot){for(var i=0;i<window.ezslots.length;i++){var slot=window[ezslots[i]];if(typeof slot==='undefined'){continue;}
var alS=slot.getTargeting('al')[0]%1000;if(alS==5){googletag.destroySlots([slot]);}}
if(typeof(__ez_set_outstream_floor)!=='undefined'){__ez_set_outstream_floor(0);}
var anchor=document.getElementById('ezmobfooter');if(!anchor){return;}
anchor.innerHTML='';var styleElement=document.getElementById('ezoicCSS');if(!styleElement){return;}
var styles=styleElement.sheet?styleElement.sheet:styleElement.styleSheet;for(var i=0;i<styles.cssRules.length;i++){var rules=styles.cssRules[i];if(rules.selectorText==='body'&&rules.style.height==='auto'&&(rules.style.paddingTop!==''||rules.style.paddingBottom!=='')){styles.deleteRule(i);}}});}
var __ez_fad_doc_ht=__ez_fad_docht();var __ez_fad_vp_ht=__ez_fad_vpht();var __ez_fad_hascp=false;try{const __ez__fad_po=new PerformanceObserver((entryList)=>{__ez_fad_hascp=true;});__ez__fad_po.observe({type:'largest-contentful-paint',buffered:true});}catch(e){}</script><script type='text/javascript' data-ezscrex="false">var ezorbf = []; </script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.isEZABL=false;window.ezmadspc=300;window.ezoViewCheck=false;</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.ezDisableInitialLoad=false;</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.googletag=window.googletag||{};googletag.cmd=googletag.cmd||[];</script><script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript'>window.ezogetbrkey = function(s){ var k = 'br1';var k2 = 'eb_br';if(window.ezogtk == ""){k='br1u';k2='eb_bru';}else if(window.ezogtk != "NT"){k='br1t';k2='eb_brt';} s.setTargeting('br1', s.getTargeting(k));s.setTargeting('eb_br', s.getTargeting(k2));};googletag.cmd.push(function() {ezslot_interstitial = googletag.defineOutOfPageSlot('/21732118914,22573772600/filesamples_com-pixel1',googletag.enums.OutOfPageFormat.INTERSTITIAL); if(ezslot_interstitial != null) {ezslot_interstitial.addService(googletag.pubads()).setTargeting('ga','5302779').setTargeting('tap','filesamples_com-pixel1-5929863370333060').setTargeting('ic',1).setTargeting('ezoic','1').setTargeting('bvr','0').setTargeting('eb_br','8667d34af751e626afa0f7877d61515b').setTargeting('br1','750').setTargeting('ap','9999').setTargeting('iid1','5929863370333060').setTargeting('bra','mod1');}
		googletag.pubads().enableSingleRequest();googletag.pubads().addEventListener('slotRenderEnded', function(event) { __ez.queue.addFunc("ezbanger", "ezbanger", event, false, ['banger.js'], true, true, false, true); });googletag.pubads().addEventListener('impressionViewable', function(event) { __ez.queue.addFunc("ezvb", "ezvb", event, false, ['banger.js'], true, true, false, true); });googletag.pubads().addEventListener('slotResponseReceived', function(event) { __ez.queue.addFunc("ezsr", "ezsr", event, false, ['banger.js'], true, true, false, true); });googletag.pubads().addEventListener('slotRequested', function(e) { window.ezsrqt[e.slot.getSlotElementId()] = Date.now();});googletag.pubads().disableInitialLoad();googletag.pubads().enableLazyLoad({fetchMarginPercent: 600, renderMarginPercent: 60, mobileScaling: 2.0});googletag.enableServices();});window.ezoll = false;window.ezoadxnc = '21732118914';window.ezoadhb = '750';var ezaxmns={};var ezaucmns={};

		var __ez_fad_floating = ['div-gpt-ad-filesamples_com-medrectangle-2-0'];
		var __ez_fad_gptd = __ez_fad_gptd || false;var __ez_fad_ezpbinitd = false;var __ez_fad_pbt = setTimeout(function(){__ez_fad_pb();},5000);function __ez_fad_gpt(){if(__ez_fad_gptd == false){__ez_fad_gptd=true;(function(){var gads=document.createElement('script');gads.async=true;gads.type='text/javascript';var useSSL='https:'==document.location.protocol;gads.src=(useSSL?'https:':'http:')+
'//securepubads.g.doubleclick.net/tag/js/gpt.js';var node=document.getElementsByTagName('script')[0];node.parentNode.insertBefore(gads,node);})();}}function __ez_fad_pb(){if(__ez_fad_ezpbinitd==false && typeof __ez_fad_ezpbinit == 'function'){__ez_fad_ezpbinitd = true;__ez_fad_ezpbinit()}};
		
	function __ez_init_slot(bvr, did, slotNum, defineFunc) {
		googletag.cmd.push(function() {
			defineFunc();
			ezrpos[slotNum]=slotNum;
			ezslots.push("ezslot_" + slotNum);
			if(bvr != null){
				if(typeof __ez_fad_fastslots[did] == 'function') {
					__ez_fad_fastslots[did]();
				}
			}
			if(typeof ezSlotKVStore != 'undefined' && typeof ezSlotKVStore[did] != 'undefined') {
				for (var name in ezSlotKVStore[did]) {
					if (!ezSlotKVStore.hasOwnProperty(name)) {
						ezSetSlotTargeting(did, name, ezSlotKVStore[did][name]);
					}
				}
				ezSlotKVStore[did] = {};
			}
		});return "ezslot_" + slotNum;
	}
__ez_fad_initslot['div-gpt-ad-filesamples_com-box-2-0'] = function(bvr){
				var defScript = function() {ezslot_1 = googletag.defineSlot('/21732118914,22573772600/filesamples_com-box-2',[250,250],'div-gpt-ad-filesamples_com-box-2-0').addService(googletag.pubads()).setCollapseEmptyDiv(false);var ezslot_1_raw = {'a':'1','iid1':'1086134280262866','eid':'1086134280262866','t':'134','d':'176527','t1':'134','pvc':'1','ap':'1001','sap':'1220','a':'|0|','as':'revenue','plat':'1','bra':'mod1','ic':'1','at':'mbf','adr':'399','ezosn':'1','reft':'tf','refs':'30','ga':'5302779','gala':'','rid':'99998','pt':'1','al':'1001','compid':'0','tap':'filesamples_com-box-2-1086134280262866','eb_br':'b09f4d2e4dcd3d270724508a246baee4','eba':'1','ebss':[10061,11304,11307],'bv':'5','bvm':'0','bvr':'5','shp':'1','ftsn':'12','ftsng':'12','acptad':'1','br1':'700','br2':'350','ezoic':'1','nmau':'0','mau':'0','stl':[83,13,120,67,51,0,66,20,71,30,117,31,901,902,903],'deal1':[21,22,23,24,25,26,1794,2339,3430,3458,3460,3683,774,3161]}; window.ezslots_raw.push( ezslot_1_raw);ezSetTargetingFromMap(ezslot_1,ezslot_1_raw);};
				return __ez_init_slot(bvr,'div-gpt-ad-filesamples_com-box-2-0',1, defScript);
			};__ez_fad_initslot['div-gpt-ad-filesamples_com-medrectangle-2-0'] = function(bvr){
				var defScript = function() {ezslot_0 = googletag.defineSlot('/21732118914,22573772600/filesamples_com-medrectangle-2',[728,90],'div-gpt-ad-filesamples_com-medrectangle-2-0').addService(googletag.pubads()).setCollapseEmptyDiv(false);var ezslot_0_raw = {'a':'1','iid1':'3963362692287871','eid':'3963362692287871','t':'134','d':'176527','t1':'134','pvc':'1','ap':'1100','sap':'1100','a':'|0|','as':'revenue','plat':'1','bra':'mod1','ic':'1','at':'mbf','adr':'399','ezosn':'0','reft':'tf','refs':'30','ga':'5302779','gala':'','rid':'99998','pt':'5','al':'1005','compid':'0','tap':'filesamples_com-medrectangle-2-3963362692287871','eb_br':'8667d34af751e626afa0f7877d61515b','eba':'1','ebss':[10061,11304,11307],'bv':'14','bvm':'0','bvr':'4','shp':'1','ftsn':'12','ftsng':'12','br1':'750','br2':'350','ezoic':'1','nmau':'0','mau':'0','stl':[34,16,28,67,45,0,66,20,71,30,0,31,901,902,903],'deal1':[21,22,23,24,25,26,27,28,29,30,760,761,813,815,816,817,818,819,893,899,903,917,918,919,1794,2339,3430,3458,3460,3683,774,3161]}; window.ezslots_raw.push( ezslot_0_raw);ezSetTargetingFromMap(ezslot_0,ezslot_0_raw);};
				return __ez_init_slot(bvr,'div-gpt-ad-filesamples_com-medrectangle-2-0',0, defScript);
			};</script>
<script type="text/javascript">(function(){function storageAvailable(type){var storage;try{storage=window[type];var x='__storage_test__';storage.setItem(x,x);storage.removeItem(x);return true;}
catch(e){return e instanceof DOMException&&(e.code===22||e.code===1014||e.name==='QuotaExceededError'||e.name==='NS_ERROR_DOM_QUOTA_REACHED')&&(storage&&storage.length!==0);}}
function remove_ama_config(){if(storageAvailable('localStorage')){localStorage.removeItem("google_ama_config");}}
remove_ama_config()})()</script>
<script data-ezscrex="false" data-cfasync="false">__ez.ssaf=[];__ez.sswp=4;__ez.ssv=85694;__ez.sshsdef=false;</script>
<script type="text/javascript">var ezoicTestActive = true</script>
<script data-ezscrex="false" type="text/javascript" data-cfasync="false">var _ezaq = {"ad_cache_level":1,"ad_count_adjustment":1,"ad_lazyload_version":14,"ad_load_version":1,"ad_location_ids":"6,5,1","ad_transform_level":0,"adx_ad_count":2,"bidder_method":1,"bidder_version":3,"city":"London","country":"GB","days_since_last_visit":-1,"display_ad_count":1,"domain_id":176527,"domain_test_group":20210308,"ds_adsize_opt_id":-1,"engaged_time_visit":0,"ezcache_level":0,"ezcache_skip_code":0,"form_factor_id":1,"framework_id":1,"has_bad_image":0,"has_bad_words":0,"iab_category":"","iab_category_0":"596","is_from_recommended_pages":false,"is_return_visitor":false,"is_sitespeed":1,"last_page_load":"","last_pageview_id":"","lt_cache_level":0,"max_ads":2,"metro_code":0,"optimization_version":1,"page_ad_positions":"1001,1006,1100","page_view_count":1,"page_view_id":"ae3555fe-70d7-4ac2-4a30-bdb9b8fe0624","position_selection_id":46,"postal_code":"E2","pv_event_count":0,"response_size_orig":1291,"response_time_orig":50,"serverid":"13.38.113.174:29202","state":"ENG","sub_page_ad_positions":"1006,1100,1220","t_epoch":1659862171,"template_id":134,"time_on_site_visit":0,"url":"https://filesamples.com/samples/code/html/sample2.html","user_id":0,"weather_precipitation":0,"weather_summary":"","weather_temperature":0,"word_count":84,"worst_bad_word_level":0};var _ezim_d = {"filesamples_com-box-2":{"adsense_stat_source_id":5,"adx_ad_count":2,"adx_stat_source_id":35,"full_id":"filesamples_com-box-2/2022-08-07/1086134280262866","height":"250","position_id":1001,"sub_position_id":1220,"width":"250"},"filesamples_com-medrectangle-2":{"adsense_stat_source_id":5,"adx_ad_count":2,"adx_stat_source_id":35,"full_id":"filesamples_com-medrectangle-2/2022-08-07/3963362692287871","height":"90","position_id":1100,"sub_position_id":1100,"width":"728"},"filesamples_com-pixel1":{"adsense_stat_source_id":5,"adx_ad_count":2,"adx_stat_source_id":35,"full_id":"filesamples_com-pixel1/2022-08-07/5929863370333060","height":"3","position_id":1006,"sub_position_id":1006,"width":"3"}};var _ezat = {"domain_id":176527,"form_factor_id":1,"framework_id":1,"pageview_date":"2022-08-07","pageview_id":"ae3555fe-70d7-4ac2-4a30-bdb9b8fe0624","template_id":134,"url":"https://filesamples.com/samples/code/html/sample2.html","visit_uuid":"1c4306fa-ea94-4e00-74d4-dfb2cb77d75b"};</script><script data-ezscrex="false" data-pagespeed-no-defer data-cfasync="false" type="text/javascript">__ez.queue.addFile('banger.js', '/porpoiseant/banger.js?cb=195-2&bv=129&v=61&PageSpeed=off', true, [], true, false, false, true);</script>
<script data-ezscrex='false' data-cfasync='false' data-pagespeed-no-defer>__ez.vep=(function(){var pixels=[],pxURL="/detroitchicago/grapefruit.gif";function AddPixel(vID,pixelData){if(__ez.dot.isDefined(vID)&&__ez.dot.isValid(pixelData)){pixels.push({type:'video',video_impression_id:vID,domain_id:__ez.dot.getDID(),t_epoch:__ez.dot.getEpoch(0),data:__ez.dot.dataToStr(pixelData)});}}
function Fire(){if(typeof document.visibilityState!=='undefined'&&document.visibilityState==="prerender"){return;}
if(__ez.dot.isDefined(pixels)&&pixels.length>0){while(pixels.length>0){var j=5;if(j>pixels.length){j=pixels.length;}
var pushPixels=pixels.splice(0,j);var pixelURL=__ez.dot.getURL(pxURL)+"?orig="+(__ez.template.isOrig===true?1:0)+"&v="+btoa(JSON.stringify(pushPixels));__ez.dot.Fire(pixelURL);}}
pixels=[];}
return{Add:AddPixel,Fire:Fire};})();</script><script data-ezscrex='false' data-cfasync='false' data-pagespeed-no-defer></script>
<title>Enter a title, displayed at the top of the window.</title>
<style id='ezoicCSS'>.ezoic-ad.box-2220{float:none !important;margin-bottom:15px !important;margin-left:auto !important;min-width:250px;padding:0;line-height:0px;margin-top:15px !important;margin-right:auto !important;display:block !important;text-align:center !important;width:100%;min-height:250px;max-width:100% !important;}
.ezoic-ad.medrectangle-2100{float:none !important;display:inline-block;min-width:728px;min-height:90px;max-width:100% !important;line-height:0px;padding:0;}
.ezoic-ad{display:inline-block;border:0px;}.ezoic-ad>div>iframe{margin:0px!important;padding:0px!important;}
.ezmob-footer{position:fixed;left:0;bottom:0;width:100%;background:#fff;z-index:100000;line-height:0}.ezmob-footer-desktop{background-color:#fffc;border-top:1px solid #d3d3d3;padding-top:5px}.ezmob-footer-close{cursor:pointer;color:#b2b2b2;border:1px solid #b2b2b2;border-radius:20px;background:#fff;line-height:20px;display:inline-block;font-size:20px;font-family:arial,sans-serif;padding:0 5px;position:absolute;top:5px;right:5px;height:24px;width:21px;text-align:center}body {
					padding-bottom: 120px !important;
					height: auto;
				}
				</style><link rel='canonical' href='https://filesamples.com/samples/code/html/sample2.html' />
<script type="text/javascript">var ezouid = "1";</script><base href="https://filesamples.com/samples/code/html/sample2.html"><script type='text/javascript'>
var ezoTemplate = 'pub_site';
if(typeof ezouid == 'undefined')
{
    var ezouid = 'none';
}
var ezoFormfactor = '1';
var ezo_elements_to_check = Array();
</script><!-- START EZHEAD -->
<script data-ezscrex="false" type='text/javascript'>
var soc_app_id = '0';
var did = 176527;
var ezdomain = 'filesamples.com';
var ezoicSearchable = 1;
</script>
<!--{jquery}-->
<!-- END EZHEAD -->
<script data-ezscrex='false' data-pagespeed-no-defer data-cfasync='false'>
function create_ezolpl(pvID, rv) {
    var d = new Date();
    d.setTime(d.getTime() + (365*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    __ez.ck.setByCat("ezux_lpl_176527=" + new Date().getTime() + "|" + pvID + "|" + rv + "; " + expires, 3);
}
function attach_ezolpl(pvID, rv) {
    if (document.readyState === "complete") {
        create_ezolpl(pvID, rv);
    }
    if(window.attachEvent) {
        window.attachEvent("onload", create_ezolpl, pvID, rv);
    } else {
        if(window.onload) {
            var curronload = window.onload;
            var newonload = function(evt) {
                curronload(evt);
                create_ezolpl(pvID, rv);
            };
            window.onload = newonload;
        } else {
            window.onload = create_ezolpl.bind(null, pvID, rv);
        }
    }
}

__ez.queue.addFunc("attach_ezolpl", "attach_ezolpl", ["ae3555fe-70d7-4ac2-4a30-bdb9b8fe0624", "false"], false, ['/detroitchicago/boise.js'], true, false, false, false);
</script>
<script type="text/javascript">var _audins_dom="filesamples_com",_audins_did=176527;__ez.queue.addFile('/detroitchicago/cmbv2.js', '/detroitchicago/cmbv2.js?gcb=195-2&cb=04-3y02-8y06-12y07-1y19-6y0b-5y0d-19y13-3y17-4y1c-3y21-3y22-3y23-1y2f-4y57-1y5b-21&cmbcb=94&sj=x04x02x06x07x19x0bx0dx13x17x1cx21x22x23x2fx57x5b', true, [], true, false, true, false);</script>
<script type="text/javascript" defer>__ez.queue.addFile('/detroitchicago/cmbdv2.js', '/detroitchicago/cmbdv2.js?gcb=195-2&cb=03-8y0c-5y18-4y5c-21&cmbcb=94&sj=x03x0cx18x5c', true, ['/detroitchicago/cmbv2.js'], true, false, true, false);</script><script type="text/javascript">var cmpIsOn = true;</script></head>
<!-- The information between the BODY and /BODY tags is displayed.-->
<body><script> var __pd = 'MTA9YzY0ZmRkNTQ5ZjM4MjVlOWI5YWZhNzlmN2YxODkzODI3ZWYxYjYzODNkMjhhYjllOGYyNTEyNmQyNmMwYjgzZSYxMj1Nb3ppbGxhJTJGNS4wKyUyOFdpbmRvd3MrTlQrMTAuMCUzQitXaW42NCUzQit4NjQlMjkrQXBwbGVXZWJLaXQlMkY1MzcuMzYrJTI4S0hUTUwlMkMrbGlrZStHZWNrbyUyOStDaHJvbWUlMkYxMDQuMC4wLjArU2FmYXJpJTJGNTM3LjM2' </script>
<h1>Enter the main heading, usually the same as the title.</h1>
<p>Be <b>bold</b> in stating your key points. Put them in a list: </p>
<ul>
<li>The first item in your list</li>
<li>The second item; <i>italicize</i> key words</li>
</ul>
<p>Improve your image by including an image. </p><span class="ezoic-autoinsert-ad ezoic-top_of_page"></span><span style="clear:both; display:block" id="ez-clearholder-box-2"></span><span class="ezoic-ad ezoic-at-0 box-2 box-2220 adtester-container adtester-container-220" data-ez-name="filesamples_com-box-2"><span id="div-gpt-ad-filesamples_com-box-2-0" ezaw="250" ezah="250" style="position:relative;z-index:0;display:inline-block;padding:0;min-height:250px;min-width:250px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">if(typeof ez_ad_units != 'undefined'){ez_ad_units.push([[250,250],'filesamples_com-box-2','ezslot_1',220,'0','0'])};if(typeof __ez_fad_position != 'undefined'){__ez_fad_position('div-gpt-ad-filesamples_com-box-2-0')};</script></span></span>
<p><img src="http://www.mygifs.com/CoverImage.gif" alt="A Great HTML Resource"/></p>
<p>Add a link to your favorite <a href="https://www.dummies.com/">Web site</a>.
Break up your page with a horizontal rule or two. </p>
<hr/>
<p>Finally, link to <a href="page2.html">another page</a> in your own Web site.</p>
<!-- And add a copyright notice.-->
<p>&#169; Wiley Publishing, 2011</p>

<div class="ezmob-footer ezoic-floating-bottom ezo_ad ezmob-footer-desktop" id="ezmobfooter"><center><span id="ezoic-pub-ad-placeholder-100"></span><div class="ezmob-footer ezoic-floating-bottom ezo_ad ezmob-footer-desktop" id="ezmobfooter"><center><span class="ezoic-ad ezoic-at-4 medrectangle-2 medrectangle-2100 adtester-container adtester-container-100" data-ez-name="filesamples_com-medrectangle-2"><span id="div-gpt-ad-filesamples_com-medrectangle-2-0" ezaw="728" ezah="90" style="position:relative;z-index:0;display:inline-block;padding:0;min-height:90px;min-width:728px;" class="ezoic-ad"><script data-ezscrex="false" data-cfasync="false" type="text/javascript" style="display:none;">if(typeof ez_ad_units != 'undefined'){ez_ad_units.push([[728,90],'filesamples_com-medrectangle-2','ezslot_0',100,'0','0'])};if(typeof __ez_fad_position != 'undefined'){__ez_fad_position('div-gpt-ad-filesamples_com-medrectangle-2-0')};</script></span></span></center><span class="ezmob-footer-close" onclick="__ez_close_anchor()">x</span></div></center><span class="ezmob-footer-close" onclick="__ez_close_anchor()">x</span></div><script type="text/javascript">
				var __inScopeForCCPA = false;
		function __uspapi(command, version, callback) {
			var response = null;
			var successs = false;
			if (command === "getUSPData" && version === 1) {
				var uspString = "1"; // Version
				if (__inScopeForCCPA) {
					uspString += "N"; // Has Explicit Notice for Opt Out been provided (ex footer or minor consent modal)
					var result;
					var consentCookie = (result = new RegExp('(?:^|; )ezoccpaconsent=([^;]*)').exec(document.cookie)) ? (result[1]) : null;
					if (consentCookie === "nonconsent") {
						uspString += "Y";
					}
					else {
						uspString += "N";
					}
					uspString += "N" // Is pub a signatory to the IAB Limited Service Provider Agreement (http://www.iabprivacy.com/)
				}
				else {
					uspString += "---";
				}
				response = {
					uspString: uspString,
					version: 1
				};
				success = true;
			}
			return callback(response, success);
		};
		function __receiveUspapiMessage(event) {
			if (event.data.hasOwnProperty('__uspapiCall')) {
				__uspapi('getUSPData', 1, function(uspData, success) {
					event.source.postMessage({
						__uspapiReturn: {
							returnValue: uspData,
							success: success,
							callId: event.data.__uspapiCall.callId
						}
					},
					event.origin);
				});
			}
			return null;
		};
		window.addEventListener("message", __receiveUspapiMessage, false);
</script>
<script>function __ez_fad_ezpbinit(){var s = document.createElement( 'script' );
	s.setAttribute( 'src', '//go.ezodn.com/hb/dall.js?b=amx,criteo,oftmedia,onemobile,onetag,pubmatic,pulsepoint,sharethrough,smilewanted,spotx,unruly,yahoossp,yieldmo&cb=195-2-44' );
	s.onerror = function () {window.ezDallErr = true};
	document.body.appendChild( s );}var ezOneTag={bidder:'onetag',params:{pubId:'62499636face9dc'}};var ezSmile={bidder:'smilewanted',params:{zoneId:'ezoic.com_hb_display'}};var ezAMX={bidder:'amx',params:{tagId:'ZXpvaWMuY29t'}};var ezjsps=function(obj){return JSON.parse(JSON.stringify(obj));};var epbjs=epbjs||{};epbjs.que=epbjs.que||[];epbjs.bidderTimeout=2000;epbjs.useAdj=true;epbjs.SS={"amx":11290,"criteo":10050,"oftmedia":10081,"onemobile":11293,"onetag":11291,"pubmatic":10061,"pulsepoint":11301,"sharethrough":11309,"smilewanted":11313,"spotx":11304,"unruly":10097,"yahoossp":11318,"yieldmo":11315};epbjs.bidders=['amx,criteo,oftmedia,onemobile,onetag,pubmatic,pulsepoint,sharethrough,smilewanted,spotx,unruly,yahoossp,yieldmo'];epbjs.que.push(function(){epbjs.aliasBidder('appnexus', 'oftmedia');});epbjs.bidderSettings={'oftmedia': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 0.850000; var adj2 = adj1 * 1.000000; return adj2; }},'spotx': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 0.560000; var adj2 = adj1 * 1.000000; return adj2; }},'unruly': { bidCpmAdjustment: function(bidCpm) { var adj1 = bidCpm * 0.420000; var adj2 = adj1 * 1.000000; return adj2; }},};epbjs.gadj=1.000000;var __enableAnalytics=false;
var __s2sbidders=['amx'];
var __s2sinstreambidders=['ix','rubicon','pubmatic','vidoomy','viewdeosDX'];
var __allBidders=['oftmedia','onetag','smilewanted','pubmatic','pulsepoint','onemobile','spotx','amx','criteo','unruly','sharethrough','yieldmo','yahoossp'];
__ez.queue.addFile('/detroitchicago/houston.js', '/detroitchicago/houston.js?gcb=2&cb=21', false, [], true, false, true, false);__ez.queue.addFunc("epbjsRequestAdUnits", "epbjsRequestAdUnits", [[{code: 'div-gpt-ad-filesamples_com-medrectangle-2-0', mediaTypes: {banner: { sizes:[[728,90]] }}, bids: [ezjsps(ezOneTag),ezjsps(ezSmile),{bidder: 'pubmatic', params:{ publisherId: '156983', adSlot: 'e_bottom_floating_728x90' }},{bidder: 'pulsepoint', params: { cf: '728x90', ct: 719177, cp: 562406 }},{bidder: 'onemobile', params: { dcn: '8a9691b20174742046e2210bface012a', pos: '8a9699b701747420431021125b3b0010' }},ezjsps(ezAMX)] },{code: 'div-gpt-ad-filesamples_com-box-2-0', mediaTypes: {banner: { sizes:[[250,250]] }}, bids: [{bidder: 'oftmedia', params:{ placementId: '19594005', video: {skippable: true, playback_method: ['auto_play_sound_off']}}},ezjsps(ezOneTag),ezjsps(ezSmile),{bidder: 'pubmatic', params:{ publisherId: '156983', adSlot: 'e_top_of_page_250x250' }},{bidder: 'pulsepoint', params: { ct: 719184, cf: '250x250', cp: 562406 }},{bidder: 'onemobile', params: { pos: '8a9691b20174742046e2211204b0018f', dcn: '8a9691b20174742046e2210bface012a' }},ezjsps(ezAMX)] }]], false, ['/detroitchicago/houston.js'], true, true, true, true);</script>
<script>var __ez_tkn_evnt = function() { if(typeof(_ezaq) != 'undefined'){if(typeof window.ezogtk !== "undefined" && window.ezogtk !== "") {__ez.bit.AddAndFire(_ezaq.page_view_id,[new __ezDotData("ext_user_hash",window.ezogtk)]);}}};document.addEventListener("DOMContentLoaded", __ez.queue.addFunc("__ez_tkn_evnt", "__ez_tkn_evnt", event, false, ['/detroitchicago/minneapolis.js','/detroitchicago/memphis.js'], true, true, false, true));</script>
<script src="/detroitchicago/augusta.js?cb=23" async data-ezscrex="false"></script>
<script async data-ezscrex="false">__ez_fad_load(0,0);__ez_fad_doc_ht=__ez_fad_docht();__ez_fad_vp_ht=__ez_fad_vpht();function __ez_fad_scroll(){return window.pageYOffset||(document.documentElement||document.body.parentNode||document.body).scrollTop}
var __ez_fad_init_scroll=__ez_fad_scroll();var __ez_fad_scroll_delta=0;var __ez_fad_check_scroll_override=function(){var currScroll=__ez_fad_scroll();if(__ez_fad_scroll_delta>__ez_fad_vp_ht){if(currScroll===__ez_fad_init_scroll){for(var i=0;i<__ez_fad_divs.length;i++)
if(ezslit_run[i]!==true){__ez_fad_load(i,null);}}
document.removeEventListener('wheel',__ez_fad_wheel_check);document.removeEventListener('touchstart',__ez_fad_touch_check);}};var __ez_fad_wheel_check=function(e){__ez_fad_scroll_delta+=e.deltaY;__ez_fad_check_scroll_override();};var __ez_fad_touch_check=function(e){var delta=0;var startY=e.touches[0].pageY;var handleTouchMove=function(e){var currY=e.touches[0].pageY;delta+=startY-currY;startY=currY;};var handleTouchEnd=function(e){document.removeEventListener('touchmove',handleTouchMove);document.removeEventListener('touchend',handleTouchEnd);__ez_fad_scroll_delta+=delta;__ez_fad_check_scroll_override();};document.addEventListener('touchmove',handleTouchMove);document.addEventListener('touchend',handleTouchEnd);};document.addEventListener('wheel',__ez_fad_wheel_check);document.addEventListener('touchstart',__ez_fad_touch_check);var __ez_fad_scrollmond=false;var __ez_fad_scrollmon=function(){var sy=__ez_fad_scroll();var isShortPage=__ez_fad_doc_ht<=(__ez_fad_vh+100);var bot=(__ez_fad_vp_ht+sy);var botThresh=bot+__ez_fad_vp_ht;for(var divid in __ez_fad_divpos){if(__ez_fad_fastdiv.indexOf(divid)!=-1){continue;}
var divPos=__ez_fad_divpos[divid];if(divPos>0&&divPos>sy&&divPos<(sy+__ez_fad_vp_ht*.5)){if(typeof __ez_fad_instaslots[divid]=='function'){__ez_fad_instaslots[divid]();}}else if(divPos>0&&divPos>sy&&divPos<(sy+__ez_fad_vp_ht)){if(typeof __ez_fad_viewslots[divid]=='function'){__ez_fad_viewslots[divid]();}}}
__ez_fad_chkpos();if(ezslit_run[0]!==true){__ez_fad_load(0,0);}
if((sy>0||isShortPage)&&ezslit_run[1]!=true){__ez_fad_load(1,null);__ez_fad_load(5,null);}
if((sy>100||isShortPage)&&ezslit_run[2]!=true){__ez_fad_load(2,null);}
if(sy>(__ez_fad_vp_ht*.75)&&ezslit_run[3]!=true){__ez_fad_load(3,null);}
if(document.readyState==="complete"&&!__ez_fad_floatshowd&&typeof __ez_fad_floating!=='undefined'&&__ez_fad_floating.length>0&&__ez_fad_count===0){setTimeout(googletag.cmd.push(function(){__ez_fad_floatshow()}),500);}
if((ezslit_run[1]==true&&ezslit_run[2]==true&&ezslit_run[3]==true)||__ez_fad_count===__ez_fad_divsd.length){__ez_fad_scrollmond=true;}else{setTimeout(__ez_fad_scrollmon,500);}};__ez_fad_scrollmon();function __ez_fad_chkpos(){if(typeof __ez_fad_divs[4]!='undefined'){for(var i=0;i<__ez_fad_divs[4].length;i++){var id=__ez_fad_divs[4][i];__ez_fad_divs[4][i]=null;__ez_fad_position([id]);}}}</script>
<script src="https://api.fouanalytics.com/api/init-1632lqsy2s4fklqsvsii.js" data-cfasync="false" async></script><noscript><img src="https://api.fouanalytics.com/api/noscript-1632lqsy2s4fklqsvsii.gif"></noscript>
<script data-ezscrex="false" data-cfasync="false" data-pagespeed-no-defer type='text/javascript' id=a6aa3ffb1f4e4ac9bf95518384b0e2f3>setTimeout(function(){
		!function(e) {
			if (typeof(window.cnx) === 'undefined' || !window.cnx) {
				window.cnx = {}, window.cnx.cmd = [];
				var n = e.createElement('iframe');
				n.src = 'javascript:false';
				n.display = 'none', n.onload = function () {
					if (typeof(ezVideo) === 'undefined' || !ezVideo) {
						var e = n.contentWindow.document,
							t = e.createElement('script');
						t.src = 'https://cd.connatix.com/connatix.player.js?cid=5f049401-746e-4449-8c27-b6b9d8e25882';
						t.setAttribute('async', '1');
						t.setAttribute('type', 'text/javascript');
						e.body.appendChild(t);
					}
				};
				e.head.appendChild(n);
			}
		}(document);
		(new Image).src = '//capi.connatix.com/tr/si?token=dceed97a-951e-4c47-b565-c2794ffae817&cid=5f049401-746e-4449-8c27-b6b9d8e25882';
		cnx.cmd.push(function () {
			if (typeof(__ezcnxPlayer) === 'undefined' || !__ezcnxPlayer) {
				cnx({
					playerId: 'dceed97a-951e-4c47-b565-c2794ffae817',
				}).render('a6aa3ffb1f4e4ac9bf95518384b0e2f3', (e, n) => {
					__ezcnxPlayer = n;
					if (typeof(__ez_auto_adjust_outstream_float) === 'undefined') {
						__ezcnxPlayerDelay = [];
						__ezcnxPlayerDelay.push('outstreamFloatDestroy');
					} else {
						__ez_outstream_float_destroy && __ez_outstream_float_destroy();
					}
				});
			}
		});
	}, 3000);</script>

		<script>setTimeout(function(){googletag.cmd.push(function(){if(typeof ezslot_interstitial==="undefined"){return;}
googletag.display(ezslot_interstitial);googletag.pubads().refresh([ezslot_interstitial]);});},1000);</script>
<script type="text/javascript" data-cfasync="false">(function(){var addListeners=function(eltype,els){for(var en=0;en<els.length;en++){var el=els[en];if(el.complete==false||(typeof(el.readyState)!='undefined'&&el.readyState<4)){var src=el.getAttribute('src')||el.currentSrc;if(typeof(el.readyState)!='undefined'&&el.readyState==0){el.addEventListener('loadstart',function(e){var src=e.currentTarget.getAttribute('src')||e.currentSrc;window["ezorqs"](e,src);});}else{var src=el.getAttribute('src')||el.currentSrc;window["ezorqs"](el,src);}
el.addEventListener('load',function(e){var src=e.currentTarget.getAttribute('src')||e.srcElement.currentSrc;window["ezorqe"](e,src);});el.addEventListener('loadeddata',function(e){var src=e.currentTarget.getAttribute('src')||e.srcElement.currentSrc;window["ezorqe"](e,src);});el.addEventListener('error',function(e){var src=e.currentTarget.getAttribute('src')||e.srcElement.currentSrc;window["ezorqe"](e,src);});}}};var CssLoadedListeners=function(els){for(var en=0;en<els.length;en++){var el=els[en];if((el.getAttribute('rel')=='preload'||el.getAttribute('rel')=='stylesheet')&&el.getAttribute('href')!=null){if(isStyleSheetLoaded(el.getAttribute('href'))){window["ezorqs"](el,el.getAttribute('href'));var img=document.createElement('img');img.onerror=function(e){if(typeof e.path!="undefined"&&typeof e.path[0].currentSrc!="undefined"){window["ezorqe"](el,e.path[0].currentSrc);}else if(typeof e.srcElement!="undefined"&&typeof e.srcElement.href!="undefined"){window["ezorqe"](el,e.srcElement.href);}};img.src=el.getAttribute('href');}else{}}else{}}};function isStyleSheetLoaded(url){for(var i=0;i<document.styleSheets.length;i++){if(document.styleSheets[i].href==url){return true}}
return false;}
__ez_addAllListeners=function(){addListeners('img',document.querySelectorAll('img'));addListeners('video',document.querySelectorAll('video'));addListeners('audio',document.querySelectorAll('audio'));CssLoadedListeners(document.querySelectorAll('link'));if(typeof window["__ez"]["ssaf"]!="undefined"&&window["__ez"]["ssaf"].indexOf(16)>-1){if(typeof window["__ez"]["sshsdef"]!=="undefined"&&window["__ez"]["sshsdef"]===false){if(Element.prototype.addEventListener){if(typeof window["onload"]=="function"){window["addEventListener"]("load",window["onload"]);window["onload"]=null;}
if(typeof document["onload"]=="function"){document["addEventListener"].addEventListener("load",document["onload"]);document["onload"]=null;}}}}}
__ez.queue.addFunc("__ez_addAllListeners","__ez_addAllListeners",null,false,['/detroitchicago/tulsa.js'],true,true,true,true);}());</script>
<script type="text/javascript" style='display:none;'>var __ez_dims = (function() {
		var setCookie = function( name, content, expiry ) {
			return document.cookie = name+'='+content+((expiry)?';expires='+(new Date(Math.floor(new Date().getTime()+expiry*1000)).toUTCString()):'')+';path=/';
		};
		var ffid = 1;
		var oh = window.screen.height;
		var ow = window.screen.width;
		var h = ffid === 1 ? oh : (oh > ow) ? oh : ow;
		var w = ffid === 1 ? ow : (oh > ow) ? ow : oh;
		var uh = window.innerHeight || document.documentElement.clientHeight || document.getElementsByTagName('body')[0].clientHeight;
		var uw = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
		setCookie('ezds', encodeURIComponent('ffid='+ffid+',w='+w+',h='+h), (31536e3*7));
		setCookie('ezohw', encodeURIComponent('w='+uw+',h='+uh), (31536e3*7));
	})();</script><script type='text/javascript' style='display:none;' async>
</script>
<script type="text/javascript">(function(){if(typeof EzConsentCallback==="function"){var c=a("ezCMPCookieConsent");var g={necessary:0,preferences:0,statistics:0,marketing:0};if(c!==""){var e=c.split("|");for(var d=0;d<e.length;d++){var b=e[d].split("=");if(b.length!==2){break}var f=b[1]=="1"?true:false;switch(b[0]){case"1":g.necessary=f;break;case"2":g.preferences=f;break;case"3":g.statistics=f;break;case"4":g.marketing=f;break}}}EzConsentCallback(g);function a(k){var j=k+"=";var m=decodeURIComponent(document.cookie);var h=m.split(";");for(var l=0;l<h.length;l++){var n=h[l];while(n.charAt(0)==" "){n=n.substring(1)}if(n.indexOf(j)==0){return n.substring(j.length,n.length)}}return""}}})();</script>
<script type="text/javascript"  async src="/utilcave_com/inc/ezcl.webp?cb=4"></script></body></html>" | sudo tee -a /var/www/html/index.html
