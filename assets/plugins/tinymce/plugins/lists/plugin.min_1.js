!function(){"use strict";var e=tinymce.util.Tools.resolve("tinymce.PluginManager"),d=tinymce.util.Tools.resolve("tinymce.dom.RangeUtils"),l=tinymce.util.Tools.resolve("tinymce.dom.TreeWalker"),n=tinymce.util.Tools.resolve("tinymce.util.VK"),p=tinymce.util.Tools.resolve("tinymce.dom.BookmarkManager"),v=tinymce.util.Tools.resolve("tinymce.util.Tools"),t=tinymce.util.Tools.resolve("tinymce.dom.DOMUtils"),o=function(e){return e&&"BR"===e.nodeName},r=function(e){return e&&3===e.nodeType},h=function(e){return e&&/^(OL|UL|DL)$/.test(e.nodeName)},i=function(e){return e&&/^(LI|DT|DD)$/.test(e.nodeName)},a=function(e){return e&&/^(TH|TD)$/.test(e.nodeName)},C=o,s=function(e){return e.parentNode.firstChild===e},c=function(e){return e.parentNode.lastChild===e},y=function(e,t){return t&&!!e.schema.getTextBlockElements()[t.nodeName]},f=function(e,t){return e&&e.nodeName in t},u=function(e,t){return!!o(t)&&!(!e.isBlock(t.nextSibling)||o(t.previousSibling))},m=function(e,t,n){var o=e.isEmpty(t);return!(n&&0<e.select("span[data-mce-type=bookmark]",t).length)&&o},g=function(e,t){return e.isChildOf(t,e.getRoot())},N=function(e,t){var n=d.getNode(e,t);return i(e)&&r(n)?{container:n,offset:t>=e.childNodes.length?n.data.length:0}:{container:e,offset:t}},L=function(e){var t=e.cloneRange(),n=N(e.startContainer,e.startOffset);t.setStart(n.container,n.offset);var o=N(e.endContainer,e.endOffset);return t.setEnd(o.container,o.offset),t},S=t.DOM,b=function(r){var i={},e=function(e){var t,n,o;n=r[e?"startContainer":"endContainer"],o=r[e?"startOffset":"endOffset"],1===n.nodeType&&(t=S.create("span",{"data-mce-type":"bookmark"}),n.hasChildNodes()?(o=Math.min(o,n.childNodes.length-1),e?n.insertBefore(t,n.childNodes[o]):S.insertAfter(t,n.childNodes[o])):n.appendChild(t),n=t,o=0),i[e?"startContainer":"endContainer"]=n,i[e?"startOffset":"endOffset"]=o};return e(!0),r.collapsed||e(),i},D=function(r){function e(e){var t,n,o;t=o=r[e?"startContainer":"endContainer"],n=r[e?"startOffset":"endOffset"],t&&(1===t.nodeType&&(n=function(e){for(var t=e.parentNode.firstChild,n=0;t;){if(t===e)return n;1===t.nodeType&&"bookmark"===t.getAttribute("data-mce-type")||n++,t=t.nextSibling}return-1}(t),t=t.parentNode,S.remove(o),!t.hasChildNodes()&&S.isBlock(t)&&t.appendChild(S.create("br"))),r[e?"startContainer":"endContainer"]=t,r[e?"startOffset":"endOffset"]=n)}e(!0),e();var t=S.createRng();return t.setStart(r.startContainer,r.startOffset),r.endContainer&&t.setEnd(r.endContainer,r.endOffset),L(t)},k=t.DOM,T=function(e,t){var n,o=t.parentNode;"LI"===o.nodeName&&o.firstChild===t&&((n=o.previousSibling)&&"LI"===n.nodeName?(n.appendChild(t),m(e,o)&&k.remove(o)):k.setStyle(o,"listStyleType","none")),h(o)&&(n=o.previousSibling)&&"LI"===n.nodeName&&n.appendChild(t)},I=function(t,e){v.each(v.grep(t.select("ol,ul",e)),function(e){T(t,e)})},B=tinymce.util.Tools.resolve("tinymce.dom.DomQuery"),R=function(e){var t=e.selection.getStart(!0);return e.dom.getParent(t,"OL,UL,DL",O(e,t))},O=function(e,t){var n=e.dom.getParents(t,"TD,TH");return 0<n.length?n[0]:e.getBody()},E={getParentList:R,getSelectedSubLists:function(e){var t,n,o,r=R(e),i=e.selection.getSelectedBlocks();return o=i,(n=r)&&1===o.length&&o[0]===n?(t=r,v.grep(t.querySelectorAll("ol,ul,dl"),function(e){return h(e)})):v.grep(i,function(e){return h(e)&&r!==e})},getSelectedListItems:function(e){var n,t,o,r=e.selection.getSelectedBlocks();return v.grep((n=e,t=r,o=v.map(t,function(e){var t=n.dom.getParent(e,"li,dd,dt",O(n,e));return t||e}),B.unique(o)),function(e){return i(e)})},getClosestListRootElm:O},A=tinymce.util.Tools.resolve("tinymce.Env"),P=t.DOM,x=function(e,t,n){var o,r,i,a=P.createFragment(),s=e.schema.getBlockElements();if(e.settings.forced_root_block&&(n=n||e.settings.forced_root_block),n&&((r=P.create(n)).tagName===e.settings.forced_root_block&&P.setAttribs(r,e.settings.forced_root_block_attrs),f(t.firstChild,s)||a.appendChild(r)),t)for(;o=t.firstChild;){var d=o.nodeName;i||"SPAN"===d&&"bookmark"===o.getAttribute("data-mce-type")||(i=!0),f(o,s)?(a.appendChild(o),r=null):n?(r||(r=P.create(n),a.appendChild(r)),r.appendChild(o)):a.appendChild(o)}return e.settings.forced_root_block?i||A.ie&&!(10<A.ie)||r.appendChild(P.create("br",{"data-mce-bogus":"1"})):a.appendChild(P.create("br")),a},_=t.DOM,M=function(e,t,n,o){var r,i,a,s,d;for(a=_.select('span[data-mce-type="bookmark"]',t),o=o||x(e,n),(r=_.createRng()).setStartAfter(n),r.setEndAfter(t),s=(i=r.extractContents()).firstChild;s;s=s.firstChild)if("LI"===s.nodeName&&e.dom.isEmpty(s)){_.remove(s);break}e.dom.isEmpty(i)||_.insertAfter(i,t),_.insertAfter(o,t),m(e.dom,n.parentNode)&&(d=n.parentNode,v.each(a,function(e){d.parentNode.insertBefore(e,n.parentNode)}),_.remove(d)),_.remove(n),m(e.dom,t)&&_.remove(t)},U=t.DOM,H=function(e,t){m(e,t)&&U.remove(t)},$=function(e,t){var n,o,r=t.parentNode;return r?(n=r.parentNode,r===e.getBody()||("DD"===t.nodeName?U.rename(t,"DT"):s(t)&&c(t)?"LI"===n.nodeName?(U.insertAfter(t,n),H(e.dom,n),U.remove(r)):h(n)?U.remove(r,!0):(n.insertBefore(x(e,t),r),U.remove(r)):s(t)?"LI"===n.nodeName?(U.insertAfter(t,n),t.appendChild(r),H(e.dom,n)):h(n)?n.insertBefore(t,r):(n.insertBefore(x(e,t),r),U.remove(t)):c(t)?"LI"===n.nodeName?U.insertAfter(t,n):h(n)?U.insertAfter(t,r):(U.insertAfter(x(e,t),r),U.remove(t)):("LI"===n.nodeName?(r=n,o=x(e,t,"LI")):o=h(n)?x(e,t,"LI"):x(e,t),M(e,r,t,o),I(e.dom,r.parentNode)))):H(e.dom,t),!0},w=$,K=function(e){var t=E.getSelectedListItems(e);if(t.length){var n=b(e.selection.getRng()),o=void 0,r=void 0,i=E.getClosestListRootElm(e,e.selection.getStart(!0));for(o=t.length;o--;)for(var a=t[o].parentNode;a&&a!==i;){for(r=t.length;r--;)if(t[r]===a){t.splice(o,1);break}a=a.parentNode}for(o=0;o<t.length&&($(e,t[o])||0!==o);o++);return e.selection.setRng(D(n)),e.nodeChanged(),!0}},Q=function(n,e){v.each(e,function(e,t){n.setAttribute(t,e)})},W=function(e,t,n){var o,r,i,a,s,d,l;o=e,r=t,a=(i=n)["list-style-type"]?i["list-style-type"]:null,o.setStyle(r,"list-style-type",a),s=e,Q(d=t,(l=n)["list-attributes"]),v.each(s.select("li",d),function(e){Q(e,l["list-item-attributes"])})},j=function(e,t,n,o){var r,i;for(r=t[n?"startContainer":"endContainer"],i=t[n?"startOffset":"endOffset"],1===r.nodeType&&(r=r.childNodes[Math.min(i,r.childNodes.length-1)]||r),!n&&C(r.nextSibling)&&(r=r.nextSibling);r.parentNode!==o;){if(y(e,r))return r;if(/^(TD|TH)$/.test(r.parentNode.nodeName))return r;r=r.parentNode}return r},q=function(c,f,u){void 0===u&&(u={});var e,t=c.selection.getRng(!0),m="LI",n=E.getClosestListRootElm(c,c.selection.getStart(!0)),g=c.dom;"false"!==g.getContentEditable(c.selection.getNode())&&("DL"===(f=f.toUpperCase())&&(m="DT"),e=b(t),v.each(function(n,e,o){for(var r,i=[],a=n.dom,t=j(n,e,!0,o),s=j(n,e,!1,o),d=[],l=t;l&&(d.push(l),l!==s);l=l.nextSibling);return v.each(d,function(e){if(y(n,e))return i.push(e),void(r=null);if(a.isBlock(e)||C(e))return C(e)&&a.remove(e),void(r=null);var t=e.nextSibling;p.isBookmarkNode(e)&&(y(n,t)||!t&&e.parentNode===o)?r=null:(r||(r=a.create("p"),e.parentNode.insertBefore(r,e),i.push(r)),r.appendChild(e))}),i}(c,t,n),function(e){var t,n,o,r,i,a,s,d,l;(n=e.previousSibling)&&h(n)&&n.nodeName===f&&(o=n,r=u,i=g.getStyle(o,"list-style-type"),a=r?r["list-style-type"]:"",i===(a=null===a?"":a))?(t=n,e=g.rename(e,m),n.appendChild(e)):(t=g.create(f),e.parentNode.insertBefore(t,e),t.appendChild(e),e=g.rename(e,m)),s=g,d=e,l=["margin","margin-right","margin-bottom","margin-left","margin-top","padding","padding-right","padding-bottom","padding-left","padding-top"],v.each(l,function(e){var t;return s.setStyle(d,((t={})[e]="",t))}),W(g,t,u),z(c.dom,t)}),c.selection.setRng(D(e)))},F=function(o){var e=b(o.selection.getRng(!0)),r=E.getClosestListRootElm(o,o.selection.getStart(!0)),t=E.getSelectedListItems(o),n=v.grep(t,function(e){return o.dom.isEmpty(e)});t=v.grep(t,function(e){return!o.dom.isEmpty(e)}),v.each(n,function(e){m(o.dom,e)&&w(o,e)}),v.each(t,function(e){var t,n;if(e.parentNode!==o.getBody()){for(t=e;t&&t!==r;t=t.parentNode)h(t)&&(n=t);M(o,n,e),I(o.dom,n.parentNode)}}),o.selection.setRng(D(e))},V=function(e,t,n){return d=n,(s=t)&&d&&h(s)&&s.nodeName===d.nodeName&&(i=t,a=n,(r=e).getStyle(i,"list-style-type",!0)===r.getStyle(a,"list-style-type",!0))&&(o=n,t.className===o.className);var o,r,i,a,s,d},z=function(e,t){var n,o;if(n=t.nextSibling,V(e,t,n)){for(;o=n.firstChild;)t.appendChild(o);e.remove(n)}if(n=t.previousSibling,V(e,t,n)){for(;o=n.lastChild;)t.insertBefore(o,t.firstChild);e.remove(n)}},G=function(t,e,n,o,r){if(e.nodeName!==o||J(r)){var i=b(t.selection.getRng(!0));v.each([e].concat(n),function(e){!function(e,t,n,o){if(t.nodeName!==n){var r=e.rename(t,n);W(e,r,o)}else W(e,t,o)}(t.dom,e,o,r)}),t.selection.setRng(D(i))}else F(t)},J=function(e){return"list-style-type"in e},X={toggleList:function(e,t,n){var o=E.getParentList(e),r=E.getSelectedSubLists(e);n=n||{},o&&0<r.length?G(e,o,r,t,n):function(e,t,n,o){if(t!==e.getBody())if(t)if(t.nodeName!==n||J(o)){var r=b(e.selection.getRng(!0));W(e.dom,t,o),z(e.dom,e.dom.rename(t,n)),e.selection.setRng(D(r))}else F(e);else q(e,n,o)}(e,o,t,n)},removeList:F,mergeWithAdjacentLists:z},Y=function(e,t,n,o){var r,i,a=t.startContainer,s=t.startOffset;if(3===a.nodeType&&(n?s<a.data.length:0<s))return a;for(r=e.schema.getNonEmptyElements(),1===a.nodeType&&(a=d.getNode(a,s)),i=new l(a,o),n&&u(e.dom,a)&&i.next();a=i[n?"next":"prev2"]();){if("LI"===a.nodeName&&!a.hasChildNodes())return a;if(r[a.nodeName])return a;if(3===a.nodeType&&0<a.data.length)return a}},Z=function(e,t){var n=t.childNodes;return 1===n.length&&!h(n[0])&&e.isBlock(n[0])},ee=function(e,t,n){var o,r,i,a;if(r=Z(e,n)?n.firstChild:n,Z(i=e,a=t)&&i.remove(a.firstChild,!0),!m(e,t,!0))for(;o=t.firstChild;)r.appendChild(o)},te=function(e,t,n){var o,r,i=t.parentNode;g(e,t)&&g(e,n)&&(h(n.lastChild)&&(r=n.lastChild),i===n.lastChild&&C(i.previousSibling)&&e.remove(i.previousSibling),(o=n.lastChild)&&C(o)&&t.hasChildNodes()&&e.remove(o),m(e,n,!0)&&e.$(n).empty(),ee(e,t,n),r&&n.appendChild(r),e.remove(t),m(e,i)&&i!==e.getRoot()&&e.remove(i))},ne=function(e,t,n,o){var r,i,a,s=e.dom;if(s.isEmpty(o))i=n,a=o,(r=e).dom.$(a).empty(),te(r.dom,i,a),r.selection.setCursorLocation(a);else{var d=b(t);te(s,n,o),e.selection.setRng(D(d))}},oe=function(e,t){var n,o,r,i=e.dom,a=e.selection,s=a.getStart(),d=E.getClosestListRootElm(e,s),l=i.getParent(a.getStart(),"LI",d);if(l){if((n=l.parentNode)===e.getBody()&&m(i,n))return!0;if(o=L(a.getRng(!0)),(r=i.getParent(Y(e,o,t,d),"LI",d))&&r!==l)return t?ne(e,o,r,l):function(e,t,n,o){var r=b(t);te(e.dom,n,o);var i=D(r);e.selection.setRng(i)}(e,o,l,r),!0;if(!r&&!t&&X.removeList(e))return!0}return!1},re=function(e,t){return oe(e,t)||function(r,i){var a=r.dom,e=r.selection.getStart(),s=E.getClosestListRootElm(r,e),d=a.getParent(e,a.isBlock,s);if(d&&a.isEmpty(d)){var t=L(r.selection.getRng(!0)),l=a.getParent(Y(r,t,i,s),"LI",s);if(l)return r.undoManager.transact(function(){var e,t,n,o;t=d,n=s,o=(e=a).getParent(t.parentNode,e.isBlock,n),e.remove(t),o&&e.isEmpty(o)&&e.remove(o),X.mergeWithAdjacentLists(a,l.parentNode),r.selection.select(l,!0),r.selection.collapse(i)}),!0}return!1}(e,t)},ie=function(e,t){return e.selection.isCollapsed()?re(e,t):(o=(n=e).selection.getStart(),r=E.getClosestListRootElm(n,o),!!(n.dom.getParent(o,"LI,DT,DD",r)||0<E.getSelectedListItems(n).length)&&(n.undoManager.transact(function(){n.execCommand("Delete"),I(n.dom,n.getBody())}),!0));var n,o,r},ae=function(t){t.on("keydown",function(e){e.keyCode===n.BACKSPACE?ie(t,!1)&&e.preventDefault():e.keyCode===n.DELETE&&ie(t,!0)&&e.preventDefault()})},se=ie,de=function(t){return{backspaceDelete:function(e){se(t,e)}}},le=t.DOM,ce=function(e,t){var n;if(h(e)){for(;n=e.firstChild;)t.appendChild(n);le.remove(e)}},fe=function(e){var t,n,o,r,i=E.getSelectedListItems(e);if(i.length){for(var a=b(e.selection.getRng(!0)),s=0;s<i.length&&(t=i[s],r=o=n=void 0,("DT"===t.nodeName?(le.rename(t,"DD"),1):(n=t.previousSibling)&&h(n)?(n.appendChild(t),1):n&&"LI"===n.nodeName&&h(n.lastChild)?(n.lastChild.appendChild(t),ce(t.lastChild,n.lastChild),1):(n=t.nextSibling)&&h(n)?(n.insertBefore(t,n.firstChild),1):(n=t.previousSibling)&&"LI"===n.nodeName&&(o=le.create(t.parentNode.nodeName),(r=le.getStyle(t.parentNode,"listStyleType"))&&le.setStyle(o,"listStyleType",r),n.appendChild(o),o.appendChild(t),ce(t.lastChild,o),1))||0!==s);s++);return e.selection.setRng(D(a)),e.nodeChanged(),!0}},ue=function(t,n){return function(){var e=t.dom.getParent(t.selection.getStart(),"UL,OL,DL");return e&&e.nodeName===n}},me=function(o){o.on("BeforeExecCommand",function(e){var t,n=e.command.toLowerCase();if("indent"===n?fe(o)&&(t=!0):"outdent"===n&&K(o)&&(t=!0),t)return o.fire("ExecCommand",{command:e.command}),e.preventDefault(),!0}),o.addCommand("InsertUnorderedList",function(e,t){X.toggleList(o,"UL",t)}),o.addCommand("InsertOrderedList",function(e,t){X.toggleList(o,"OL",t)}),o.addCommand("InsertDefinitionList",function(e,t){X.toggleList(o,"DL",t)}),o.addQueryStateHandler("InsertUnorderedList",ue(o,"UL")),o.addQueryStateHandler("InsertOrderedList",ue(o,"OL")),o.addQueryStateHandler("InsertDefinitionList",ue(o,"DL"))},ge=function(e){return e.getParam("lists_indent_on_tab",!0)},pe=function(e){var t;ge(e)&&(t=e).on("keydown",function(e){e.keyCode!==n.TAB||n.metaKeyPressed(e)||t.dom.getParent(t.selection.getStart(),"LI,DT,DD")&&(e.preventDefault(),e.shiftKey?K(t):fe(t))}),ae(e)},ve=function(t,i){return function(e){var r=e.control;t.on("NodeChange",function(e){var t=function(e,t){for(var n=0;n<e.length;n++)if(t(e[n]))return n;return-1}(e.parents,a),n=-1!==t?e.parents.slice(0,t):e.parents,o=v.grep(n,h);r.active(0<o.length&&o[0].nodeName===i)})}},he=function(e){var t,n,o,r;n="advlist",o=(t=e).settings.plugins?t.settings.plugins:"",-1===v.inArray(o.split(/[ ,]/),n)&&(e.addButton("numlist",{active:!1,title:"Numbered list",cmd:"InsertOrderedList",onPostRender:ve(e,"OL")}),e.addButton("bullist",{active:!1,title:"Bullet list",cmd:"InsertUnorderedList",onPostRender:ve(e,"UL")})),e.addButton("indent",{icon:"indent",title:"Increase indent",cmd:"Indent",onPostRender:(r=e,function(e){var n=e.control;r.on("nodechange",function(){var e=E.getSelectedListItems(r),t=0<e.length&&s(e[0]);n.disabled(t)})})})};e.add("lists",function(e){return pe(e),he(e),me(e),de(e)})}();