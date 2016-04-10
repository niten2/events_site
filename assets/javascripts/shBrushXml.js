/**
 * SyntaxHighlighter
 * http://alexgorbatchev.com/SyntaxHighlighter
 *
 * SyntaxHighlighter is donationware. If you are using it, please donate.
 * http://alexgorbatchev.com/SyntaxHighlighter/donate.html
 *
 * @version
 * 3.0.83 (July 02 2010)
 * 
 * @copyright
 * Copyright (C) 2004-2010 Alex Gorbatchev.
 *
 * @license
 * Dual licensed under the MIT and GPL licenses.
 */
!function(){function e(){function e(e){var n=SyntaxHighlighter.Match,t=e[0],i=new XRegExp("(&lt;|<)[\\s\\/\\?]*(?<name>[:\\w-\\.]+)","xg").exec(t),r=[];if(null!=e.attributes)for(var l,x=new XRegExp("(?<name> [\\w:\\-\\.]+)\\s*=\\s*(?<value> \".*?\"|'.*?'|\\w+)","xg");null!=(l=x.exec(t));)r.push(new n(l.name,e.index+l.index,"color1")),r.push(new n(l.value,e.index+l.index+l[0].indexOf(l.value),"string"));return null!=i&&r.push(new n(i.name,e.index+i[0].indexOf(i.name),"keyword")),r}this.regexList=[{regex:new XRegExp("(\\&lt;|<)\\!\\[[\\w\\s]*?\\[(.|\\s)*?\\]\\](\\&gt;|>)","gm"),css:"color2"},{regex:SyntaxHighlighter.regexLib.xmlComments,css:"comments"},{regex:new XRegExp("(&lt;|<)[\\s\\/\\?]*(\\w+)(?<attributes>.*?)[\\s\\/\\?]*(&gt;|>)","sg"),func:e}]}"undefined"!=typeof require?SyntaxHighlighter=require("shCore").SyntaxHighlighter:null,e.prototype=new SyntaxHighlighter.Highlighter,e.aliases=["xml","xhtml","xslt","html"],SyntaxHighlighter.brushes.Xml=e,"undefined"!=typeof exports?exports.Brush=e:null}();