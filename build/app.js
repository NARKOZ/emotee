/* Copyright (c) 2011-2012 Nihad Abbasov / mail@narkoz.me
 *
 * Emotee v1.1.0, 1349706938806
 * https://github.com/narkoz/emotee
 *
 * All rights reserved.
 */

/*
originally based on http://amachang.sakura.ne.jp/misc/aamaker/
with inspiration from http://twitter.com/emotebot
*/(function(){var e,t,n,r,i,s;e={color:["pink","gray","#ffd300","red","blue","green","orange","black"],head:[["(",")"],["|","|"],["｜","｜"]],eyes:[["◕","◕"],["╹","╹"],["＞","＜"],["＾","＾"],["・","・"],["´","`"],["≧","≦"],["ﾟ","ﾟ"],[", "],["❛","❛"],["⊙","⊙"],["￣","￣"],["´・","・`"],["`・","・´"],["･ิ","･ิ"],["◕ˇ","ˇ◕"]],cheeks:[["",""],["*",""],["","*"],["","#"],["#",""],["✿",""],["","✿"],["","；"],["；",""],["｡",""],["","｡"],["","▰"],["▰",""],["","๑"],["๑",""],["｡","｡"],["▰","▰"],["๑","๑"]],mouth:["ω","∀","▽","△","Д","□","～","ー","ェ","ρ","o"],hands:[["","","","",""],["","","m","",""],["","","ლ","",""],["ლ","","","ლ",""],["","｢","","","｢"],["","n","","","η"],["","∩","","∩",""],["∩","","","","∩"],["ヽ","","","","ノ"],["┐","","","","┌"],["╮","","","","╭"],["<","","","","/"],["╰","",""," ",""],["o","","","","o"],["o","","","","ツ"],["","","","","ﾉｼ"],[""," つ","","","つ"],[""," ","","","o彡ﾟ"]]},t=document.getElementById("color"),n=document.getElementById("smilie"),s=n.style,i=function(e){return Math.floor(Math.random()*e)},r=function(e){return e[i(e.length)]},window.restoreOptions=function(){var e,n,r,i;i=[];for(e=n=0,r=t.children.length;0<=r?n<r:n>r;e=0<=r?++n:--n)t[e].value===localStorage.color?i.push(t[e].selected="true"):i.push(void 0);return i},window.saveColor=function(){return t.value==="default"?localStorage.removeItem("color"):localStorage.color=t.value,generate()},window.generate=function(){var t,i,o,u,a;return u=r(e.head),i=r(e.eyes),t=r(e.cheeks),a=r(e.mouth),o=r(e.hands),s.color=localStorage.color?localStorage.color:r(e.color),n.textContent=[o[0],u[0],o[1]||(o[3]?"":t[0]),i[0],o[2]||a,i[1],o[3]||(o[1]?"":t[1]),u[1],o[4]].join("")},generate()}).call(this);