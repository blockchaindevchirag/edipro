!function(i,n){"use strict";function e(i,e){return['<pre class="language-'+e+'">','<code class="language-'+e+'">'+n.highlight(i,n.languages[e])+"</code>","</pre>"].join("")}function o(i){return{fn:function(){var o=i.openModal("Code",['<div class="'+i.o.prefix+'highlight-form-group">','   <select class="'+i.o.prefix+'highlight-form-control language">',function(){var i="";for(var e in n.languages)n.languages.hasOwnProperty(e)&&(i+='<option value="'+e+'">'+e+"</option>");return i}(),"   </select>","</div>",'<div class="'+i.o.prefix+'highlight-form-group">','   <textarea class="'+i.o.prefix+'highlight-form-control code"></textarea>',"</div>"].join("\n")),t=o.find(".language"),g=o.find(".code");o.on("tbwconfirm",function(){i.restoreRange(),i.execCmd("insertHTML",e(g.val(),t.val())),i.execCmd("insertHTML","<p><br></p>"),i.closeModal()}),o.on("tbwcancel",function(){i.closeModal()})}}}var t={};i.extend(!0,i.trumbowyg,{langs:{en:{highlight:"Code syntax highlight"},pt_br:{highlight:"Realçar sintaxe de código"},ko:{highlight:"코드 문법 하이라이트"}},plugins:{highlight:{init:function(n){n.o.plugins.highlight=i.extend(!0,{},t,n.o.plugins.highlight||{}),n.addBtnDef("highlight",o(n))}}}})}(jQuery,Prism);