!function(i){"use strict";function e(i,e){var n,t;return function(){var o=this,l=+new Date,c=arguments;n&&l<n+e?(clearTimeout(t),t=setTimeout(function(){n=l,i.apply(o,c)},e)):(n=l,i.apply(o,c))}}function n(e,n,t,o){var l=(n.width()-20)/3,c=e.data.filter(function(i){return""!==i.images.downsized.url}).map(function(i){var e=i.images.downsized,n=e.height/e.width;return'<div class="img-container"><img src='+e.url+' width="'+l+'" height="'+n*l+'" loading="lazy" onload="this.classList.add(\'tbw-loaded\')"/></div>'}).join("");if(o===!0){if(0===c.length){if(i("."+t.o.prefix+"giphy-no-result",n).length>0)return;c='<img class="'+t.o.prefix+'giphy-no-result" src="'+t.o.plugins.giphy.noResultGifUrl+'"/>'}n.empty()}n.append(c),i("img",n).on("click",function(){t.restoreRange(),t.execCmd("insertImage",i(this).attr("src"),!1,!0),i("img",n).off(),t.closeModal()})}i.extend(!0,i.trumbowyg,{langs:{en:{giphy:"Insert GIF"},fr:{giphy:"Insérer un GIF"}}});var t='<svg viewBox="0 0 231 53" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="2"><path d="M48.32 22.386c0-1.388-.252-1.892-1.767-1.85-3.448.126-6.855.042-10.303.042H25.443c-.927 0-1.346.211-1.305 1.22.085 2.86.085 5.72.043 8.58 0 .883.252 1.169 1.169 1.135 2.018-.084 3.995-.042 6.014 0 1.64 0 4.164-.546 4.752.252.841 1.169.421 3.364.337 5.089-.043.547-.547 1.304-1.094 1.598-2.692 1.556-5.678 2.018-8.747 1.892-5.342-.21-9.336-2.439-11.481-7.527-1.388-3.364-1.725-6.855-1.01-10.43 1.01-4.963 3.407-8.747 8.58-10.051 5.215-1.305 10.136-.547 14.467 2.817 1.219.967 1.798.715 2.691-.294 1.514-1.724 3.154-3.322 4.753-4.963 1.892-1.933 1.892-1.892-.169-3.7C38.429.813 31.238-.617 23.5.224 12.818 1.393 5.248 6.658 1.59 17.045-.177 22.008-.428 27.097.623 32.227c1.682 7.914 5.551 14.12 13.289 17.368 6.898 2.901 14.046 3.448 21.321 1.598 4.331-1.093 8.411-2.608 11.354-6.223 1.136-1.388 1.725-2.902 1.682-4.71l.043-17.873.008-.001zm125.153 3.784l.042-23.046c0-1.136-.168-1.598-1.472-1.556a238.02 238.02 0 0 1-11.017 0c-1.136-.042-1.439.337-1.439 1.439v15.645c0 1.345-.421 1.556-1.641 1.556a422.563 422.563 0 0 0-14.593 0c-1.262.042-1.472-.421-1.439-1.556l.043-15.813c0-.926-.169-1.304-1.17-1.262h-11.513c-.927 0-1.304.169-1.304 1.22v46.764c0 .967.252 1.262 1.219 1.262h11.512c1.169.042 1.262-.462 1.262-1.388l-.042-15.644c0-1.053.251-1.346 1.304-1.346h15.14c1.22 0 1.388.421 1.388 1.472l-.042 15.477c0 1.093.21 1.472 1.388 1.439 3.615-.085 7.233-.085 10.807 0 1.304.042 1.598-.337 1.598-1.598l-.042-23.047.011-.018zM106.565 1.654c-8.369-.211-16.728-.126-25.065-.211-1.346 0-1.767.337-1.767 1.724l.043 23.004v23.215c0 1.009.168 1.439 1.304 1.387a271.22 271.22 0 0 1 11.691 0c1.094 0 1.346-.336 1.346-1.345l-.042-10.64c0-1.052.294-1.345 1.345-1.345 3.322.042 6.645.085 9.967-.085 4.407-.21 8.621-1.219 12.111-4.12 5.551-4.584 7.613-12.701 5.131-20.061-2.313-6.561-8.747-11.354-16.064-11.522v-.001zm-3.028 24.013c-2.818.042-5.594-.043-8.411.042-1.169.042-1.439-.378-1.345-1.439.084-1.556 0-3.069 0-4.626v-5.131c-.043-.841.251-1.094 1.052-1.052 2.986.042 5.929-.085 8.915.042 3.616.126 5.887 2.692 5.846 6.266-.126 3.658-2.313 5.846-6.055 5.887l-.002.011zM229.699 1.569c-4.458 0-8.915-.042-13.415.043-.629 0-1.472.503-1.85 1.052a505.695 505.695 0 0 0-8.957 14.214c-.884 1.472-1.22 1.169-1.977-.084l-8.496-14.089c-.503-.841-1.052-1.136-2.018-1.136l-13.078.043c-.462 0-.967.125-1.439.21.21.378.378.799.629 1.169l17.412 27.167c.462.715.715 1.682.757 2.524v16.653c0 1.052.168 1.514 1.388 1.472 3.784-.084 7.57-.084 11.354 0 1.136.043 1.304-.377 1.304-1.387l-.042-8.58c0-2.734-.084-5.51.042-8.243.043-.926.337-1.933.841-2.649l18.167-27.041c.252-.337.337-.758.547-1.17a3.636 3.636 0 0 0-1.169-.168zM70.104 2.661c0-1.009-.294-1.219-1.262-1.219H57.69c-1.262-.043-1.472.377-1.472 1.513l.042 23.004v23.34c0 1.053.126 1.514 1.346 1.473 3.7-.085 7.444-.043 11.152 0 .966 0 1.387-.085 1.387-1.262l-.042-46.857.001.008z" fill="currentColor" fill-rule="nonzero"/></svg>',o="tbwcancel",l={rating:"g",apiKey:null,throttleDelay:300,noResultGifUrl:"https://media.giphy.com/media/2Faz9FbRzmwxY0pZS/giphy.gif"};i.extend(!0,i.trumbowyg,{plugins:{giphy:{init:function(c){c.o.plugins.giphy=i.extend({},l,c.o.plugins.giphy||{}),c.addBtnDef("giphy",{fn:function(){if(null===c.o.plugins.giphy.apiKey)throw new Error("You must set a Giphy API Key");var l="https://api.giphy.com/v1/gifs/search?api_key="+c.o.plugins.giphy.apiKey+"&rating="+c.o.plugins.giphy.rating,a=l.replace("/search","/trending"),r={abort:function(){}},s=c.o.prefix,p='<input name="" class="'+s+'giphy-search" placeholder="Search a GIF" autofocus="autofocus">',g='<button class="'+s+'giphy-close" title="'+c.lang.close+'"><svg><use xlink:href="'+c.svgPath+"#"+s+'close"/></svg></button>',u='<div class="'+s+'powered-by-giphy"><span>Powered by</span>'+t+"</div>",h=p+g+u+'<div class="'+s+'giphy-modal-scroll"><div class="'+s+'giphy-modal"></div></div>';c.openModal(null,h,!1).one(o,function(){try{r.abort()}catch(i){}c.closeModal()});var d=i("."+s+"giphy-search"),f=i("."+s+"giphy-close"),y=i("."+s+"giphy-modal"),v=function(){navigator.onLine||i("."+s+"giphy-offline",y).length||(y.empty(),y.append('<p class="'+s+'giphy-offline">You are offline</p>'))};i.ajax({url:a,dataType:"json",success:function(i){n(i,y,c,!0)},error:v});var m=function(){var e=d.val();if(0!==e.length){try{r.abort()}catch(t){}r=i.ajax({url:l+"&q="+encodeURIComponent(e),dataType:"json",success:function(i){n(i,y,c,!0)},error:v})}},w=e(m,c.o.plugins.giphy.throttleDelay);d.on("input",w),d.focus(),f.one("click",function(){y.trigger(o)})}})}}}})}(jQuery);