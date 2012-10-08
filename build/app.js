/* Copyright (c) 2011-2012 Nihad Abbasov / mail@narkoz.me
 *
 * Emotee v1.2.0, 1349710784345
 * https://github.com/narkoz/emotee
 *
 * All rights reserved.
 */

/*
originally based on http://amachang.sakura.ne.jp/misc/aamaker/
with inspiration from http://twitter.com/emotebot
*/(function(){var e,t,n,r,i,s,o,u,a;e={color:["pink","gray","#ffd300","red","blue","green","orange","black"],head:[["(",")"],["|","|"],["｜","｜"]],eyes:[["◕","◕"],["╹","╹"],["＞","＜"],["＾","＾"],["・","・"],["´","`"],["≧","≦"],["ﾟ","ﾟ"],[", "],["❛","❛"],["⊙","⊙"],["￣","￣"],["´・","・`"],["`・","・´"],["･ิ","･ิ"],["◕ˇ","ˇ◕"]],cheeks:[["",""],["*",""],["","*"],["","#"],["#",""],["✿",""],["","✿"],["","；"],["；",""],["｡",""],["","｡"],["","▰"],["▰",""],["","๑"],["๑",""],["｡","｡"],["▰","▰"],["๑","๑"]],mouth:["ω","∀","▽","△","Д","□","～","ー","ェ","ρ","o"],hands:[["","","","",""],["","","m","",""],["","","ლ","",""],["ლ","","","ლ",""],["","｢","","","｢"],["","n","","","η"],["","∩","","∩",""],["∩","","","","∩"],["ヽ","","","","ノ"],["┐","","","","┌"],["╮","","","","╭"],["<","","","","/"],["╰","",""," ",""],["o","","","","o"],["o","","","","ツ"],["","","","","ﾉｼ"],[""," つ","","","つ"],[""," ","","","o彡ﾟ"]]},t=document.getElementById("color"),n=document.getElementById("smilie"),a=n.style,s=function(e){return Math.floor(Math.random()*e)},i=function(e){return e[s(e.length)]},o=function(){var e,n,r,i;i=[];for(e=n=0,r=t.children.length;0<=r?n<r:n>r;e=0<=r?++n:--n)t[e].value===localStorage.color?i.push(t[e].selected="true"):i.push(void 0);return i},u=function(){return t.value==="default"?localStorage.removeItem("color"):localStorage.color=t.value,r()},r=function(){var t,r,s,o,u;return o=i(e.head),r=i(e.eyes),t=i(e.cheeks),u=i(e.mouth),s=i(e.hands),a.color=localStorage.color?localStorage.color:i(e.color),n.textContent=[s[0],o[0],s[1]||(s[3]?"":t[0]),r[0],s[2]||u,r[1],s[3]||(s[1]?"":t[1]),o[1],s[4]].join("")},r(),n.onclick=function(){return r()},t!==null&&(t.onchange=function(){return u()},window.onload=function(){return o()})}).call(this);