!function(e){"use strict";function t(t,l){t.$ed.focus(),t.saveRange();var a=t.range.startContainer.parentElement,o=t.getRangeText();if(e(a).html()===o)e(a).css("font-size",l);else{t.range.deleteContents();var s='<span style="font-size: '+l+';">'+o+"</span>",n=e(s)[0];t.range.insertNode(n)}t.restoreRange()}function l(l){var a=[];if(e.each(l.o.plugins.fontsize.sizeList,function(e,o){l.addBtnDef("fontsize_"+o,{text:'<span style="font-size: '+o+';">'+(l.lang.fontsizes[o]||o)+"</span>",hasIcon:!1,fn:function(){t(l,o)}}),a.push("fontsize_"+o)}),l.o.plugins.fontsize.allowCustomSize){var o="fontsize_custom",s={fn:function(){l.openModalInsert(l.lang.fontCustomSize.title,{size:{label:l.lang.fontCustomSize.label,value:l.lang.fontCustomSize.value}},function(e){return t(l,e.size),!0})},text:'<span style="font-size: medium;">'+l.lang.fontsizes.custom+"</span>",hasIcon:!1};l.addBtnDef(o,s),a.push(o)}return a}e.extend(!0,e.trumbowyg,{langs:{en:{fontsize:"Font size",fontsizes:{"x-small":"Extra small",small:"Small",medium:"Regular",large:"Large","x-large":"Extra large",custom:"Custom"},fontCustomSize:{title:"Custom Font Size",label:"Font Size",value:"48px"}},es:{fontsize:"Tamaño de Fuente",fontsizes:{"x-small":"Extra pequeña",small:"Pegueña",medium:"Regular",large:"Grande","x-large":"Extra Grande",custom:"Customizada"},fontCustomSize:{title:"Tamaño de Fuente Customizada",label:"Tamaño de Fuente",value:"48px"}},da:{fontsize:"Skriftstørrelse",fontsizes:{"x-small":"Ekstra lille",small:"Lille",medium:"Normal",large:"Stor","x-large":"Ekstra stor",custom:"Brugerdefineret"}},fr:{fontsize:"Taille de la police",fontsizes:{"x-small":"Très petit",small:"Petit",medium:"Normal",large:"Grand","x-large":"Très grand",custom:"Taille personnalisée"},fontCustomSize:{title:"Taille de police personnalisée",label:"Taille de la police",value:"48px"}},de:{fontsize:"Schriftgröße",fontsizes:{"x-small":"Sehr klein",small:"Klein",medium:"Normal",large:"Groß","x-large":"Sehr groß",custom:"Benutzerdefiniert"},fontCustomSize:{title:"Benutzerdefinierte Schriftgröße",label:"Schriftgröße",value:"48px"}},nl:{fontsize:"Lettergrootte",fontsizes:{"x-small":"Extra klein",small:"Klein",medium:"Normaal",large:"Groot","x-large":"Extra groot",custom:"Tilpasset"}},tr:{fontsize:"Yazı Boyutu",fontsizes:{"x-small":"Çok Küçük",small:"Küçük",medium:"Normal",large:"Büyük","x-large":"Çok Büyük",custom:"Görenek"}},zh_tw:{fontsize:"字體大小",fontsizes:{"x-small":"最小",small:"小",medium:"中",large:"大","x-large":"最大",custom:"自訂大小"},fontCustomSize:{title:"自訂義字體大小",label:"字體大小",value:"48px"}},pt_br:{fontsize:"Tamanho da fonte",fontsizes:{"x-small":"Extra pequeno",small:"Pequeno",regular:"Médio",large:"Grande","x-large":"Extra grande",custom:"Personalizado"},fontCustomSize:{title:"Tamanho de Fonte Personalizado",label:"Tamanho de Fonte",value:"48px"}},it:{fontsize:"Dimensioni del testo",fontsizes:{"x-small":"Molto piccolo",small:"piccolo",regular:"normale",large:"grande","x-large":"Molto grande",custom:"Personalizzato"},fontCustomSize:{title:"Dimensioni del testo personalizzato",label:"Dimensioni del testo",value:"48px"}},ko:{fontsize:"글꼴 크기",fontsizes:{"x-small":"아주 작게",small:"작게",medium:"보통",large:"크게","x-large":"아주 크게",custom:"사용자 지정"},fontCustomSize:{title:"사용자 지정 글꼴 크기",label:"글꼴 크기",value:"48px"}}}});var a={sizeList:["x-small","small","medium","large","x-large"],allowCustomSize:!0};e.extend(!0,e.trumbowyg,{plugins:{fontsize:{init:function(t){t.o.plugins.fontsize=e.extend({},a,t.o.plugins.fontsize||{}),t.addBtnDef("fontsize",{dropdown:l(t)})}}}})}(jQuery);