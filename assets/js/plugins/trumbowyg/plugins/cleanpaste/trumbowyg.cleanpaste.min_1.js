!function(e){"use strict";function r(e){var r=e;return r=r.replace(/<[^> ]*/g,function(e){return e.toLowerCase()}),r=r.replace(/<[^>]*>/g,function(e){return e=e.replace(/ [^=]+=/g,function(e){return e.toLowerCase()})}),r=r.replace(/<[^>]*>/g,function(e){return e=e.replace(/( [^=]+=)([^"][^ >]*)/g,'$1"$2"')})}function n(e){return e=r(e),e=e.replace(/<b(\s+|>)/g,"<strong$1"),e=e.replace(/<\/b(\s+|>)/g,"</strong$1"),e=e.replace(/<i(\s+|>)/g,"<em$1"),e=e.replace(/<\/i(\s+|>)/g,"</em$1"),e=e.replace(/<!(?:--[\s\S]*?--\s*)?>\s*/g,""),e=e.replace(/&nbsp;/gi," "),e=e.replace(/ <\//gi,"</"),e.replace(/\s+/g," "),e=e.replace(/^\s*|\s*$/g,""),e=e.replace(/<[^>]*>/g,function(e){return e=e.replace(/ ([^=]+)="[^"]*"/g,function(e,r){return["alt","href","src","title"].indexOf(r)!==-1?e:""})}),e=e.replace(/<\?xml[^>]*>/g,""),e=e.replace(/<[^ >]+:[^>]*>/g,""),e=e.replace(/<\/[^ >]+:[^>]*>/g,""),e=e.replace(/<(div|span|style|meta|link).*?>/gi,"")}e.extend(!0,e.trumbowyg,{plugins:{cleanPaste:{init:function(e){e.pasteHandlers.push(function(){setTimeout(function(){try{e.$ed.html(n(e.$ed.html()))}catch(r){}},0)})}}}})}(jQuery);