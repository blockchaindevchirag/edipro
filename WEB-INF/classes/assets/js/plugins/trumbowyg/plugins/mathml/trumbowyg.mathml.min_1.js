!function(e){"use strict";e.extend(!0,e.trumbowyg,{langs:{en:{mathml:"Insert Formulas",formulas:"Formulas",inline:"Inline"},da:{mathml:"Indsæt formler",formulas:"Formler",inline:"Inline"},fr:{mathml:"Inserer une formule",formulas:"Formule",inline:"En ligne"},tr:{mathml:"Formül Ekle",formulas:"Formüller",inline:"Satır içi"},zh_tw:{mathml:"插入方程式",formulas:"方程式",inline:"內嵌"},pt_br:{mathml:"Inserir fórmulas",formulas:"Fórmulas",inline:"Em linha"},ko:{mathml:"수식 넣기",formulas:"수식",inline:"글 안에 넣기"}},plugins:{mathml:{init:function(n){var l={fn:function(){n.saveRange();var l={formulas:{label:n.lang.formulas,required:!0,value:""},inline:{label:n.lang.inline,attributes:{checked:!0},type:"checkbox",required:!1}},a=function(t){var r=t.inline?"$":"$$";if(n.currentMathNode)e(n.currentMathNode).html(r+" "+t.formulas+" "+r).attr("formulas",t.formulas).attr("inline",t.inline?"true":"false");else{var i='<span class="mathMlContainer" contenteditable="false" formulas="'+t.formulas+'" inline="'+(t.inline?"true":"false")+'" >'+r+" "+t.formulas+" "+r+"</span>",u=e(i)[0];u.onclick=function(){n.currentMathNode=this,l.formulas.value=e(this).attr("formulas"),"true"===e(this).attr("inline")?l.inline.attributes.checked=!0:delete l.inline.attributes.checked,n.openModalInsert(n.lang.mathml,l,a)},n.range.deleteContents(),n.range.insertNode(u)}return n.currentMathNode=!1,MathJax.Hub.Queue(["Typeset",MathJax.Hub]),!0};l.formulas.value=n.getRangeText(),l.inline.attributes.checked=!0,n.openModalInsert(n.lang.mathml,l,a)}};n.addBtnDef("mathml",l)}}}})}(jQuery);