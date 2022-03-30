(self["webpackChunkinovatta_strapi_1"] = self["webpackChunkinovatta_strapi_1"] || []).push([[6748],{

/***/ 361:
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

"use strict";

  
  
  if (true) {
    module.exports = __webpack_require__(13740);
  } else {}
  

/***/ }),

/***/ 13740:
/***/ (function(module, __unused_webpack_exports, __webpack_require__) {

/* provided dependency */ var console = __webpack_require__(25108);
!function(n,e){ true?module.exports=e(__webpack_require__(67294),__webpack_require__(78384),__webpack_require__(73935),__webpack_require__(39711),__webpack_require__(66526),__webpack_require__(75380)):0}(this,(function(n,e,t,r,o,i){return function(n){var e={};function t(r){if(e[r])return e[r].exports;var o=e[r]={i:r,l:!1,exports:{}};return n[r].call(o.exports,o,o.exports,t),o.l=!0,o.exports}return t.m=n,t.c=e,t.d=function(n,e,r){t.o(n,e)||Object.defineProperty(n,e,{enumerable:!0,get:r})},t.r=function(n){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(n,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(n,"__esModule",{value:!0})},t.t=function(n,e){if(1&e&&(n=t(n)),8&e)return n;if(4&e&&"object"==typeof n&&n&&n.__esModule)return n;var r=Object.create(null);if(t.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:n}),2&e&&"string"!=typeof n)for(var o in n)t.d(r,o,function(e){return n[e]}.bind(null,o));return r},t.n=function(n){var e=n&&n.__esModule?function(){return n.default}:function(){return n};return t.d(e,"a",e),e},t.o=function(n,e){return Object.prototype.hasOwnProperty.call(n,e)},t.p="",t(t.s=94)}([function(n,e,t){n.exports=t(17)()},function(e,t){e.exports=n},function(n,t){n.exports=e},function(n,e){n.exports=function(n,e){return e||(e=n.slice(0)),Object.freeze(Object.defineProperties(n,{raw:{value:Object.freeze(e)}}))},n.exports.default=n.exports,n.exports.__esModule=!0},function(n,e,t){"use strict";t.r(e),t.d(e,"Box",(function(){return p}));var r,o=t(3),i=t.n(o),a=t(0),c=t.n(a),u=t(2),s=t.n(u),l=t(7),d={color:!0},p=s.a.div.withConfig({shouldForwardProp:function(n,e){return!d[n]&&e(n)}})(r||(r=i()(["\n  // Font\n  font-size: ",";\n\n  // Colors\n  background: ",";\n  color: ",";\n\n  // Spaces\n  ","\n  ","\n  ","\n  ","\n  ","\n  ","\n  ","\n  ","\n  ","\n\n  // Responsive hiding\n  ","\n  ","\n  \n\n  // Borders\n  border-radius: ",";\n  border-style: ",";\n  border-width: ",";\n  border-color: ",";\n  border: ",";\n\n  // Shadows\n  box-shadow: ",";\n\n  // Handlers\n  pointer-events: ",";\n  &:hover {\n    ","\n  }\n\n  // Display\n  display: ",";\n\n  // Position\n  position: ",";\n  left: ",";\n  right: ",";\n  top: ",";\n  bottom: ",";\n  z-index: ",";\n  overflow: ",";\n  cursor: ",";\n\n  // Size\n  width: ",";\n  max-width: ",";\n  min-width: ",";\n  height: ",";\n  max-height: ",";\n  min-height: ",";\n\n  // Animation\n  transition: ",";\n  transform: ",";\n  animation: ",";\n\n  //Flexbox children props\n  flex-shrink: ",";\n  flex-grow: ",";\n  flex-basis: ",";\n  flex: ",";\n\n  // Text\n  text-align: ",";\n  text-transform: ",";\n  line-height: ",";\n\n  // Cursor\n  cursor: ",";\n"])),(function(n){var e=n.fontSize;return n.theme.fontSizes[e]||e}),(function(n){var e=n.theme,t=n.background;return e.colors[t]}),(function(n){var e=n.theme,t=n.color;return e.colors[t]}),(function(n){var e=n.theme,t=n.padding;return Object(l.a)("padding",t,e)}),(function(n){var e=n.theme,t=n.paddingTop;return Object(l.a)("padding-top",t,e)}),(function(n){var e=n.theme,t=n.paddingRight;return Object(l.a)("padding-right",t,e)}),(function(n){var e=n.theme,t=n.paddingBottom;return Object(l.a)("padding-bottom",t,e)}),(function(n){var e=n.theme,t=n.paddingLeft;return Object(l.a)("padding-left",t,e)}),(function(n){var e=n.theme,t=n.marginLeft;return Object(l.a)("margin-left",t,e)}),(function(n){var e=n.theme,t=n.marginRight;return Object(l.a)("margin-right",t,e)}),(function(n){var e=n.theme,t=n.marginTop;return Object(l.a)("margin-top",t,e)}),(function(n){var e=n.theme,t=n.marginBottom;return Object(l.a)("margin-bottom",t,e)}),(function(n){var e=n.theme;return n.hiddenS?"".concat(e.mediaQueries.tablet," { display: none; }"):void 0}),(function(n){var e=n.theme;return n.hiddenXS?"".concat(e.mediaQueries.mobile," { display: none; }"):void 0}),(function(n){var e=n.theme,t=n.hasRadius,r=n.borderRadius;return t?e.borderRadius:r}),(function(n){return n.borderStyle}),(function(n){return n.borderWidth}),(function(n){var e=n.borderColor;return n.theme.colors[e]}),(function(n){var e=n.theme,t=n.borderColor,r=n.borderStyle,o=n.borderWidth;if(t&&!r&&!o)return"1px solid ".concat(e.colors[t])}),(function(n){var e=n.theme,t=n.shadow;return e.shadows[t]}),(function(n){return n.pointerEvents}),(function(n){var e=n._hover,t=n.theme;return e?e(t):void 0}),(function(n){return n.display}),(function(n){return n.position}),(function(n){var e=n.left;return n.theme.spaces[e]||e}),(function(n){var e=n.right;return n.theme.spaces[e]||e}),(function(n){var e=n.top;return n.theme.spaces[e]||e}),(function(n){var e=n.bottom;return n.theme.spaces[e]||e}),(function(n){return n.zIndex}),(function(n){return n.overflow}),(function(n){return n.cursor}),(function(n){var e=n.width;return n.theme.spaces[e]||e}),(function(n){var e=n.maxWidth;return n.theme.spaces[e]||e}),(function(n){var e=n.minWidth;return n.theme.spaces[e]||e}),(function(n){var e=n.height;return n.theme.spaces[e]||e}),(function(n){var e=n.maxHeight;return n.theme.spaces[e]||e}),(function(n){var e=n.minHeight;return n.theme.spaces[e]||e}),(function(n){return n.transition}),(function(n){return n.transform}),(function(n){return n.animation}),(function(n){return n.shrink}),(function(n){return n.grow}),(function(n){return n.basis}),(function(n){return n.flex}),(function(n){return n.textAlign}),(function(n){return n.textTransform}),(function(n){return n.lineHeight}),(function(n){return n.cursor}));p.displayName="Box",p.defaultProps={background:void 0,borderColor:void 0,color:void 0,hiddenS:!1,hiddenXS:!1,padding:void 0,paddingTop:void 0,paddingRight:void 0,paddingBottom:void 0,paddingLeft:void 0,hasRadius:!1,shadow:void 0,children:null,shrink:void 0,grow:void 0,basis:void 0,flex:void 0,_hover:function(){}},p.propTypes={_hover:c.a.func,background:c.a.string,basis:c.a.oneOfType([c.a.string,c.a.string]),borderColor:c.a.string,children:c.a.oneOfType([c.a.node,c.a.string]),color:c.a.string,flex:c.a.oneOfType([c.a.string,c.a.string]),grow:c.a.oneOfType([c.a.string,c.a.string]),hasRadius:c.a.bool,hiddenS:c.a.bool,hiddenXS:c.a.bool,padding:c.a.oneOfType([c.a.number,c.a.arrayOf(c.a.number)]),paddingBottom:c.a.oneOfType([c.a.number,c.a.arrayOf(c.a.number)]),paddingLeft:c.a.oneOfType([c.a.number,c.a.arrayOf(c.a.number)]),paddingRight:c.a.oneOfType([c.a.number,c.a.arrayOf(c.a.number)]),paddingTop:c.a.oneOfType([c.a.number,c.a.arrayOf(c.a.number)]),shadow:c.a.string,shrink:c.a.oneOfType([c.a.string,c.a.string])}},function(n,e,t){var r=t(22);n.exports=function(n,e){if(null==n)return{};var t,o,i=r(n,e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(n);for(o=0;o<a.length;o++)t=a[o],e.indexOf(t)>=0||Object.prototype.propertyIsEnumerable.call(n,t)&&(i[t]=n[t])}return i},n.exports.default=n.exports,n.exports.__esModule=!0},function(n,e){function t(){return n.exports=t=Object.assign||function(n){for(var e=1;e<arguments.length;e++){var t=arguments[e];for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&(n[r]=t[r])}return n},n.exports.default=n.exports,n.exports.__esModule=!0,t.apply(this,arguments)}n.exports=t,n.exports.default=n.exports,n.exports.__esModule=!0},function(n,e,t){"use strict";var r=t(10),o=t.n(r),i=t(13),a=t.n(i);e.a=function(n,e,t){var r=e;if(Array.isArray(e)||"object"!==a()(e)||(r=[null==e?void 0:e.desktop,null==e?void 0:e.tablet,null==e?void 0:e.mobile]),void 0!==r){if(Array.isArray(r)){var i=r,c=o()(i,3),u=c[0],s=c[1],l=c[2],d="".concat(n,": ").concat(t.spaces[u],";");return void 0!==s&&(d+="".concat(t.mediaQueries.tablet,"{\n          ").concat(n,": ").concat(t.spaces[s],";\n        }")),void 0!==l&&(d+="".concat(t.mediaQueries.mobile,"{\n          ").concat(n,": ").concat(t.spaces[l],";\n        }")),d}var p=t.spaces[r]||r;return"".concat(n,": ").concat(p,";")}}},function(n,e,t){"use strict";t.r(e),t.d(e,"Typography",(function(){return d}));var r,o=t(3),i=t.n(o),a=t(0),c=t.n(a),u=t(2),s=["alpha","beta","delta","epsilon","omega","pi","sigma"],l={fontSize:!0,fontWeight:!0},d=t.n(u).a.span.withConfig({shouldForwardProp:function(n,e){return!l[n]&&e(n)}})(r||(r=i()(["\n  font-weight: ",";\n  font-size: ",";\n  line-height: ",";\n  color: ",";\n  text-transform: ",";\n  ","\n  ","\n"])),(function(n){var e=n.theme,t=n.fontWeight;return e.fontWeights[t]}),(function(n){var e=n.theme,t=n.fontSize;return e.fontSizes[t]}),(function(n){var e=n.theme,t=n.lineHeight;return e.lineHeights[t]}),(function(n){var e=n.theme,t=n.textColor;return e.colors[t||"neutral800"]}),(function(n){return n.textTransform}),(function(n){return n.ellipsis&&"\n    display: block;\n    white-space: nowrap;\n    overflow: hidden;\n    text-overflow: ellipsis;\n  "}),(function(n){var e=n.variant,t=n.theme;switch(e){case"alpha":return"\n        font-weight: ".concat(t.fontWeights.bold,";\n        font-size: ").concat(t.fontSizes[5],";\n        line-height: ").concat(t.lineHeights[2],";\n      ");case"beta":return"\n        font-weight: ".concat(t.fontWeights.bold,";\n        font-size: ").concat(t.fontSizes[4],";\n        line-height: ").concat(t.lineHeights[1],";\n      ");case"delta":return"\n        font-weight: ".concat(t.fontWeights.semiBold,";\n        font-size: ").concat(t.fontSizes[3],";\n        line-height: ").concat(t.lineHeights[2],";\n      ");case"epsilon":return"\n        font-size: ".concat(t.fontSizes[3],";\n        line-height: ").concat(t.lineHeights[6],";\n      ");case"omega":return"\n        font-size: ".concat(t.fontSizes[2],";\n        line-height: ").concat(t.lineHeights[4],";\n      ");case"pi":return"\n        font-size: ".concat(t.fontSizes[1],";\n        line-height: ").concat(t.lineHeights[3],";\n      ");case"sigma":return"\n        font-weight: ".concat(t.fontWeights.bold,";\n        font-size: ").concat(t.fontSizes[0],";\n        line-height: ").concat(t.lineHeights[5],";\n        text-transform: uppercase;\n      ");default:return"\n        font-size: ".concat(t.fontSizes[2],";\n      ")}}));d.defaultProps={fontWeight:void 0,fontSize:void 0,lineHeight:void 0,textColor:void 0,textTransform:void 0,variant:"omega"},d.propTypes={fontSize:c.a.oneOfType([c.a.number,c.a.string]),fontWeight:c.a.string,lineHeight:c.a.oneOfType([c.a.number,c.a.string]),textColor:c.a.string,textTransform:c.a.string,variant:c.a.oneOf(s)}},function(n,e,t){"use strict";t.r(e),t.d(e,"Flex",(function(){return p}));var r,o=t(3),i=t.n(o),a=t(0),c=t.n(a),u=t(2),s=t.n(u),l=t(4),d={direction:!0},p=s()(l.Box).withConfig({shouldForwardProp:function(n,e){return!d[n]&&e(n)}})(r||(r=i()(["\n  display: ",";\n  flex-direction: ",";\n  justify-content: ",";\n  align-items: ",";\n  flex-wrap: ",";\n"])),(function(n){return n.inline?"inline-flex":"flex"}),(function(n){return n.direction}),(function(n){return n.justifyContent}),(function(n){return n.alignItems}),(function(n){return n.wrap}));p.defaultProps={alignItems:"center",basis:void 0,direction:"row",inline:!1,justifyContent:void 0,reverse:!1,wrap:void 0},p.propTypes={alignItems:c.a.string,basis:c.a.oneOfType([c.a.string,c.a.number]),direction:c.a.string,inline:c.a.bool,justifyContent:c.a.string,reverse:c.a.bool,wrap:c.a.string}},function(n,e,t){var r=t(23),o=t(24),i=t(20),a=t(25);n.exports=function(n,e){return r(n)||o(n,e)||i(n,e)||a()},n.exports.default=n.exports,n.exports.__esModule=!0},,,function(n,e){function t(e){return"function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?(n.exports=t=function(n){return typeof n},n.exports.default=n.exports,n.exports.__esModule=!0):(n.exports=t=function(n){return n&&"function"==typeof Symbol&&n.constructor===Symbol&&n!==Symbol.prototype?"symbol":typeof n},n.exports.default=n.exports,n.exports.__esModule=!0),t(e)}n.exports=t,n.exports.default=n.exports,n.exports.__esModule=!0},,function(n,e,t){"use strict";t.d(e,"a",(function(){return i}));var r=t(1),o=0,i=function(n,e){return Object(r.useRef)(e||"".concat(n,"-").concat(++o)).current}},,function(n,e,t){"use strict";var r=t(18);function o(){}function i(){}i.resetWarningCache=o,n.exports=function(){function n(n,e,t,o,i,a){if(a!==r){var c=new Error("Calling PropTypes validators directly is not supported by the `prop-types` package. Use PropTypes.checkPropTypes() to call them. Read more at http://fb.me/use-check-prop-types");throw c.name="Invariant Violation",c}}function e(){return n}n.isRequired=n;var t={array:n,bool:n,func:n,number:n,object:n,string:n,symbol:n,any:n,arrayOf:e,element:n,elementType:n,instanceOf:e,node:n,objectOf:e,oneOf:e,oneOfType:e,shape:e,exact:e,checkPropTypes:i,resetWarningCache:o};return t.PropTypes=t,t}},function(n,e,t){"use strict";n.exports="SECRET_DO_NOT_PASS_THIS_OR_YOU_WILL_BE_FIRED"},function(n,e){n.exports=function(n,e){(null==e||e>n.length)&&(e=n.length);for(var t=0,r=new Array(e);t<e;t++)r[t]=n[t];return r},n.exports.default=n.exports,n.exports.__esModule=!0},function(n,e,t){var r=t(19);n.exports=function(n,e){if(n){if("string"==typeof n)return r(n,e);var t=Object.prototype.toString.call(n).slice(8,-1);return"Object"===t&&n.constructor&&(t=n.constructor.name),"Map"===t||"Set"===t?Array.from(n):"Arguments"===t||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(t)?r(n,e):void 0}},n.exports.default=n.exports,n.exports.__esModule=!0},function(n,e,t){"use strict";t.r(e),t.d(e,"VisuallyHidden",(function(){return c}));var r,o=t(3),i=t.n(o),a=t(2),c=t.n(a).a.div(r||(r=i()(["\n  border: 0;\n  clip: rect(0 0 0 0);\n  height: 1px;\n  margin: -1px;\n  overflow: hidden;\n  padding: 0;\n  position: absolute;\n  width: 1px;\n"])))},function(n,e){n.exports=function(n,e){if(null==n)return{};var t,r,o={},i=Object.keys(n);for(r=0;r<i.length;r++)t=i[r],e.indexOf(t)>=0||(o[t]=n[t]);return o},n.exports.default=n.exports,n.exports.__esModule=!0},function(n,e){n.exports=function(n){if(Array.isArray(n))return n},n.exports.default=n.exports,n.exports.__esModule=!0},function(n,e){n.exports=function(n,e){var t=null==n?null:"undefined"!=typeof Symbol&&n[Symbol.iterator]||n["@@iterator"];if(null!=t){var r,o,i=[],a=!0,c=!1;try{for(t=t.call(n);!(a=(r=t.next()).done)&&(i.push(r.value),!e||i.length!==e);a=!0);}catch(n){c=!0,o=n}finally{try{a||null==t.return||t.return()}finally{if(c)throw o}}return i}},n.exports.default=n.exports,n.exports.__esModule=!0},function(n,e){n.exports=function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")},n.exports.default=n.exports,n.exports.__esModule=!0},function(n,e,t){"use strict";t.r(e),t.d(e,"Stack",(function(){return E}));var r,o,i=t(6),a=t.n(i),c=t(5),u=t.n(c),s=t(3),l=t.n(s),d=t(1),p=t.n(d),f=t(0),h=t.n(f),g=t(2),m=t.n(g),v=t(4),b=t(9),y=["horizontal","spacing","size"],x={size:!0},w=m()(v.Box).withConfig({shouldForwardProp:function(n,e){return!x[n]&&e(n)}})(r||(r=l()(["\n  display: flex;\n  flex-direction: column;\n\n  & > * {\n    margin-top: 0;\n    margin-bottom: 0;\n  }\n\n  & > * + * {\n    margin-top: ",";\n  }\n"])),(function(n){var e=n.theme,t=n.spacing;return e.spaces[t]})),O=m()(b.Flex).withConfig({shouldForwardProp:function(n,e){return!x[n]&&e(n)}})(o||(o=l()(["\n  & > * {\n    margin-left: 0;\n    margin-right: 0;\n  }\n\n  & > * + * {\n    margin-left: ",";\n  }\n"])),(function(n){var e=n.theme,t=n.spacing;return e.spaces[t]})),E=Object(d.forwardRef)((function(n,e){var t=n.horizontal,r=n.spacing,o=n.size,i=u()(n,y);return o&&console.warn('Deprecation warning: Usage of "size" prop in Stack component is deprecated. This is discouraged and will be removed in the next major release. Please use "spacing" instead'),t?p.a.createElement(O,a()({ref:e,spacing:r||o},i)):p.a.createElement(w,a()({ref:e,spacing:r||o},i))}));E.displayName="Stack",E.defaultProps={horizontal:!1,size:void 0,spacing:void 0},E.propTypes={horizontal:h.a.bool,size:h.a.number,spacing:h.a.number}},,,function(n,e,t){"use strict";t.r(e),t.d(e,"Portal",(function(){return c}));var r=t(10),o=t.n(r),i=t(1),a=t(33),c=function(n){var e=n.children,t=Object(i.useRef)(null),r=Object(i.useState)(!1),c=o()(r,2),u=c[0],s=c[1];return Object(i.useLayoutEffect)((function(){return t.current=document.createElement("div"),t.current.setAttribute("data-react-portal","true"),document.body.appendChild(t.current),s(!0),function(){var n;null===(n=t.current)||void 0===n||n.remove()}}),[]),u&&t.current?Object(a.createPortal)(e,t.current):null}},function(n,e){n.exports=function(n,e,t){return e in n?Object.defineProperty(n,e,{value:t,enumerable:!0,configurable:!0,writable:!0}):n[e]=t,n},n.exports.default=n.exports,n.exports.__esModule=!0},,,function(n,e){n.exports=t},,,function(n,e){n.exports=r},,,,,function(n,e,t){"use strict";t.r(e),t.d(e,"Icon",(function(){return g}));var r,o=t(6),i=t.n(o),a=t(3),c=t.n(a),u=t(1),s=t.n(u),l=t(0),d=t.n(l),p=t(4),f=t(2),h=t.n(f)()(p.Box)(r||(r=c()(["\n  path {\n    fill: ",";\n  }\n  ","\n"])),(function(n){var e=n.color;return n.theme.colors[e]}),(function(n){var e=n.theme;return(0,n.colors)(e)})),g=s.a.forwardRef((function(n,e){return s.a.createElement(h,i()({ref:e},n))}));g.displayName="Icon",g.defaultProps={color:"neutral600",colors:function(){}},g.propTypes={color:d.a.string,colors:d.a.func}},,,,,function(n,e,t){"use strict";t.r(e),t.d(e,"Tooltip",(function(){return P}));var r,o=t(6),i=t.n(o),a=t(30),c=t.n(a),u=t(5),s=t.n(u),l=t(3),d=t.n(l),p=t(1),f=t.n(p),h=t(0),g=t.n(h),m=t(2),v=t.n(m),b=t(4),y=t(8),x=t(29),w=t(10),O=t.n(w),E=function(n,e,t){var r=n.getBoundingClientRect(),o=e.getBoundingClientRect();return"bottom"===t?function(n,e){var t=(n.width-e.width)/2;return{left:e.left-t,top:e.top+e.height+8+window.pageYOffset}}(r,o):"right"===t?function(n,e){var t=(n.height-e.height)/2;return{left:e.left+e.width+8,top:e.top-t+window.pageYOffset}}(r,o):"left"===t?function(n,e){var t=(n.height-e.height)/2;return{left:e.left-n.width-8,top:e.top-t+window.pageYOffset}}(r,o):function(n,e){var t=(n.width-e.width)/2,r=e.left-t,o=e.top-n.height-8+window.pageYOffset,i=window.innerWidth-e.right;return e.left+n.width-i>window.innerWidth?(r=e.left-n.width-8,o=e.top+window.scrollY-e.height/2):r<0?(r=e.width+e.left+8,o=e.top+window.scrollY-n.height/2+8):o<0&&r>0&&(o=e.top+e.height+8),{left:r,top:o}}(r,o)},T=t(15),j=t(21),C=["children","label","description","delay","position","id"],S=["visible"];function R(n,e){var t=Object.keys(n);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(n);e&&(r=r.filter((function(e){return Object.getOwnPropertyDescriptor(n,e).enumerable}))),t.push.apply(t,r)}return t}var k=v()(b.Box)(r||(r=d()(["\n  position: absolute;\n  /* z-index exist because of its position inside Modals */\n  z-index: 4;\n  display: ",";\n"])),(function(n){return n.visible?"revert":"none"})),P=function(n){var e=n.children,t=n.label,r=n.description,o=n.delay,a=n.position,u=n.id,l=s()(n,C),d=Object(T.a)("tooltip",u),h=Object(T.a)("description"),g=function(n){var e=Object(p.useState)(!1),t=O()(e,2),r=t[0],o=t[1],i=Object(p.useRef)(),a=function(){i.current&&clearTimeout(i.current)};Object(p.useEffect)((function(){return function(){a()}}),[]);return{visible:r,onFocus:function(){o(!0)},onBlur:function(){o(!1)},onMouseEnter:function(){i.current=setTimeout((function(){o(!0)}),n)},onMouseLeave:function(){a(),o(!1)}}}(o),m=g.visible,v=s()(g,S),b=function(n,e){var t=Object(p.useRef)(null),r=Object(p.useRef)(null);return Object(p.useLayoutEffect)((function(){if(n){var o=t.current,i=r.current,a=E(o,i,e);o.style.left="".concat(a.left,"px"),o.style.top="".concat(a.top,"px")}}),[n]),{tooltipWrapperRef:t,toggleSourceRef:r}}(m,a),w=b.tooltipWrapperRef,P=b.toggleSourceRef,_=f.a.cloneElement(e,function(n){for(var e=1;e<arguments.length;e++){var t=null!=arguments[e]?arguments[e]:{};e%2?R(Object(t),!0).forEach((function(e){c()(n,e,t[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(n,Object.getOwnPropertyDescriptors(t)):R(Object(t)).forEach((function(e){Object.defineProperty(n,e,Object.getOwnPropertyDescriptor(t,e))}))}return n}({tabIndex:0,"aria-labelledby":t?d:void 0,"aria-describedby":r?d:void 0},v));return f.a.createElement(f.a.Fragment,null,f.a.createElement(x.Portal,null,f.a.createElement(k,i()({id:d,background:"neutral900",hasRadius:!0,padding:2,role:"tooltip",ref:w,visible:m},l),m&&f.a.createElement(j.VisuallyHidden,{id:h},r),f.a.createElement(y.Typography,{as:"p",variant:"pi",fontWeight:"bold",textColor:"neutral0"},t||r))),f.a.createElement("span",{ref:P},_))};P.defaultProps={delay:500,id:void 0,position:"top",label:void 0,description:void 0},P.propTypes={children:g.a.node.isRequired,delay:g.a.number,description:g.a.string,id:g.a.string,label:g.a.string,position:g.a.oneOf(["top","left","bottom","right"])}},,,function(n,e,t){"use strict";t.r(e),t.d(e,"Grid",(function(){return w})),t.d(e,"GridItem",(function(){return j}));var r,o=t(6),i=t.n(o),a=t(5),c=t.n(a),u=t(3),s=t.n(u),l=t(1),d=t.n(l),p=t(2),f=t.n(p),h=t(0),g=t.n(h),m=Object(l.createContext)({gap:0,gridCols:12}),v=t(4),b=t(7),y=["gap","gridCols"],x=f()(v.Box)(r||(r=s()(["\n  display: grid;\n  grid-template-columns: repeat(",", 1fr);\n  ","\n"])),(function(n){return n.gridCols}),(function(n){var e=n.theme,t=n.gap;return Object(b.a)("gap",t,e)})),w=function(n){var e=n.gap,t=n.gridCols,r=c()(n,y);return d.a.createElement(m.Provider,{value:{gap:e,gridCols:t}},d.a.createElement(x,i()({gap:e,gridCols:t},r)))};w.defaultProps={gap:0,gridCols:12},w.propTypes={gap:g.a.oneOfType([g.a.number,g.a.arrayOf(g.a.number)]),gridCols:g.a.number};var O,E=["col","xs","s"],T=f.a.div(O||(O=s()(["\n  grid-column: span ",";\n  max-width: 100%;\n\n  "," {\n    grid-column: span ",";\n  }\n\n  "," {\n    grid-column: span ",";\n  }\n"])),(function(n){return n.col}),(function(n){return n.theme.mediaQueries.tablet}),(function(n){return n.s}),(function(n){return n.theme.mediaQueries.mobile}),(function(n){return n.xs})),j=function(n){var e=n.col,t=n.xs,r=n.s,o=c()(n,E),i=Object(l.useContext)(m),a=i.gap,u=i.gridCols;return d.a.createElement(T,{gap:a,gridCols:u,col:e,xs:t,s:r},d.a.createElement(v.Box,o))};j.defaultProps={col:void 0,s:void 0,xs:void 0},j.propTypes={col:g.a.number,s:g.a.number,xs:g.a.number}},,function(n,e){n.exports=o},function(n,e,t){"use strict";t.r(e),t.d(e,"Badge",(function(){return h}));var r=t(6),o=t.n(r),i=t(5),a=t.n(i),c=t(1),u=t.n(c),s=t(0),l=t.n(s),d=t(9),p=t(8),f=["active","textColor","backgroundColor","children","minWidth"],h=function(n){var e=n.active,t=n.textColor,r=n.backgroundColor,i=n.children,c=n.minWidth,s=a()(n,f);return u.a.createElement(d.Flex,o()({inline:!0,alignItem:"center",justifyContent:"center",minWidth:c,padding:1,background:e?"primary100":r,hasRadius:!0},s),u.a.createElement(p.Typography,{variant:"sigma",textColor:e?"primary600":t},i))};h.defaultProps={active:!1,backgroundColor:"neutral100",minWidth:5,textColor:"neutral600"},h.propTypes={active:l.a.bool,backgroundColor:l.a.string,children:l.a.oneOfType([l.a.number,l.a.string]).isRequired,minWidth:l.a.number,textColor:l.a.string}},,function(n,e,t){"use strict";t.r(e),t.d(e,"Divider",(function(){return b}));var r,o=t(6),i=t.n(o),a=t(5),c=t.n(a),u=t(3),s=t.n(u),l=t(1),d=t.n(l),p=t(0),f=t.n(p),h=t(4),g=t(2),m=["unsetMargin"],v=t.n(g)()(h.Box)(r||(r=s()(["\n  height: 1px;\n  border: none;\n  ","\n"])),(function(n){return n.unsetMargin?"margin: 0;":""})),b=function(n){var e=n.unsetMargin,t=c()(n,m);return d.a.createElement(v,i()({},t,{as:"hr",unsetMargin:e}))};b.defaultProps={background:"neutral150",unsetMargin:!0},b.propTypes={background:f.a.string,unsetMargin:f.a.bool}},,,,function(n,e){n.exports=i},,,,,,,,,,,,,,,,function(n,e,t){"use strict";t.r(e),t.d(e,"Avatar",(function(){return j})),t.d(e,"Initials",(function(){return R})),t.d(e,"AvatarGroup",(function(){return k}));var r,o,i,a,c,u,s=t(10),l=t.n(s),d=t(3),p=t.n(d),f=t(1),h=t.n(f),g=t(2),m=t.n(g),v=t(0),b=t.n(v),y=t(8),x=t(9),w=m.a.img(r||(r=p()(["\n  border-radius: 50%;\n  display: block;\n  position: relative;\n"]))),O=m.a.div(o||(o=p()(["\n  position: relative;\n  width: ","px;\n  height: ","px;\n  z-index: ",";\n"])),26,26,(function(n){return n.hovering?1:void 0})),E=m.a.img(i||(i=p()(["\n  border-radius: 50%;\n  position: absolute;\n  transform: translate(-","px, -100%);\n  margin-top: -",";\n"])),19,(function(n){return n.theme.spaces[1]})),T=m.a.div(a||(a=p()(["\n  z-index: 1;\n  border-radius: 50%;\n  position: absolute;\n  width: ","px;\n  height: ","px;\n  background: ",";\n  opacity: 0.4;\n"])),26,26,(function(n){return n.theme.colors.neutral0})),j=function(n){var e=n.src,t=n.alt,r=n.preview,o=Object(f.useState)(!1),i=l()(o,2),a=i[0],c=i[1];return h.a.createElement("span",null,r&&a?h.a.createElement(E,{"aria-hidden":!0,alt:"",width:"".concat(64,"px"),height:"".concat(64,"px"),src:!0===r?e:r}):null,h.a.createElement(O,{hovering:r&&a,onMouseEnter:function(){return c(!0)},onMouseLeave:function(){return c(!1)}},r&&a?h.a.createElement(T,null):null,h.a.createElement(w,{src:e,alt:t,width:"".concat(26,"px"),height:"".concat(26,"px")})))},C=function(n){return function(e){return e.theme.colors[n]}},S=m()(x.Flex)(c||(c=p()(["\n  width: ","px;\n  height: ","px;\n  border-radius: 50%;\n\n  background: linear-gradient(\n    157deg,\n    "," 0%,\n    "," 50%,\n    "," 81%,\n    "," 96%\n  );\n\n  span {\n    line-height: 0;\n  }\n"])),26,26,C("primary600"),C("primary500"),C("primary200"),C("primary100")),R=function(n){var e=n.children;return h.a.createElement(S,{justifyContent:"center"},h.a.createElement(y.Typography,{fontWeight:"bold",textColor:"neutral0",fontSize:0,textTransform:"uppercase"},e))};R.propTypes={children:b.a.string.isRequired},j.defaultProps={preview:void 0},j.propTypes={alt:b.a.string.isRequired,preview:b.a.oneOfType([b.a.string,b.a.bool]),src:b.a.string.isRequired};var k=m()(x.Flex)(u||(u=p()(["\n  & > * + * {\n    margin-left: -","px;\n  }\n"])),13)},,,,,,,,,,,,,,,,,,,,function(n,e,t){"use strict";t.r(e),t.d(e,"MainNav",(function(){return w})),t.d(e,"NavBrand",(function(){return _})),t.d(e,"NavLink",(function(){return D})),t.d(e,"NavSection",(function(){return U})),t.d(e,"NavSections",(function(){return X})),t.d(e,"NavUser",(function(){return nn})),t.d(e,"NavCondense",(function(){return ln}));var r,o=t(6),i=t.n(o),a=t(5),c=t.n(a),u=t(3),s=t.n(u),l=t(1),d=t.n(l),p=t(2),f=t.n(p),h=t(0),g=t.n(h),m=t(49),v=Object(l.createContext)(),b=function(){return Object(l.useContext)(v)},y=["condensed"],x=f()(m.Grid)(r||(r=s()(["\n  width: ",";\n  background: ",";\n  position: sticky;\n  top: 0;\n  height: 100vh;\n  z-index: 2;\n  border-right: 1px solid ",";\n"])),(function(n){return n.condensed?"max-content":"".concat(14,"rem")}),(function(n){return n.theme.colors.neutral0}),(function(n){return n.theme.colors.neutral150})),w=function(n){var e=n.condensed,t=c()(n,y);return d.a.createElement(v.Provider,{value:e},d.a.createElement(x,i()({as:"nav",condensed:e},t)))};w.defaultProps={condensed:!1},w.propTypes={condensed:g.a.bool};var O,E,T=t(36),j=t(4),C=t(8),S=t(9),R=t(21),k=f.a.div(O||(O=s()(["\n  border-radius: ",";\n  svg,\n  img {\n    height: ",";\n    width: ",";\n  }\n"])),(function(n){return n.theme.borderRadius}),(function(n){var e=n.condensed;return"".concat(e?2.5:2,"rem")}),(function(n){var e=n.condensed;return"".concat(e?2.5:2,"rem")})),P=f()(T.NavLink)(E||(E=s()(["\n  text-decoration: unset;\n  color: inherit;\n"]))),_=function(n){var e=n.workplace,t=n.title,r=n.icon,o=n.to;return b()?d.a.createElement(j.Box,{paddingLeft:3,paddingRight:3,paddingTop:4,paddingBottom:4},d.a.createElement(k,{condensed:!0},d.a.createElement(T.NavLink,{to:o},r,d.a.createElement(R.VisuallyHidden,null,d.a.createElement("span",null,t),d.a.createElement("span",null,e))))):d.a.createElement(j.Box,{paddingLeft:3,paddingRight:3,paddingTop:4,paddingBottom:4},d.a.createElement(S.Flex,null,d.a.createElement(k,{as:T.NavLink,to:o,"aria-hidden":!0,tabIndex:-1},r),d.a.createElement(j.Box,{paddingLeft:2},d.a.createElement(C.Typography,{fontWeight:"bold",textColor:"neutral800",as:"span"},d.a.createElement(P,{to:o},t,d.a.createElement(R.VisuallyHidden,{as:"span"},e))),d.a.createElement(C.Typography,{variant:"pi",as:"p",textColor:"neutral600","aria-hidden":!0},e))))};_.defaultProps={to:"/"},_.propTypes={icon:g.a.node.isRequired,title:g.a.string.isRequired,to:g.a.string,workplace:g.a.string.isRequired};var z,B,M,L,q=t(46),W=t(52),H=["children","icon","badgeContent","badgeAriaLabel"],A=f()(j.Box)(z||(z=s()(["\n  svg {\n    width: 1rem;\n    height: 1rem;\n  }\n"]))),I=f()(T.NavLink)(B||(B=s()(["\n  position: relative;\n  text-decoration: none;\n  display: block;\n  border-radius: ",";\n  background: ",";\n\n  "," {\n    color: ",";\n  }\n\n  svg path {\n    fill: ",";\n  }\n\n  &:hover {\n    background: ",";\n\n    "," {\n      color: ",";\n    }\n\n    svg path {\n      fill: ",";\n    }\n  }\n\n  &.active {\n    background: ",";\n\n    svg path {\n      fill: ",";\n    }\n\n    "," {\n      color: ",";\n      font-weight: 500;\n    }\n  }\n"])),(function(n){return n.theme.borderRadius}),(function(n){return n.theme.colors.neutral0}),C.Typography,(function(n){return n.theme.colors.neutral600}),(function(n){return n.theme.colors.neutral500}),(function(n){return n.theme.colors.neutral100}),C.Typography,(function(n){return n.theme.colors.neutral700}),(function(n){return n.theme.colors.neutral600}),(function(n){return n.theme.colors.primary100}),(function(n){return n.theme.colors.primary600}),C.Typography,(function(n){return n.theme.colors.primary600})),F=f()(S.Flex)(M||(M=s()(["\n  padding: ",";\n"])),(function(n){var e=n.theme;return"".concat(e.spaces[2]," ").concat(e.spaces[3])})),N=f()(W.Badge)(L||(L=s()(["\n  ","\n\n  "," {\n    //find a solution to remove !important\n    color: "," !important;\n    line-height: 0;\n  }\n\n  display: flex;\n  justify-content: center;\n  align-items: center;\n  min-width: ",";\n  height: ",";\n  padding: ",";\n  border-radius: ",";\n  background: ",";\n"])),(function(n){return n.condensed&&"\n\t  position: absolute;\n    transform: translate(35%, -50%);\n    top: 0;\n    right: 0;\n  "}),C.Typography,(function(n){return n.theme.colors.neutral0}),(function(n){return n.theme.spaces[6]}),(function(n){return n.theme.spaces[5]}),(function(n){var e=n.theme;return"0 ".concat(e.spaces[2])}),(function(n){return n.theme.spaces[10]}),(function(n){return n.theme.colors.primary600})),D=function(n){var e=n.children,t=n.icon,r=n.badgeContent,o=n.badgeAriaLabel,i=c()(n,H);return b()?d.a.createElement(q.Tooltip,{position:"right",label:e},d.a.createElement(I,i,d.a.createElement(F,{as:"span"},d.a.createElement(A,{"aria-hidden":!0,paddingRight:0,as:"span"},t),r&&d.a.createElement(N,{condensed:!0,"aria-label":o},r)))):d.a.createElement(I,i,d.a.createElement(F,{as:"span",justifyContent:"space-between"},d.a.createElement(S.Flex,null,d.a.createElement(A,{"aria-hidden":!0,paddingRight:3,as:"span"},t),d.a.createElement(C.Typography,null,e)),r&&d.a.createElement(N,{justifyContent:"center","aria-label":o},r)))};D.displayName="NavLink",D.defaultProps={badgeContent:void 0,badgeAriaLabel:void 0},D.propTypes={badgeAriaLabel:g.a.string,badgeContent:g.a.oneOfType([g.a.string,g.a.number]),children:g.a.string.isRequired,icon:g.a.node.isRequired};var V=t(26),Y=t(54),Q=["label","children"],U=function(n){var e=n.label,t=n.children,r=c()(n,Q);return b()?d.a.createElement(V.Stack,{spacing:2},d.a.createElement(j.Box,{paddingTop:1,paddingBottom:1,background:"neutral0",hasRadius:!0,as:"span"},d.a.createElement(Y.Divider,null),d.a.createElement(R.VisuallyHidden,null,d.a.createElement("span",null,e))),d.a.createElement(V.Stack,i()({as:"ul",spacing:2},r),l.Children.map(t,(function(n,e){return d.a.createElement("li",{key:e},n)})))):d.a.createElement(V.Stack,{spacing:2},d.a.createElement(j.Box,{paddingTop:1,paddingBottom:1,background:"neutral0",paddingRight:3,paddingLeft:3,hasRadius:!0,as:"span"},d.a.createElement(C.Typography,{variant:"sigma",textColor:"neutral600"},e)),d.a.createElement(V.Stack,i()({as:"ul",spacing:2},r),l.Children.map(t,(function(n,e){return d.a.createElement("li",{key:e},n)}))))};U.propTypes={children:g.a.node.isRequired,label:g.a.string.isRequired};var G=["children"],X=function(n){var e=n.children,t=c()(n,G);return d.a.createElement(j.Box,{paddingLeft:3,paddingRight:2,paddingTop:3},d.a.createElement(V.Stack,i()({as:"ul",spacing:4},t),l.Children.map(e,(function(n,e){return d.a.createElement("li",{key:e},n)}))))};X.propTypes={children:g.a.node.isRequired};var $,J=t(74),K=["src","children","initials"],Z=f()(j.Box)($||($=s()(["\n  text-decoration: none;\n  position: absolute;\n  bottom: 0;\n  width: 100%;\n  border-top: 1px solid ",";\n"])),(function(n){return n.theme.colors.neutral150})),nn=d.a.forwardRef((function(n,e){var t=n.src,r=n.children,o=n.initials,a=c()(n,K),u=b();return d.a.createElement(Z,i()({paddingTop:3,paddingBottom:3,paddingLeft:5,paddingRight:5},a),d.a.createElement(S.Flex,{as:"button",justifyContent:u?"center":void 0,ref:e},t?d.a.createElement(J.Avatar,{src:t,alt:"","aria-hidden":!0}):d.a.createElement(J.Initials,null,o),u?d.a.createElement(R.VisuallyHidden,null,d.a.createElement("span",null,r)):d.a.createElement(j.Box,{width:"".concat(8.125,"rem"),paddingLeft:2,as:"span"},d.a.createElement(C.Typography,{ellipsis:!0,textColor:"neutral600"},r))))}));nn.displayName="NavUser",nn.defaultProps={src:void 0,initials:void 0},nn.propTypes={children:g.a.node.isRequired,initials:g.a.node,src:g.a.string};var en,tn=t(51),rn=t.n(tn),on=t(58),an=t.n(on),cn=t(41),un=["children"],sn=f.a.button(en||(en=s()(["\n  background: ",";\n  border: 1px solid ",";\n  border-radius: ",";\n  display: flex;\n  align-items: center;\n  justify-content: center;\n  position: absolute;\n  bottom: ","rem; // 9 is the height of the svg and 4 is the padding below\n  right: ",";\n  transform: ",";\n  z-index: 2;\n  width: ","rem;\n  height: ","rem;\n\n  svg {\n    width: ","rem;\n    height: ","rem;\n  }\n"])),(function(n){return n.theme.colors.neutral0}),(function(n){return n.theme.colors.neutral150}),(function(n){return n.theme.borderRadius}),13/16,(function(n){var e=n.theme;return n.condensed?0:e.spaces[5]}),(function(n){return n.condensed?"translateX(50%)":void 0}),1.125,25/16,6/16,9/16),ln=function(n){var e=n.children,t=c()(n,un),r=b();return d.a.createElement(sn,i()({as:"button",condensed:r},t),d.a.createElement(cn.Icon,{as:r?rn.a:an.a,"aria-hidden":!0,color:"neutral600"}),d.a.createElement(R.VisuallyHidden,null,e))};ln.propTypes={children:g.a.string.isRequired}}])}));

/***/ }),

/***/ 59471:
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

"use strict";

  
  
  if (true) {
    module.exports = __webpack_require__(34316);
  } else {}
  

/***/ }),

/***/ 34316:
/***/ (function(module, __unused_webpack_exports, __webpack_require__) {

!function(e,t){ true?module.exports=t(__webpack_require__(67294),__webpack_require__(73935)):0}(this,(function(e,t){return function(e){var t={};function r(n){if(t[n])return t[n].exports;var o=t[n]={i:n,l:!1,exports:{}};return e[n].call(o.exports,o,o.exports,r),o.l=!0,o.exports}return r.m=e,r.c=t,r.d=function(e,t,n){r.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:n})},r.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},r.t=function(e,t){if(1&t&&(e=r(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var n=Object.create(null);if(r.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var o in e)r.d(n,o,function(t){return e[t]}.bind(null,o));return n},r.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return r.d(t,"a",t),t},r.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},r.p="",r(r.s=29)}([,function(t,r){t.exports=e},,,,,,,,,function(e,t,r){var n=r(23),o=r(24),u=r(20),c=r(25);e.exports=function(e,t){return n(e)||o(e,t)||u(e,t)||c()},e.exports.default=e.exports,e.exports.__esModule=!0},,,,,,,,,function(e,t){e.exports=function(e,t){(null==t||t>e.length)&&(t=e.length);for(var r=0,n=new Array(t);r<t;r++)n[r]=e[r];return n},e.exports.default=e.exports,e.exports.__esModule=!0},function(e,t,r){var n=r(19);e.exports=function(e,t){if(e){if("string"==typeof e)return n(e,t);var r=Object.prototype.toString.call(e).slice(8,-1);return"Object"===r&&e.constructor&&(r=e.constructor.name),"Map"===r||"Set"===r?Array.from(e):"Arguments"===r||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r)?n(e,t):void 0}},e.exports.default=e.exports,e.exports.__esModule=!0},,,function(e,t){e.exports=function(e){if(Array.isArray(e))return e},e.exports.default=e.exports,e.exports.__esModule=!0},function(e,t){e.exports=function(e,t){var r=null==e?null:"undefined"!=typeof Symbol&&e[Symbol.iterator]||e["@@iterator"];if(null!=r){var n,o,u=[],c=!0,i=!1;try{for(r=r.call(e);!(c=(n=r.next()).done)&&(u.push(n.value),!t||u.length!==t);c=!0);}catch(e){i=!0,o=e}finally{try{c||null==r.return||r.return()}finally{if(i)throw o}}return u}},e.exports.default=e.exports,e.exports.__esModule=!0},function(e,t){e.exports=function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")},e.exports.default=e.exports,e.exports.__esModule=!0},,,,function(e,t,r){"use strict";r.r(t),r.d(t,"Portal",(function(){return i}));var n=r(10),o=r.n(n),u=r(1),c=r(33),i=function(e){var t=e.children,r=Object(u.useRef)(null),n=Object(u.useState)(!1),i=o()(n,2),a=i[0],l=i[1];return Object(u.useLayoutEffect)((function(){return r.current=document.createElement("div"),r.current.setAttribute("data-react-portal","true"),document.body.appendChild(r.current),l(!0),function(){var e;null===(e=r.current)||void 0===e||e.remove()}}),[]),a&&r.current?Object(c.createPortal)(t,r.current):null}},,,,function(e,r){e.exports=t}])}));

/***/ }),

/***/ 96026:
/***/ (function(module, __unused_webpack_exports, __webpack_require__) {

!function(e,t){ true?module.exports=t(__webpack_require__(67294)):0}(this,(function(e){return function(e){var t={};function r(n){if(t[n])return t[n].exports;var o=t[n]={i:n,l:!1,exports:{}};return e[n].call(o.exports,o,o.exports,r),o.l=!0,o.exports}return r.m=e,r.c=t,r.d=function(e,t,n){r.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:n})},r.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},r.t=function(e,t){if(1&t&&(e=r(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var n=Object.create(null);if(r.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var o in e)r.d(n,o,function(t){return e[t]}.bind(null,o));return n},r.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return r.d(t,"a",t),t},r.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},r.p="",r(r.s=70)}({0:function(t,r){t.exports=e},70:function(e,t,r){"use strict";r.r(t);var n=r(0);function o(){return(o=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var r=arguments[t];for(var n in r)Object.prototype.hasOwnProperty.call(r,n)&&(e[n]=r[n])}return e}).apply(this,arguments)}t.default=function(e){return n.createElement("svg",o({width:"1em",height:"1em",viewBox:"0 0 24 24",fill:"none",xmlns:"http://www.w3.org/2000/svg"},e),n.createElement("path",{d:"M11.987 23.036v-.964H1.876V1.876h10.111V0H0v24h11.987v-.964z",fill:"#212134"}),n.createElement("path",{d:"M8 11.2c0-.11.09-.2.2-.2h11.973l-5.445-5.445a.2.2 0 010-.283l1.13-1.13a.2.2 0 01.283 0l7.718 7.717a.2.2 0 010 .282L16.14 19.86a.2.2 0 01-.282 0l-1.13-1.13a.2.2 0 010-.284L20.172 13H8.2a.2.2 0 01-.2-.2v-1.6z",fill:"#212134"}))}}})}));

/***/ }),

/***/ 33957:
/***/ (function(module, __unused_webpack_exports, __webpack_require__) {

!function(e,t){ true?module.exports=t(__webpack_require__(67294)):0}(this,(function(e){return function(e){var t={};function r(n){if(t[n])return t[n].exports;var o=t[n]={i:n,l:!1,exports:{}};return e[n].call(o.exports,o,o.exports,r),o.l=!0,o.exports}return r.m=e,r.c=t,r.d=function(e,t,n){r.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:n})},r.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},r.t=function(e,t){if(1&t&&(e=r(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var n=Object.create(null);if(r.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var o in e)r.d(n,o,function(t){return e[t]}.bind(null,o));return n},r.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return r.d(t,"a",t),t},r.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},r.p="",r(r.s=193)}({0:function(t,r){t.exports=e},193:function(e,t,r){"use strict";r.r(t);var n=r(0);function o(){return(o=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var r=arguments[t];for(var n in r)Object.prototype.hasOwnProperty.call(r,n)&&(e[n]=r[n])}return e}).apply(this,arguments)}t.default=function(e){return n.createElement("svg",o({width:"1em",height:"1em",viewBox:"0 0 24 24",fill:"none",xmlns:"http://www.w3.org/2000/svg"},e),n.createElement("path",{fillRule:"evenodd",clipRule:"evenodd",d:"M23.707.297A1 1 0 0023 .004h-2a13.907 13.907 0 00-5.38 1.077 1 1 0 00-.615.923V4.92a.035.035 0 01-.022.038l-2-1.47a1 1 0 00-1.265.052A14 14 0 007 14.004v1.585l-2.707 2.707a1 1 0 101.415 1.415l2.707-2.708H10a14.014 14.014 0 0014-14v-2a1 1 0 00-.293-.706zM18 23.999H3a3 3 0 01-3-3V6A3 3 0 013 3h3a1 1 0 110 2H3a1 1 0 00-1 1v15a1 1 0 001 1h15a1 1 0 001-1v-3a1 1 0 112 0v3a3 3 0 01-3 3z",fill:"#212134"}))}}})}));

/***/ }),

/***/ 26484:
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

var get = __webpack_require__(27361);

/**
 * The base implementation of `_.at` without support for individual paths.
 *
 * @private
 * @param {Object} object The object to iterate over.
 * @param {string[]} paths The property paths to pick.
 * @returns {Array} Returns the picked elements.
 */
function baseAt(object, paths) {
  var index = -1,
      length = paths.length,
      result = Array(length),
      skip = object == null;

  while (++index < length) {
    result[index] = skip ? undefined : get(object, paths[index]);
  }
  return result;
}

module.exports = baseAt;


/***/ }),

/***/ 38914:
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

var baseAt = __webpack_require__(26484),
    flatRest = __webpack_require__(99021);

/**
 * Creates an array of values corresponding to `paths` of `object`.
 *
 * @static
 * @memberOf _
 * @since 1.0.0
 * @category Object
 * @param {Object} object The object to iterate over.
 * @param {...(string|string[])} [paths] The property paths to pick.
 * @returns {Array} Returns the picked values.
 * @example
 *
 * var object = { 'a': [{ 'b': { 'c': 3 } }, 4] };
 *
 * _.at(object, ['a[0].b.c', 'a[1]']);
 * // => [3, 4]
 */
var at = flatRest(baseAt);

module.exports = at;


/***/ }),

/***/ 21993:
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.isSafari = exports.isFirefox = void 0;

var _js_utils = __webpack_require__(58760);

var isFirefox = (0, _js_utils.memoize)(function () {
  return /firefox/i.test(navigator.userAgent);
});
exports.isFirefox = isFirefox;
var isSafari = (0, _js_utils.memoize)(function () {
  return Boolean(window.safari);
});
exports.isSafari = isSafari;

/***/ }),

/***/ 33647:
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.EnterLeaveCounter = void 0;

var _js_utils = __webpack_require__(58760);

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

var EnterLeaveCounter = /*#__PURE__*/function () {
  function EnterLeaveCounter(isNodeInDocument) {
    _classCallCheck(this, EnterLeaveCounter);

    _defineProperty(this, "entered", []);

    _defineProperty(this, "isNodeInDocument", void 0);

    this.isNodeInDocument = isNodeInDocument;
  }

  _createClass(EnterLeaveCounter, [{
    key: "enter",
    value: function enter(enteringNode) {
      var _this = this;

      var previousLength = this.entered.length;

      var isNodeEntered = function isNodeEntered(node) {
        return _this.isNodeInDocument(node) && (!node.contains || node.contains(enteringNode));
      };

      this.entered = (0, _js_utils.union)(this.entered.filter(isNodeEntered), [enteringNode]);
      return previousLength === 0 && this.entered.length > 0;
    }
  }, {
    key: "leave",
    value: function leave(leavingNode) {
      var previousLength = this.entered.length;
      this.entered = (0, _js_utils.without)(this.entered.filter(this.isNodeInDocument), leavingNode);
      return previousLength > 0 && this.entered.length === 0;
    }
  }, {
    key: "reset",
    value: function reset() {
      this.entered = [];
    }
  }]);

  return EnterLeaveCounter;
}();

exports.EnterLeaveCounter = EnterLeaveCounter;

/***/ }),

/***/ 38501:
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


function _typeof(obj) { "@babel/helpers - typeof"; if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.HTML5BackendImpl = void 0;

var _EnterLeaveCounter = __webpack_require__(33647);

var _OffsetUtils = __webpack_require__(92774);

var _NativeDragSources = __webpack_require__(74935);

var NativeTypes = _interopRequireWildcard(__webpack_require__(1445));

var _OptionsReader = __webpack_require__(58137);

function _getRequireWildcardCache(nodeInterop) { if (typeof WeakMap !== "function") return null; var cacheBabelInterop = new WeakMap(); var cacheNodeInterop = new WeakMap(); return (_getRequireWildcardCache = function _getRequireWildcardCache(nodeInterop) { return nodeInterop ? cacheNodeInterop : cacheBabelInterop; })(nodeInterop); }

function _interopRequireWildcard(obj, nodeInterop) { if (!nodeInterop && obj && obj.__esModule) { return obj; } if (obj === null || _typeof(obj) !== "object" && typeof obj !== "function") { return { default: obj }; } var cache = _getRequireWildcardCache(nodeInterop); if (cache && cache.has(obj)) { return cache.get(obj); } var newObj = {}; var hasPropertyDescriptor = Object.defineProperty && Object.getOwnPropertyDescriptor; for (var key in obj) { if (key !== "default" && Object.prototype.hasOwnProperty.call(obj, key)) { var desc = hasPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : null; if (desc && (desc.get || desc.set)) { Object.defineProperty(newObj, key, desc); } else { newObj[key] = obj[key]; } } } newObj.default = obj; if (cache) { cache.set(obj, newObj); } return newObj; }

function ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); if (enumerableOnly) { symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; }); } keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { _defineProperty(target, key, source[key]); }); } else if (Object.getOwnPropertyDescriptors) { Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)); } else { ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } } return target; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

var HTML5BackendImpl = /*#__PURE__*/function () {
  // React-Dnd Components
  // Internal State
  function HTML5BackendImpl(manager, globalContext, options) {
    var _this = this;

    _classCallCheck(this, HTML5BackendImpl);

    _defineProperty(this, "options", void 0);

    _defineProperty(this, "actions", void 0);

    _defineProperty(this, "monitor", void 0);

    _defineProperty(this, "registry", void 0);

    _defineProperty(this, "enterLeaveCounter", void 0);

    _defineProperty(this, "sourcePreviewNodes", new Map());

    _defineProperty(this, "sourcePreviewNodeOptions", new Map());

    _defineProperty(this, "sourceNodes", new Map());

    _defineProperty(this, "sourceNodeOptions", new Map());

    _defineProperty(this, "dragStartSourceIds", null);

    _defineProperty(this, "dropTargetIds", []);

    _defineProperty(this, "dragEnterTargetIds", []);

    _defineProperty(this, "currentNativeSource", null);

    _defineProperty(this, "currentNativeHandle", null);

    _defineProperty(this, "currentDragSourceNode", null);

    _defineProperty(this, "altKeyPressed", false);

    _defineProperty(this, "mouseMoveTimeoutTimer", null);

    _defineProperty(this, "asyncEndDragFrameId", null);

    _defineProperty(this, "dragOverTargetIds", null);

    _defineProperty(this, "lastClientOffset", null);

    _defineProperty(this, "hoverRafId", null);

    _defineProperty(this, "getSourceClientOffset", function (sourceId) {
      var source = _this.sourceNodes.get(sourceId);

      return source && (0, _OffsetUtils.getNodeClientOffset)(source) || null;
    });

    _defineProperty(this, "endDragNativeItem", function () {
      if (!_this.isDraggingNativeItem()) {
        return;
      }

      _this.actions.endDrag();

      if (_this.currentNativeHandle) {
        _this.registry.removeSource(_this.currentNativeHandle);
      }

      _this.currentNativeHandle = null;
      _this.currentNativeSource = null;
    });

    _defineProperty(this, "isNodeInDocument", function (node) {
      // Check the node either in the main document or in the current context
      return Boolean(node && _this.document && _this.document.body && _this.document.body.contains(node));
    });

    _defineProperty(this, "endDragIfSourceWasRemovedFromDOM", function () {
      var node = _this.currentDragSourceNode;

      if (node == null || _this.isNodeInDocument(node)) {
        return;
      }

      if (_this.clearCurrentDragSourceNode() && _this.monitor.isDragging()) {
        _this.actions.endDrag();
      }
    });

    _defineProperty(this, "handleTopDragStartCapture", function () {
      _this.clearCurrentDragSourceNode();

      _this.dragStartSourceIds = [];
    });

    _defineProperty(this, "handleTopDragStart", function (e) {
      if (e.defaultPrevented) {
        return;
      }

      var dragStartSourceIds = _this.dragStartSourceIds;
      _this.dragStartSourceIds = null;
      var clientOffset = (0, _OffsetUtils.getEventClientOffset)(e); // Avoid crashing if we missed a drop event or our previous drag died

      if (_this.monitor.isDragging()) {
        _this.actions.endDrag();
      } // Don't publish the source just yet (see why below)


      _this.actions.beginDrag(dragStartSourceIds || [], {
        publishSource: false,
        getSourceClientOffset: _this.getSourceClientOffset,
        clientOffset: clientOffset
      });

      var dataTransfer = e.dataTransfer;
      var nativeType = (0, _NativeDragSources.matchNativeItemType)(dataTransfer);

      if (_this.monitor.isDragging()) {
        if (dataTransfer && typeof dataTransfer.setDragImage === 'function') {
          // Use custom drag image if user specifies it.
          // If child drag source refuses drag but parent agrees,
          // use parent's node as drag image. Neither works in IE though.
          var sourceId = _this.monitor.getSourceId();

          var sourceNode = _this.sourceNodes.get(sourceId);

          var dragPreview = _this.sourcePreviewNodes.get(sourceId) || sourceNode;

          if (dragPreview) {
            var _this$getCurrentSourc = _this.getCurrentSourcePreviewNodeOptions(),
                anchorX = _this$getCurrentSourc.anchorX,
                anchorY = _this$getCurrentSourc.anchorY,
                offsetX = _this$getCurrentSourc.offsetX,
                offsetY = _this$getCurrentSourc.offsetY;

            var anchorPoint = {
              anchorX: anchorX,
              anchorY: anchorY
            };
            var offsetPoint = {
              offsetX: offsetX,
              offsetY: offsetY
            };
            var dragPreviewOffset = (0, _OffsetUtils.getDragPreviewOffset)(sourceNode, dragPreview, clientOffset, anchorPoint, offsetPoint);
            dataTransfer.setDragImage(dragPreview, dragPreviewOffset.x, dragPreviewOffset.y);
          }
        }

        try {
          // Firefox won't drag without setting data
          dataTransfer === null || dataTransfer === void 0 ? void 0 : dataTransfer.setData('application/json', {});
        } catch (err) {// IE doesn't support MIME types in setData
        } // Store drag source node so we can check whether
        // it is removed from DOM and trigger endDrag manually.


        _this.setCurrentDragSourceNode(e.target); // Now we are ready to publish the drag source.. or are we not?


        var _this$getCurrentSourc2 = _this.getCurrentSourcePreviewNodeOptions(),
            captureDraggingState = _this$getCurrentSourc2.captureDraggingState;

        if (!captureDraggingState) {
          // Usually we want to publish it in the next tick so that browser
          // is able to screenshot the current (not yet dragging) state.
          //
          // It also neatly avoids a situation where render() returns null
          // in the same tick for the source element, and browser freaks out.
          setTimeout(function () {
            return _this.actions.publishDragSource();
          }, 0);
        } else {
          // In some cases the user may want to override this behavior, e.g.
          // to work around IE not supporting custom drag previews.
          //
          // When using a custom drag layer, the only way to prevent
          // the default drag preview from drawing in IE is to screenshot
          // the dragging state in which the node itself has zero opacity
          // and height. In this case, though, returning null from render()
          // will abruptly end the dragging, which is not obvious.
          //
          // This is the reason such behavior is strictly opt-in.
          _this.actions.publishDragSource();
        }
      } else if (nativeType) {
        // A native item (such as URL) dragged from inside the document
        _this.beginDragNativeItem(nativeType);
      } else if (dataTransfer && !dataTransfer.types && (e.target && !e.target.hasAttribute || !e.target.hasAttribute('draggable'))) {
        // Looks like a Safari bug: dataTransfer.types is null, but there was no draggable.
        // Just let it drag. It's a native type (URL or text) and will be picked up in
        // dragenter handler.
        return;
      } else {
        // If by this time no drag source reacted, tell browser not to drag.
        e.preventDefault();
      }
    });

    _defineProperty(this, "handleTopDragEndCapture", function () {
      if (_this.clearCurrentDragSourceNode() && _this.monitor.isDragging()) {
        // Firefox can dispatch this event in an infinite loop
        // if dragend handler does something like showing an alert.
        // Only proceed if we have not handled it already.
        _this.actions.endDrag();
      }
    });

    _defineProperty(this, "handleTopDragEnterCapture", function (e) {
      _this.dragEnterTargetIds = [];

      var isFirstEnter = _this.enterLeaveCounter.enter(e.target);

      if (!isFirstEnter || _this.monitor.isDragging()) {
        return;
      }

      var dataTransfer = e.dataTransfer;
      var nativeType = (0, _NativeDragSources.matchNativeItemType)(dataTransfer);

      if (nativeType) {
        // A native item (such as file or URL) dragged from outside the document
        _this.beginDragNativeItem(nativeType, dataTransfer);
      }
    });

    _defineProperty(this, "handleTopDragEnter", function (e) {
      var dragEnterTargetIds = _this.dragEnterTargetIds;
      _this.dragEnterTargetIds = [];

      if (!_this.monitor.isDragging()) {
        // This is probably a native item type we don't understand.
        return;
      }

      _this.altKeyPressed = e.altKey; // If the target changes position as the result of `dragenter`, `dragover` might still
      // get dispatched despite target being no longer there. The easy solution is to check
      // whether there actually is a target before firing `hover`.

      if (dragEnterTargetIds.length > 0) {
        _this.actions.hover(dragEnterTargetIds, {
          clientOffset: (0, _OffsetUtils.getEventClientOffset)(e)
        });
      }

      var canDrop = dragEnterTargetIds.some(function (targetId) {
        return _this.monitor.canDropOnTarget(targetId);
      });

      if (canDrop) {
        // IE requires this to fire dragover events
        e.preventDefault();

        if (e.dataTransfer) {
          e.dataTransfer.dropEffect = _this.getCurrentDropEffect();
        }
      }
    });

    _defineProperty(this, "handleTopDragOverCapture", function () {
      _this.dragOverTargetIds = [];
    });

    _defineProperty(this, "handleTopDragOver", function (e) {
      var dragOverTargetIds = _this.dragOverTargetIds;
      _this.dragOverTargetIds = [];

      if (!_this.monitor.isDragging()) {
        // This is probably a native item type we don't understand.
        // Prevent default "drop and blow away the whole document" action.
        e.preventDefault();

        if (e.dataTransfer) {
          e.dataTransfer.dropEffect = 'none';
        }

        return;
      }

      _this.altKeyPressed = e.altKey;
      _this.lastClientOffset = (0, _OffsetUtils.getEventClientOffset)(e);

      if (_this.hoverRafId === null && typeof requestAnimationFrame !== 'undefined') {
        _this.hoverRafId = requestAnimationFrame(function () {
          if (_this.monitor.isDragging()) {
            _this.actions.hover(dragOverTargetIds || [], {
              clientOffset: _this.lastClientOffset
            });
          }

          _this.hoverRafId = null;
        });
      }

      var canDrop = (dragOverTargetIds || []).some(function (targetId) {
        return _this.monitor.canDropOnTarget(targetId);
      });

      if (canDrop) {
        // Show user-specified drop effect.
        e.preventDefault();

        if (e.dataTransfer) {
          e.dataTransfer.dropEffect = _this.getCurrentDropEffect();
        }
      } else if (_this.isDraggingNativeItem()) {
        // Don't show a nice cursor but still prevent default
        // "drop and blow away the whole document" action.
        e.preventDefault();
      } else {
        e.preventDefault();

        if (e.dataTransfer) {
          e.dataTransfer.dropEffect = 'none';
        }
      }
    });

    _defineProperty(this, "handleTopDragLeaveCapture", function (e) {
      if (_this.isDraggingNativeItem()) {
        e.preventDefault();
      }

      var isLastLeave = _this.enterLeaveCounter.leave(e.target);

      if (!isLastLeave) {
        return;
      }

      if (_this.isDraggingNativeItem()) {
        setTimeout(function () {
          return _this.endDragNativeItem();
        }, 0);
      }
    });

    _defineProperty(this, "handleTopDropCapture", function (e) {
      _this.dropTargetIds = [];

      if (_this.isDraggingNativeItem()) {
        var _this$currentNativeSo;

        e.preventDefault();
        (_this$currentNativeSo = _this.currentNativeSource) === null || _this$currentNativeSo === void 0 ? void 0 : _this$currentNativeSo.loadDataTransfer(e.dataTransfer);
      } else if ((0, _NativeDragSources.matchNativeItemType)(e.dataTransfer)) {
        // Dragging some elements, like <a> and <img> may still behave like a native drag event,
        // even if the current drag event matches a user-defined type.
        // Stop the default behavior when we're not expecting a native item to be dropped.
        e.preventDefault();
      }

      _this.enterLeaveCounter.reset();
    });

    _defineProperty(this, "handleTopDrop", function (e) {
      var dropTargetIds = _this.dropTargetIds;
      _this.dropTargetIds = [];

      _this.actions.hover(dropTargetIds, {
        clientOffset: (0, _OffsetUtils.getEventClientOffset)(e)
      });

      _this.actions.drop({
        dropEffect: _this.getCurrentDropEffect()
      });

      if (_this.isDraggingNativeItem()) {
        _this.endDragNativeItem();
      } else if (_this.monitor.isDragging()) {
        _this.actions.endDrag();
      }
    });

    _defineProperty(this, "handleSelectStart", function (e) {
      var target = e.target; // Only IE requires us to explicitly say
      // we want drag drop operation to start

      if (typeof target.dragDrop !== 'function') {
        return;
      } // Inputs and textareas should be selectable


      if (target.tagName === 'INPUT' || target.tagName === 'SELECT' || target.tagName === 'TEXTAREA' || target.isContentEditable) {
        return;
      } // For other targets, ask IE
      // to enable drag and drop


      e.preventDefault();
      target.dragDrop();
    });

    this.options = new _OptionsReader.OptionsReader(globalContext, options);
    this.actions = manager.getActions();
    this.monitor = manager.getMonitor();
    this.registry = manager.getRegistry();
    this.enterLeaveCounter = new _EnterLeaveCounter.EnterLeaveCounter(this.isNodeInDocument);
  }
  /**
   * Generate profiling statistics for the HTML5Backend.
   */


  _createClass(HTML5BackendImpl, [{
    key: "profile",
    value: function profile() {
      var _this$dragStartSource, _this$dragOverTargetI;

      return {
        sourcePreviewNodes: this.sourcePreviewNodes.size,
        sourcePreviewNodeOptions: this.sourcePreviewNodeOptions.size,
        sourceNodeOptions: this.sourceNodeOptions.size,
        sourceNodes: this.sourceNodes.size,
        dragStartSourceIds: ((_this$dragStartSource = this.dragStartSourceIds) === null || _this$dragStartSource === void 0 ? void 0 : _this$dragStartSource.length) || 0,
        dropTargetIds: this.dropTargetIds.length,
        dragEnterTargetIds: this.dragEnterTargetIds.length,
        dragOverTargetIds: ((_this$dragOverTargetI = this.dragOverTargetIds) === null || _this$dragOverTargetI === void 0 ? void 0 : _this$dragOverTargetI.length) || 0
      };
    } // public for test

  }, {
    key: "window",
    get: function get() {
      return this.options.window;
    }
  }, {
    key: "document",
    get: function get() {
      return this.options.document;
    }
    /**
     * Get the root element to use for event subscriptions
     */

  }, {
    key: "rootElement",
    get: function get() {
      return this.options.rootElement;
    }
  }, {
    key: "setup",
    value: function setup() {
      var root = this.rootElement;

      if (root === undefined) {
        return;
      }

      if (root.__isReactDndBackendSetUp) {
        throw new Error('Cannot have two HTML5 backends at the same time.');
      }

      root.__isReactDndBackendSetUp = true;
      this.addEventListeners(root);
    }
  }, {
    key: "teardown",
    value: function teardown() {
      var root = this.rootElement;

      if (root === undefined) {
        return;
      }

      root.__isReactDndBackendSetUp = false;
      this.removeEventListeners(this.rootElement);
      this.clearCurrentDragSourceNode();

      if (this.asyncEndDragFrameId) {
        var _this$window;

        (_this$window = this.window) === null || _this$window === void 0 ? void 0 : _this$window.cancelAnimationFrame(this.asyncEndDragFrameId);
      }
    }
  }, {
    key: "connectDragPreview",
    value: function connectDragPreview(sourceId, node, options) {
      var _this2 = this;

      this.sourcePreviewNodeOptions.set(sourceId, options);
      this.sourcePreviewNodes.set(sourceId, node);
      return function () {
        _this2.sourcePreviewNodes.delete(sourceId);

        _this2.sourcePreviewNodeOptions.delete(sourceId);
      };
    }
  }, {
    key: "connectDragSource",
    value: function connectDragSource(sourceId, node, options) {
      var _this3 = this;

      this.sourceNodes.set(sourceId, node);
      this.sourceNodeOptions.set(sourceId, options);

      var handleDragStart = function handleDragStart(e) {
        return _this3.handleDragStart(e, sourceId);
      };

      var handleSelectStart = function handleSelectStart(e) {
        return _this3.handleSelectStart(e);
      };

      node.setAttribute('draggable', 'true');
      node.addEventListener('dragstart', handleDragStart);
      node.addEventListener('selectstart', handleSelectStart);
      return function () {
        _this3.sourceNodes.delete(sourceId);

        _this3.sourceNodeOptions.delete(sourceId);

        node.removeEventListener('dragstart', handleDragStart);
        node.removeEventListener('selectstart', handleSelectStart);
        node.setAttribute('draggable', 'false');
      };
    }
  }, {
    key: "connectDropTarget",
    value: function connectDropTarget(targetId, node) {
      var _this4 = this;

      var handleDragEnter = function handleDragEnter(e) {
        return _this4.handleDragEnter(e, targetId);
      };

      var handleDragOver = function handleDragOver(e) {
        return _this4.handleDragOver(e, targetId);
      };

      var handleDrop = function handleDrop(e) {
        return _this4.handleDrop(e, targetId);
      };

      node.addEventListener('dragenter', handleDragEnter);
      node.addEventListener('dragover', handleDragOver);
      node.addEventListener('drop', handleDrop);
      return function () {
        node.removeEventListener('dragenter', handleDragEnter);
        node.removeEventListener('dragover', handleDragOver);
        node.removeEventListener('drop', handleDrop);
      };
    }
  }, {
    key: "addEventListeners",
    value: function addEventListeners(target) {
      // SSR Fix (https://github.com/react-dnd/react-dnd/pull/813
      if (!target.addEventListener) {
        return;
      }

      target.addEventListener('dragstart', this.handleTopDragStart);
      target.addEventListener('dragstart', this.handleTopDragStartCapture, true);
      target.addEventListener('dragend', this.handleTopDragEndCapture, true);
      target.addEventListener('dragenter', this.handleTopDragEnter);
      target.addEventListener('dragenter', this.handleTopDragEnterCapture, true);
      target.addEventListener('dragleave', this.handleTopDragLeaveCapture, true);
      target.addEventListener('dragover', this.handleTopDragOver);
      target.addEventListener('dragover', this.handleTopDragOverCapture, true);
      target.addEventListener('drop', this.handleTopDrop);
      target.addEventListener('drop', this.handleTopDropCapture, true);
    }
  }, {
    key: "removeEventListeners",
    value: function removeEventListeners(target) {
      // SSR Fix (https://github.com/react-dnd/react-dnd/pull/813
      if (!target.removeEventListener) {
        return;
      }

      target.removeEventListener('dragstart', this.handleTopDragStart);
      target.removeEventListener('dragstart', this.handleTopDragStartCapture, true);
      target.removeEventListener('dragend', this.handleTopDragEndCapture, true);
      target.removeEventListener('dragenter', this.handleTopDragEnter);
      target.removeEventListener('dragenter', this.handleTopDragEnterCapture, true);
      target.removeEventListener('dragleave', this.handleTopDragLeaveCapture, true);
      target.removeEventListener('dragover', this.handleTopDragOver);
      target.removeEventListener('dragover', this.handleTopDragOverCapture, true);
      target.removeEventListener('drop', this.handleTopDrop);
      target.removeEventListener('drop', this.handleTopDropCapture, true);
    }
  }, {
    key: "getCurrentSourceNodeOptions",
    value: function getCurrentSourceNodeOptions() {
      var sourceId = this.monitor.getSourceId();
      var sourceNodeOptions = this.sourceNodeOptions.get(sourceId);
      return _objectSpread({
        dropEffect: this.altKeyPressed ? 'copy' : 'move'
      }, sourceNodeOptions || {});
    }
  }, {
    key: "getCurrentDropEffect",
    value: function getCurrentDropEffect() {
      if (this.isDraggingNativeItem()) {
        // It makes more sense to default to 'copy' for native resources
        return 'copy';
      }

      return this.getCurrentSourceNodeOptions().dropEffect;
    }
  }, {
    key: "getCurrentSourcePreviewNodeOptions",
    value: function getCurrentSourcePreviewNodeOptions() {
      var sourceId = this.monitor.getSourceId();
      var sourcePreviewNodeOptions = this.sourcePreviewNodeOptions.get(sourceId);
      return _objectSpread({
        anchorX: 0.5,
        anchorY: 0.5,
        captureDraggingState: false
      }, sourcePreviewNodeOptions || {});
    }
  }, {
    key: "isDraggingNativeItem",
    value: function isDraggingNativeItem() {
      var itemType = this.monitor.getItemType();
      return Object.keys(NativeTypes).some(function (key) {
        return NativeTypes[key] === itemType;
      });
    }
  }, {
    key: "beginDragNativeItem",
    value: function beginDragNativeItem(type, dataTransfer) {
      this.clearCurrentDragSourceNode();
      this.currentNativeSource = (0, _NativeDragSources.createNativeDragSource)(type, dataTransfer);
      this.currentNativeHandle = this.registry.addSource(type, this.currentNativeSource);
      this.actions.beginDrag([this.currentNativeHandle]);
    }
  }, {
    key: "setCurrentDragSourceNode",
    value: function setCurrentDragSourceNode(node) {
      var _this5 = this;

      this.clearCurrentDragSourceNode();
      this.currentDragSourceNode = node; // A timeout of > 0 is necessary to resolve Firefox issue referenced
      // See:
      //   * https://github.com/react-dnd/react-dnd/pull/928
      //   * https://github.com/react-dnd/react-dnd/issues/869

      var MOUSE_MOVE_TIMEOUT = 1000; // Receiving a mouse event in the middle of a dragging operation
      // means it has ended and the drag source node disappeared from DOM,
      // so the browser didn't dispatch the dragend event.
      //
      // We need to wait before we start listening for mousemove events.
      // This is needed because the drag preview needs to be drawn or else it fires an 'mousemove' event
      // immediately in some browsers.
      //
      // See:
      //   * https://github.com/react-dnd/react-dnd/pull/928
      //   * https://github.com/react-dnd/react-dnd/issues/869
      //

      this.mouseMoveTimeoutTimer = setTimeout(function () {
        var _this5$rootElement;

        return (_this5$rootElement = _this5.rootElement) === null || _this5$rootElement === void 0 ? void 0 : _this5$rootElement.addEventListener('mousemove', _this5.endDragIfSourceWasRemovedFromDOM, true);
      }, MOUSE_MOVE_TIMEOUT);
    }
  }, {
    key: "clearCurrentDragSourceNode",
    value: function clearCurrentDragSourceNode() {
      if (this.currentDragSourceNode) {
        this.currentDragSourceNode = null;

        if (this.rootElement) {
          var _this$window2;

          (_this$window2 = this.window) === null || _this$window2 === void 0 ? void 0 : _this$window2.clearTimeout(this.mouseMoveTimeoutTimer || undefined);
          this.rootElement.removeEventListener('mousemove', this.endDragIfSourceWasRemovedFromDOM, true);
        }

        this.mouseMoveTimeoutTimer = null;
        return true;
      }

      return false;
    }
  }, {
    key: "handleDragStart",
    value: function handleDragStart(e, sourceId) {
      if (e.defaultPrevented) {
        return;
      }

      if (!this.dragStartSourceIds) {
        this.dragStartSourceIds = [];
      }

      this.dragStartSourceIds.unshift(sourceId);
    }
  }, {
    key: "handleDragEnter",
    value: function handleDragEnter(e, targetId) {
      this.dragEnterTargetIds.unshift(targetId);
    }
  }, {
    key: "handleDragOver",
    value: function handleDragOver(e, targetId) {
      if (this.dragOverTargetIds === null) {
        this.dragOverTargetIds = [];
      }

      this.dragOverTargetIds.unshift(targetId);
    }
  }, {
    key: "handleDrop",
    value: function handleDrop(e, targetId) {
      this.dropTargetIds.unshift(targetId);
    }
  }]);

  return HTML5BackendImpl;
}();

exports.HTML5BackendImpl = HTML5BackendImpl;

/***/ }),

/***/ 45152:
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.MonotonicInterpolant = void 0;

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

var MonotonicInterpolant = /*#__PURE__*/function () {
  function MonotonicInterpolant(xs, ys) {
    _classCallCheck(this, MonotonicInterpolant);

    _defineProperty(this, "xs", void 0);

    _defineProperty(this, "ys", void 0);

    _defineProperty(this, "c1s", void 0);

    _defineProperty(this, "c2s", void 0);

    _defineProperty(this, "c3s", void 0);

    var length = xs.length; // Rearrange xs and ys so that xs is sorted

    var indexes = [];

    for (var i = 0; i < length; i++) {
      indexes.push(i);
    }

    indexes.sort(function (a, b) {
      return xs[a] < xs[b] ? -1 : 1;
    }); // Get consecutive differences and slopes

    var dys = [];
    var dxs = [];
    var ms = [];
    var dx;
    var dy;

    for (var _i = 0; _i < length - 1; _i++) {
      dx = xs[_i + 1] - xs[_i];
      dy = ys[_i + 1] - ys[_i];
      dxs.push(dx);
      dys.push(dy);
      ms.push(dy / dx);
    } // Get degree-1 coefficients


    var c1s = [ms[0]];

    for (var _i2 = 0; _i2 < dxs.length - 1; _i2++) {
      var m2 = ms[_i2];
      var mNext = ms[_i2 + 1];

      if (m2 * mNext <= 0) {
        c1s.push(0);
      } else {
        dx = dxs[_i2];
        var dxNext = dxs[_i2 + 1];
        var common = dx + dxNext;
        c1s.push(3 * common / ((common + dxNext) / m2 + (common + dx) / mNext));
      }
    }

    c1s.push(ms[ms.length - 1]); // Get degree-2 and degree-3 coefficients

    var c2s = [];
    var c3s = [];
    var m;

    for (var _i3 = 0; _i3 < c1s.length - 1; _i3++) {
      m = ms[_i3];
      var c1 = c1s[_i3];
      var invDx = 1 / dxs[_i3];

      var _common = c1 + c1s[_i3 + 1] - m - m;

      c2s.push((m - c1 - _common) * invDx);
      c3s.push(_common * invDx * invDx);
    }

    this.xs = xs;
    this.ys = ys;
    this.c1s = c1s;
    this.c2s = c2s;
    this.c3s = c3s;
  }

  _createClass(MonotonicInterpolant, [{
    key: "interpolate",
    value: function interpolate(x) {
      var xs = this.xs,
          ys = this.ys,
          c1s = this.c1s,
          c2s = this.c2s,
          c3s = this.c3s; // The rightmost point in the dataset should give an exact result

      var i = xs.length - 1;

      if (x === xs[i]) {
        return ys[i];
      } // Search for the interval x is in, returning the corresponding y if x is one of the original xs


      var low = 0;
      var high = c3s.length - 1;
      var mid;

      while (low <= high) {
        mid = Math.floor(0.5 * (low + high));
        var xHere = xs[mid];

        if (xHere < x) {
          low = mid + 1;
        } else if (xHere > x) {
          high = mid - 1;
        } else {
          return ys[mid];
        }
      }

      i = Math.max(0, high); // Interpolate

      var diff = x - xs[i];
      var diffSq = diff * diff;
      return ys[i] + c1s[i] * diff + c2s[i] * diffSq + c3s[i] * diff * diffSq;
    }
  }]);

  return MonotonicInterpolant;
}();

exports.MonotonicInterpolant = MonotonicInterpolant;

/***/ }),

/***/ 21328:
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";
/* provided dependency */ var console = __webpack_require__(25108);


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.NativeDragSource = void 0;

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

var NativeDragSource = /*#__PURE__*/function () {
  function NativeDragSource(config) {
    _classCallCheck(this, NativeDragSource);

    _defineProperty(this, "item", void 0);

    _defineProperty(this, "config", void 0);

    this.config = config;
    this.item = {};
    this.initializeExposedProperties();
  }

  _createClass(NativeDragSource, [{
    key: "initializeExposedProperties",
    value: function initializeExposedProperties() {
      var _this = this;

      Object.keys(this.config.exposeProperties).forEach(function (property) {
        Object.defineProperty(_this.item, property, {
          configurable: true,
          enumerable: true,
          get: function get() {
            // eslint-disable-next-line no-console
            console.warn("Browser doesn't allow reading \"".concat(property, "\" until the drop event."));
            return null;
          }
        });
      });
    }
  }, {
    key: "loadDataTransfer",
    value: function loadDataTransfer(dataTransfer) {
      var _this2 = this;

      if (dataTransfer) {
        var newProperties = {};
        Object.keys(this.config.exposeProperties).forEach(function (property) {
          newProperties[property] = {
            value: _this2.config.exposeProperties[property](dataTransfer, _this2.config.matchesTypes),
            configurable: true,
            enumerable: true
          };
        });
        Object.defineProperties(this.item, newProperties);
      }
    }
  }, {
    key: "canDrag",
    value: function canDrag() {
      return true;
    }
  }, {
    key: "beginDrag",
    value: function beginDrag() {
      return this.item;
    }
  }, {
    key: "isDragging",
    value: function isDragging(monitor, handle) {
      return handle === monitor.getSourceId();
    }
  }, {
    key: "endDrag",
    value: function endDrag() {// empty
    }
  }]);

  return NativeDragSource;
}();

exports.NativeDragSource = NativeDragSource;

/***/ }),

/***/ 92169:
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.getDataFromDataTransfer = getDataFromDataTransfer;

function getDataFromDataTransfer(dataTransfer, typesToTry, defaultValue) {
  var result = typesToTry.reduce(function (resultSoFar, typeToTry) {
    return resultSoFar || dataTransfer.getData(typeToTry);
  }, '');
  return result != null ? result : defaultValue;
}

/***/ }),

/***/ 74935:
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.createNativeDragSource = createNativeDragSource;
exports.matchNativeItemType = matchNativeItemType;

var _nativeTypesConfig = __webpack_require__(3400);

var _NativeDragSource = __webpack_require__(21328);

function createNativeDragSource(type, dataTransfer) {
  var result = new _NativeDragSource.NativeDragSource(_nativeTypesConfig.nativeTypesConfig[type]);
  result.loadDataTransfer(dataTransfer);
  return result;
}

function matchNativeItemType(dataTransfer) {
  if (!dataTransfer) {
    return null;
  }

  var dataTransferTypes = Array.prototype.slice.call(dataTransfer.types || []);
  return Object.keys(_nativeTypesConfig.nativeTypesConfig).filter(function (nativeItemType) {
    var matchesTypes = _nativeTypesConfig.nativeTypesConfig[nativeItemType].matchesTypes;
    return matchesTypes.some(function (t) {
      return dataTransferTypes.indexOf(t) > -1;
    });
  })[0] || null;
}

/***/ }),

/***/ 3400:
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


function _typeof(obj) { "@babel/helpers - typeof"; if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.nativeTypesConfig = void 0;

var NativeTypes = _interopRequireWildcard(__webpack_require__(1445));

var _getDataFromDataTransfer = __webpack_require__(92169);

var _nativeTypesConfig;

function _getRequireWildcardCache(nodeInterop) { if (typeof WeakMap !== "function") return null; var cacheBabelInterop = new WeakMap(); var cacheNodeInterop = new WeakMap(); return (_getRequireWildcardCache = function _getRequireWildcardCache(nodeInterop) { return nodeInterop ? cacheNodeInterop : cacheBabelInterop; })(nodeInterop); }

function _interopRequireWildcard(obj, nodeInterop) { if (!nodeInterop && obj && obj.__esModule) { return obj; } if (obj === null || _typeof(obj) !== "object" && typeof obj !== "function") { return { default: obj }; } var cache = _getRequireWildcardCache(nodeInterop); if (cache && cache.has(obj)) { return cache.get(obj); } var newObj = {}; var hasPropertyDescriptor = Object.defineProperty && Object.getOwnPropertyDescriptor; for (var key in obj) { if (key !== "default" && Object.prototype.hasOwnProperty.call(obj, key)) { var desc = hasPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : null; if (desc && (desc.get || desc.set)) { Object.defineProperty(newObj, key, desc); } else { newObj[key] = obj[key]; } } } newObj.default = obj; if (cache) { cache.set(obj, newObj); } return newObj; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

var nativeTypesConfig = (_nativeTypesConfig = {}, _defineProperty(_nativeTypesConfig, NativeTypes.FILE, {
  exposeProperties: {
    files: function files(dataTransfer) {
      return Array.prototype.slice.call(dataTransfer.files);
    },
    items: function items(dataTransfer) {
      return dataTransfer.items;
    },
    dataTransfer: function dataTransfer(_dataTransfer) {
      return _dataTransfer;
    }
  },
  matchesTypes: ['Files']
}), _defineProperty(_nativeTypesConfig, NativeTypes.HTML, {
  exposeProperties: {
    html: function html(dataTransfer, matchesTypes) {
      return (0, _getDataFromDataTransfer.getDataFromDataTransfer)(dataTransfer, matchesTypes, '');
    },
    dataTransfer: function dataTransfer(_dataTransfer2) {
      return _dataTransfer2;
    }
  },
  matchesTypes: ['Html', 'text/html']
}), _defineProperty(_nativeTypesConfig, NativeTypes.URL, {
  exposeProperties: {
    urls: function urls(dataTransfer, matchesTypes) {
      return (0, _getDataFromDataTransfer.getDataFromDataTransfer)(dataTransfer, matchesTypes, '').split('\n');
    },
    dataTransfer: function dataTransfer(_dataTransfer3) {
      return _dataTransfer3;
    }
  },
  matchesTypes: ['Url', 'text/uri-list']
}), _defineProperty(_nativeTypesConfig, NativeTypes.TEXT, {
  exposeProperties: {
    text: function text(dataTransfer, matchesTypes) {
      return (0, _getDataFromDataTransfer.getDataFromDataTransfer)(dataTransfer, matchesTypes, '');
    },
    dataTransfer: function dataTransfer(_dataTransfer4) {
      return _dataTransfer4;
    }
  },
  matchesTypes: ['Text', 'text/plain']
}), _nativeTypesConfig);
exports.nativeTypesConfig = nativeTypesConfig;

/***/ }),

/***/ 1445:
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.HTML = exports.TEXT = exports.URL = exports.FILE = void 0;
var FILE = '__NATIVE_FILE__';
exports.FILE = FILE;
var URL = '__NATIVE_URL__';
exports.URL = URL;
var TEXT = '__NATIVE_TEXT__';
exports.TEXT = TEXT;
var HTML = '__NATIVE_HTML__';
exports.HTML = HTML;

/***/ }),

/***/ 92774:
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.getNodeClientOffset = getNodeClientOffset;
exports.getEventClientOffset = getEventClientOffset;
exports.getDragPreviewOffset = getDragPreviewOffset;

var _BrowserDetector = __webpack_require__(21993);

var _MonotonicInterpolant = __webpack_require__(45152);

var ELEMENT_NODE = 1;

function getNodeClientOffset(node) {
  var el = node.nodeType === ELEMENT_NODE ? node : node.parentElement;

  if (!el) {
    return null;
  }

  var _el$getBoundingClient = el.getBoundingClientRect(),
      top = _el$getBoundingClient.top,
      left = _el$getBoundingClient.left;

  return {
    x: left,
    y: top
  };
}

function getEventClientOffset(e) {
  return {
    x: e.clientX,
    y: e.clientY
  };
}

function isImageNode(node) {
  var _document$documentEle;

  return node.nodeName === 'IMG' && ((0, _BrowserDetector.isFirefox)() || !((_document$documentEle = document.documentElement) !== null && _document$documentEle !== void 0 && _document$documentEle.contains(node)));
}

function getDragPreviewSize(isImage, dragPreview, sourceWidth, sourceHeight) {
  var dragPreviewWidth = isImage ? dragPreview.width : sourceWidth;
  var dragPreviewHeight = isImage ? dragPreview.height : sourceHeight; // Work around @2x coordinate discrepancies in browsers

  if ((0, _BrowserDetector.isSafari)() && isImage) {
    dragPreviewHeight /= window.devicePixelRatio;
    dragPreviewWidth /= window.devicePixelRatio;
  }

  return {
    dragPreviewWidth: dragPreviewWidth,
    dragPreviewHeight: dragPreviewHeight
  };
}

function getDragPreviewOffset(sourceNode, dragPreview, clientOffset, anchorPoint, offsetPoint) {
  // The browsers will use the image intrinsic size under different conditions.
  // Firefox only cares if it's an image, but WebKit also wants it to be detached.
  var isImage = isImageNode(dragPreview);
  var dragPreviewNode = isImage ? sourceNode : dragPreview;
  var dragPreviewNodeOffsetFromClient = getNodeClientOffset(dragPreviewNode);
  var offsetFromDragPreview = {
    x: clientOffset.x - dragPreviewNodeOffsetFromClient.x,
    y: clientOffset.y - dragPreviewNodeOffsetFromClient.y
  };
  var sourceWidth = sourceNode.offsetWidth,
      sourceHeight = sourceNode.offsetHeight;
  var anchorX = anchorPoint.anchorX,
      anchorY = anchorPoint.anchorY;

  var _getDragPreviewSize = getDragPreviewSize(isImage, dragPreview, sourceWidth, sourceHeight),
      dragPreviewWidth = _getDragPreviewSize.dragPreviewWidth,
      dragPreviewHeight = _getDragPreviewSize.dragPreviewHeight;

  var calculateYOffset = function calculateYOffset() {
    var interpolantY = new _MonotonicInterpolant.MonotonicInterpolant([0, 0.5, 1], [// Dock to the top
    offsetFromDragPreview.y, // Align at the center
    offsetFromDragPreview.y / sourceHeight * dragPreviewHeight, // Dock to the bottom
    offsetFromDragPreview.y + dragPreviewHeight - sourceHeight]);
    var y = interpolantY.interpolate(anchorY); // Work around Safari 8 positioning bug

    if ((0, _BrowserDetector.isSafari)() && isImage) {
      // We'll have to wait for @3x to see if this is entirely correct
      y += (window.devicePixelRatio - 1) * dragPreviewHeight;
    }

    return y;
  };

  var calculateXOffset = function calculateXOffset() {
    // Interpolate coordinates depending on anchor point
    // If you know a simpler way to do this, let me know
    var interpolantX = new _MonotonicInterpolant.MonotonicInterpolant([0, 0.5, 1], [// Dock to the left
    offsetFromDragPreview.x, // Align at the center
    offsetFromDragPreview.x / sourceWidth * dragPreviewWidth, // Dock to the right
    offsetFromDragPreview.x + dragPreviewWidth - sourceWidth]);
    return interpolantX.interpolate(anchorX);
  }; // Force offsets if specified in the options.


  var offsetX = offsetPoint.offsetX,
      offsetY = offsetPoint.offsetY;
  var isManualOffsetX = offsetX === 0 || offsetX;
  var isManualOffsetY = offsetY === 0 || offsetY;
  return {
    x: isManualOffsetX ? offsetX : calculateXOffset(),
    y: isManualOffsetY ? offsetY : calculateYOffset()
  };
}

/***/ }),

/***/ 58137:
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.OptionsReader = void 0;

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

var OptionsReader = /*#__PURE__*/function () {
  function OptionsReader(globalContext, options) {
    _classCallCheck(this, OptionsReader);

    _defineProperty(this, "ownerDocument", null);

    _defineProperty(this, "globalContext", void 0);

    _defineProperty(this, "optionsArgs", void 0);

    this.globalContext = globalContext;
    this.optionsArgs = options;
  }

  _createClass(OptionsReader, [{
    key: "window",
    get: function get() {
      if (this.globalContext) {
        return this.globalContext;
      } else if (typeof window !== 'undefined') {
        return window;
      }

      return undefined;
    }
  }, {
    key: "document",
    get: function get() {
      var _this$globalContext;

      if ((_this$globalContext = this.globalContext) !== null && _this$globalContext !== void 0 && _this$globalContext.document) {
        return this.globalContext.document;
      } else if (this.window) {
        return this.window.document;
      } else {
        return undefined;
      }
    }
  }, {
    key: "rootElement",
    get: function get() {
      var _this$optionsArgs;

      return ((_this$optionsArgs = this.optionsArgs) === null || _this$optionsArgs === void 0 ? void 0 : _this$optionsArgs.rootElement) || this.window;
    }
  }]);

  return OptionsReader;
}();

exports.OptionsReader = OptionsReader;

/***/ }),

/***/ 25481:
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.getEmptyImage = getEmptyImage;
var emptyImage;

function getEmptyImage() {
  if (!emptyImage) {
    emptyImage = new Image();
    emptyImage.src = 'data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==';
  }

  return emptyImage;
}

/***/ }),

/***/ 61080:
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

"use strict";


function _typeof(obj) { "@babel/helpers - typeof"; if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

Object.defineProperty(exports, "__esModule", ({
  value: true
}));
Object.defineProperty(exports, "getEmptyImage", ({
  enumerable: true,
  get: function get() {
    return _getEmptyImage.getEmptyImage;
  }
}));
exports.NativeTypes = exports.HTML5Backend = void 0;

var _HTML5BackendImpl = __webpack_require__(38501);

var NativeTypes = _interopRequireWildcard(__webpack_require__(1445));

exports.NativeTypes = NativeTypes;

var _getEmptyImage = __webpack_require__(25481);

function _getRequireWildcardCache(nodeInterop) { if (typeof WeakMap !== "function") return null; var cacheBabelInterop = new WeakMap(); var cacheNodeInterop = new WeakMap(); return (_getRequireWildcardCache = function _getRequireWildcardCache(nodeInterop) { return nodeInterop ? cacheNodeInterop : cacheBabelInterop; })(nodeInterop); }

function _interopRequireWildcard(obj, nodeInterop) { if (!nodeInterop && obj && obj.__esModule) { return obj; } if (obj === null || _typeof(obj) !== "object" && typeof obj !== "function") { return { default: obj }; } var cache = _getRequireWildcardCache(nodeInterop); if (cache && cache.has(obj)) { return cache.get(obj); } var newObj = {}; var hasPropertyDescriptor = Object.defineProperty && Object.getOwnPropertyDescriptor; for (var key in obj) { if (key !== "default" && Object.prototype.hasOwnProperty.call(obj, key)) { var desc = hasPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : null; if (desc && (desc.get || desc.set)) { Object.defineProperty(newObj, key, desc); } else { newObj[key] = obj[key]; } } } newObj.default = obj; if (cache) { cache.set(obj, newObj); } return newObj; }

var HTML5Backend = function createBackend(manager, context, options) {
  return new _HTML5BackendImpl.HTML5BackendImpl(manager, context, options);
};

exports.HTML5Backend = HTML5Backend;

/***/ }),

/***/ 58760:
/***/ ((__unused_webpack_module, exports) => {

"use strict";


Object.defineProperty(exports, "__esModule", ({
  value: true
}));
exports.memoize = memoize;
exports.without = without;
exports.union = union;

// cheap lodash replacements
function memoize(fn) {
  var result = null;

  var memoized = function memoized() {
    if (result == null) {
      result = fn();
    }

    return result;
  };

  return memoized;
}
/**
 * drop-in replacement for _.without
 */


function without(items, item) {
  return items.filter(function (i) {
    return i !== item;
  });
}

function union(itemsA, itemsB) {
  var set = new Set();

  var insertItem = function insertItem(item) {
    return set.add(item);
  };

  itemsA.forEach(insertItem);
  itemsB.forEach(insertItem);
  var result = [];
  set.forEach(function (key) {
    return result.push(key);
  });
  return result;
}

/***/ }),

/***/ 36625:
/***/ ((module, exports, __webpack_require__) => {

/* provided dependency */ var process = __webpack_require__(34155);
/* provided dependency */ var console = __webpack_require__(25108);
exports = module.exports = SemVer

var debug
/* istanbul ignore next */
if (typeof process === 'object' &&
    ({"ADMIN_PATH":"/admin/","NODE_ENV":"production","STRAPI_ADMIN_BACKEND_URL":""}) &&
    ({"ADMIN_PATH":"/admin/","NODE_ENV":"production","STRAPI_ADMIN_BACKEND_URL":""}).NODE_DEBUG &&
    /\bsemver\b/i.test(({"ADMIN_PATH":"/admin/","NODE_ENV":"production","STRAPI_ADMIN_BACKEND_URL":""}).NODE_DEBUG)) {
  debug = function () {
    var args = Array.prototype.slice.call(arguments, 0)
    args.unshift('SEMVER')
    console.log.apply(console, args)
  }
} else {
  debug = function () {}
}

// Note: this is the semver.org version of the spec that it implements
// Not necessarily the package version of this code.
exports.SEMVER_SPEC_VERSION = '2.0.0'

var MAX_LENGTH = 256
var MAX_SAFE_INTEGER = Number.MAX_SAFE_INTEGER ||
  /* istanbul ignore next */ 9007199254740991

// Max safe segment length for coercion.
var MAX_SAFE_COMPONENT_LENGTH = 16

// The actual regexps go on exports.re
var re = exports.re = []
var src = exports.src = []
var t = exports.tokens = {}
var R = 0

function tok (n) {
  t[n] = R++
}

// The following Regular Expressions can be used for tokenizing,
// validating, and parsing SemVer version strings.

// ## Numeric Identifier
// A single `0`, or a non-zero digit followed by zero or more digits.

tok('NUMERICIDENTIFIER')
src[t.NUMERICIDENTIFIER] = '0|[1-9]\\d*'
tok('NUMERICIDENTIFIERLOOSE')
src[t.NUMERICIDENTIFIERLOOSE] = '[0-9]+'

// ## Non-numeric Identifier
// Zero or more digits, followed by a letter or hyphen, and then zero or
// more letters, digits, or hyphens.

tok('NONNUMERICIDENTIFIER')
src[t.NONNUMERICIDENTIFIER] = '\\d*[a-zA-Z-][a-zA-Z0-9-]*'

// ## Main Version
// Three dot-separated numeric identifiers.

tok('MAINVERSION')
src[t.MAINVERSION] = '(' + src[t.NUMERICIDENTIFIER] + ')\\.' +
                   '(' + src[t.NUMERICIDENTIFIER] + ')\\.' +
                   '(' + src[t.NUMERICIDENTIFIER] + ')'

tok('MAINVERSIONLOOSE')
src[t.MAINVERSIONLOOSE] = '(' + src[t.NUMERICIDENTIFIERLOOSE] + ')\\.' +
                        '(' + src[t.NUMERICIDENTIFIERLOOSE] + ')\\.' +
                        '(' + src[t.NUMERICIDENTIFIERLOOSE] + ')'

// ## Pre-release Version Identifier
// A numeric identifier, or a non-numeric identifier.

tok('PRERELEASEIDENTIFIER')
src[t.PRERELEASEIDENTIFIER] = '(?:' + src[t.NUMERICIDENTIFIER] +
                            '|' + src[t.NONNUMERICIDENTIFIER] + ')'

tok('PRERELEASEIDENTIFIERLOOSE')
src[t.PRERELEASEIDENTIFIERLOOSE] = '(?:' + src[t.NUMERICIDENTIFIERLOOSE] +
                                 '|' + src[t.NONNUMERICIDENTIFIER] + ')'

// ## Pre-release Version
// Hyphen, followed by one or more dot-separated pre-release version
// identifiers.

tok('PRERELEASE')
src[t.PRERELEASE] = '(?:-(' + src[t.PRERELEASEIDENTIFIER] +
                  '(?:\\.' + src[t.PRERELEASEIDENTIFIER] + ')*))'

tok('PRERELEASELOOSE')
src[t.PRERELEASELOOSE] = '(?:-?(' + src[t.PRERELEASEIDENTIFIERLOOSE] +
                       '(?:\\.' + src[t.PRERELEASEIDENTIFIERLOOSE] + ')*))'

// ## Build Metadata Identifier
// Any combination of digits, letters, or hyphens.

tok('BUILDIDENTIFIER')
src[t.BUILDIDENTIFIER] = '[0-9A-Za-z-]+'

// ## Build Metadata
// Plus sign, followed by one or more period-separated build metadata
// identifiers.

tok('BUILD')
src[t.BUILD] = '(?:\\+(' + src[t.BUILDIDENTIFIER] +
             '(?:\\.' + src[t.BUILDIDENTIFIER] + ')*))'

// ## Full Version String
// A main version, followed optionally by a pre-release version and
// build metadata.

// Note that the only major, minor, patch, and pre-release sections of
// the version string are capturing groups.  The build metadata is not a
// capturing group, because it should not ever be used in version
// comparison.

tok('FULL')
tok('FULLPLAIN')
src[t.FULLPLAIN] = 'v?' + src[t.MAINVERSION] +
                  src[t.PRERELEASE] + '?' +
                  src[t.BUILD] + '?'

src[t.FULL] = '^' + src[t.FULLPLAIN] + '$'

// like full, but allows v1.2.3 and =1.2.3, which people do sometimes.
// also, 1.0.0alpha1 (prerelease without the hyphen) which is pretty
// common in the npm registry.
tok('LOOSEPLAIN')
src[t.LOOSEPLAIN] = '[v=\\s]*' + src[t.MAINVERSIONLOOSE] +
                  src[t.PRERELEASELOOSE] + '?' +
                  src[t.BUILD] + '?'

tok('LOOSE')
src[t.LOOSE] = '^' + src[t.LOOSEPLAIN] + '$'

tok('GTLT')
src[t.GTLT] = '((?:<|>)?=?)'

// Something like "2.*" or "1.2.x".
// Note that "x.x" is a valid xRange identifer, meaning "any version"
// Only the first item is strictly required.
tok('XRANGEIDENTIFIERLOOSE')
src[t.XRANGEIDENTIFIERLOOSE] = src[t.NUMERICIDENTIFIERLOOSE] + '|x|X|\\*'
tok('XRANGEIDENTIFIER')
src[t.XRANGEIDENTIFIER] = src[t.NUMERICIDENTIFIER] + '|x|X|\\*'

tok('XRANGEPLAIN')
src[t.XRANGEPLAIN] = '[v=\\s]*(' + src[t.XRANGEIDENTIFIER] + ')' +
                   '(?:\\.(' + src[t.XRANGEIDENTIFIER] + ')' +
                   '(?:\\.(' + src[t.XRANGEIDENTIFIER] + ')' +
                   '(?:' + src[t.PRERELEASE] + ')?' +
                   src[t.BUILD] + '?' +
                   ')?)?'

tok('XRANGEPLAINLOOSE')
src[t.XRANGEPLAINLOOSE] = '[v=\\s]*(' + src[t.XRANGEIDENTIFIERLOOSE] + ')' +
                        '(?:\\.(' + src[t.XRANGEIDENTIFIERLOOSE] + ')' +
                        '(?:\\.(' + src[t.XRANGEIDENTIFIERLOOSE] + ')' +
                        '(?:' + src[t.PRERELEASELOOSE] + ')?' +
                        src[t.BUILD] + '?' +
                        ')?)?'

tok('XRANGE')
src[t.XRANGE] = '^' + src[t.GTLT] + '\\s*' + src[t.XRANGEPLAIN] + '$'
tok('XRANGELOOSE')
src[t.XRANGELOOSE] = '^' + src[t.GTLT] + '\\s*' + src[t.XRANGEPLAINLOOSE] + '$'

// Coercion.
// Extract anything that could conceivably be a part of a valid semver
tok('COERCE')
src[t.COERCE] = '(^|[^\\d])' +
              '(\\d{1,' + MAX_SAFE_COMPONENT_LENGTH + '})' +
              '(?:\\.(\\d{1,' + MAX_SAFE_COMPONENT_LENGTH + '}))?' +
              '(?:\\.(\\d{1,' + MAX_SAFE_COMPONENT_LENGTH + '}))?' +
              '(?:$|[^\\d])'
tok('COERCERTL')
re[t.COERCERTL] = new RegExp(src[t.COERCE], 'g')

// Tilde ranges.
// Meaning is "reasonably at or greater than"
tok('LONETILDE')
src[t.LONETILDE] = '(?:~>?)'

tok('TILDETRIM')
src[t.TILDETRIM] = '(\\s*)' + src[t.LONETILDE] + '\\s+'
re[t.TILDETRIM] = new RegExp(src[t.TILDETRIM], 'g')
var tildeTrimReplace = '$1~'

tok('TILDE')
src[t.TILDE] = '^' + src[t.LONETILDE] + src[t.XRANGEPLAIN] + '$'
tok('TILDELOOSE')
src[t.TILDELOOSE] = '^' + src[t.LONETILDE] + src[t.XRANGEPLAINLOOSE] + '$'

// Caret ranges.
// Meaning is "at least and backwards compatible with"
tok('LONECARET')
src[t.LONECARET] = '(?:\\^)'

tok('CARETTRIM')
src[t.CARETTRIM] = '(\\s*)' + src[t.LONECARET] + '\\s+'
re[t.CARETTRIM] = new RegExp(src[t.CARETTRIM], 'g')
var caretTrimReplace = '$1^'

tok('CARET')
src[t.CARET] = '^' + src[t.LONECARET] + src[t.XRANGEPLAIN] + '$'
tok('CARETLOOSE')
src[t.CARETLOOSE] = '^' + src[t.LONECARET] + src[t.XRANGEPLAINLOOSE] + '$'

// A simple gt/lt/eq thing, or just "" to indicate "any version"
tok('COMPARATORLOOSE')
src[t.COMPARATORLOOSE] = '^' + src[t.GTLT] + '\\s*(' + src[t.LOOSEPLAIN] + ')$|^$'
tok('COMPARATOR')
src[t.COMPARATOR] = '^' + src[t.GTLT] + '\\s*(' + src[t.FULLPLAIN] + ')$|^$'

// An expression to strip any whitespace between the gtlt and the thing
// it modifies, so that `> 1.2.3` ==> `>1.2.3`
tok('COMPARATORTRIM')
src[t.COMPARATORTRIM] = '(\\s*)' + src[t.GTLT] +
                      '\\s*(' + src[t.LOOSEPLAIN] + '|' + src[t.XRANGEPLAIN] + ')'

// this one has to use the /g flag
re[t.COMPARATORTRIM] = new RegExp(src[t.COMPARATORTRIM], 'g')
var comparatorTrimReplace = '$1$2$3'

// Something like `1.2.3 - 1.2.4`
// Note that these all use the loose form, because they'll be
// checked against either the strict or loose comparator form
// later.
tok('HYPHENRANGE')
src[t.HYPHENRANGE] = '^\\s*(' + src[t.XRANGEPLAIN] + ')' +
                   '\\s+-\\s+' +
                   '(' + src[t.XRANGEPLAIN] + ')' +
                   '\\s*$'

tok('HYPHENRANGELOOSE')
src[t.HYPHENRANGELOOSE] = '^\\s*(' + src[t.XRANGEPLAINLOOSE] + ')' +
                        '\\s+-\\s+' +
                        '(' + src[t.XRANGEPLAINLOOSE] + ')' +
                        '\\s*$'

// Star ranges basically just allow anything at all.
tok('STAR')
src[t.STAR] = '(<|>)?=?\\s*\\*'

// Compile to actual regexp objects.
// All are flag-free, unless they were created above with a flag.
for (var i = 0; i < R; i++) {
  debug(i, src[i])
  if (!re[i]) {
    re[i] = new RegExp(src[i])
  }
}

exports.parse = parse
function parse (version, options) {
  if (!options || typeof options !== 'object') {
    options = {
      loose: !!options,
      includePrerelease: false
    }
  }

  if (version instanceof SemVer) {
    return version
  }

  if (typeof version !== 'string') {
    return null
  }

  if (version.length > MAX_LENGTH) {
    return null
  }

  var r = options.loose ? re[t.LOOSE] : re[t.FULL]
  if (!r.test(version)) {
    return null
  }

  try {
    return new SemVer(version, options)
  } catch (er) {
    return null
  }
}

exports.valid = valid
function valid (version, options) {
  var v = parse(version, options)
  return v ? v.version : null
}

exports.clean = clean
function clean (version, options) {
  var s = parse(version.trim().replace(/^[=v]+/, ''), options)
  return s ? s.version : null
}

exports.SemVer = SemVer

function SemVer (version, options) {
  if (!options || typeof options !== 'object') {
    options = {
      loose: !!options,
      includePrerelease: false
    }
  }
  if (version instanceof SemVer) {
    if (version.loose === options.loose) {
      return version
    } else {
      version = version.version
    }
  } else if (typeof version !== 'string') {
    throw new TypeError('Invalid Version: ' + version)
  }

  if (version.length > MAX_LENGTH) {
    throw new TypeError('version is longer than ' + MAX_LENGTH + ' characters')
  }

  if (!(this instanceof SemVer)) {
    return new SemVer(version, options)
  }

  debug('SemVer', version, options)
  this.options = options
  this.loose = !!options.loose

  var m = version.trim().match(options.loose ? re[t.LOOSE] : re[t.FULL])

  if (!m) {
    throw new TypeError('Invalid Version: ' + version)
  }

  this.raw = version

  // these are actually numbers
  this.major = +m[1]
  this.minor = +m[2]
  this.patch = +m[3]

  if (this.major > MAX_SAFE_INTEGER || this.major < 0) {
    throw new TypeError('Invalid major version')
  }

  if (this.minor > MAX_SAFE_INTEGER || this.minor < 0) {
    throw new TypeError('Invalid minor version')
  }

  if (this.patch > MAX_SAFE_INTEGER || this.patch < 0) {
    throw new TypeError('Invalid patch version')
  }

  // numberify any prerelease numeric ids
  if (!m[4]) {
    this.prerelease = []
  } else {
    this.prerelease = m[4].split('.').map(function (id) {
      if (/^[0-9]+$/.test(id)) {
        var num = +id
        if (num >= 0 && num < MAX_SAFE_INTEGER) {
          return num
        }
      }
      return id
    })
  }

  this.build = m[5] ? m[5].split('.') : []
  this.format()
}

SemVer.prototype.format = function () {
  this.version = this.major + '.' + this.minor + '.' + this.patch
  if (this.prerelease.length) {
    this.version += '-' + this.prerelease.join('.')
  }
  return this.version
}

SemVer.prototype.toString = function () {
  return this.version
}

SemVer.prototype.compare = function (other) {
  debug('SemVer.compare', this.version, this.options, other)
  if (!(other instanceof SemVer)) {
    other = new SemVer(other, this.options)
  }

  return this.compareMain(other) || this.comparePre(other)
}

SemVer.prototype.compareMain = function (other) {
  if (!(other instanceof SemVer)) {
    other = new SemVer(other, this.options)
  }

  return compareIdentifiers(this.major, other.major) ||
         compareIdentifiers(this.minor, other.minor) ||
         compareIdentifiers(this.patch, other.patch)
}

SemVer.prototype.comparePre = function (other) {
  if (!(other instanceof SemVer)) {
    other = new SemVer(other, this.options)
  }

  // NOT having a prerelease is > having one
  if (this.prerelease.length && !other.prerelease.length) {
    return -1
  } else if (!this.prerelease.length && other.prerelease.length) {
    return 1
  } else if (!this.prerelease.length && !other.prerelease.length) {
    return 0
  }

  var i = 0
  do {
    var a = this.prerelease[i]
    var b = other.prerelease[i]
    debug('prerelease compare', i, a, b)
    if (a === undefined && b === undefined) {
      return 0
    } else if (b === undefined) {
      return 1
    } else if (a === undefined) {
      return -1
    } else if (a === b) {
      continue
    } else {
      return compareIdentifiers(a, b)
    }
  } while (++i)
}

SemVer.prototype.compareBuild = function (other) {
  if (!(other instanceof SemVer)) {
    other = new SemVer(other, this.options)
  }

  var i = 0
  do {
    var a = this.build[i]
    var b = other.build[i]
    debug('prerelease compare', i, a, b)
    if (a === undefined && b === undefined) {
      return 0
    } else if (b === undefined) {
      return 1
    } else if (a === undefined) {
      return -1
    } else if (a === b) {
      continue
    } else {
      return compareIdentifiers(a, b)
    }
  } while (++i)
}

// preminor will bump the version up to the next minor release, and immediately
// down to pre-release. premajor and prepatch work the same way.
SemVer.prototype.inc = function (release, identifier) {
  switch (release) {
    case 'premajor':
      this.prerelease.length = 0
      this.patch = 0
      this.minor = 0
      this.major++
      this.inc('pre', identifier)
      break
    case 'preminor':
      this.prerelease.length = 0
      this.patch = 0
      this.minor++
      this.inc('pre', identifier)
      break
    case 'prepatch':
      // If this is already a prerelease, it will bump to the next version
      // drop any prereleases that might already exist, since they are not
      // relevant at this point.
      this.prerelease.length = 0
      this.inc('patch', identifier)
      this.inc('pre', identifier)
      break
    // If the input is a non-prerelease version, this acts the same as
    // prepatch.
    case 'prerelease':
      if (this.prerelease.length === 0) {
        this.inc('patch', identifier)
      }
      this.inc('pre', identifier)
      break

    case 'major':
      // If this is a pre-major version, bump up to the same major version.
      // Otherwise increment major.
      // 1.0.0-5 bumps to 1.0.0
      // 1.1.0 bumps to 2.0.0
      if (this.minor !== 0 ||
          this.patch !== 0 ||
          this.prerelease.length === 0) {
        this.major++
      }
      this.minor = 0
      this.patch = 0
      this.prerelease = []
      break
    case 'minor':
      // If this is a pre-minor version, bump up to the same minor version.
      // Otherwise increment minor.
      // 1.2.0-5 bumps to 1.2.0
      // 1.2.1 bumps to 1.3.0
      if (this.patch !== 0 || this.prerelease.length === 0) {
        this.minor++
      }
      this.patch = 0
      this.prerelease = []
      break
    case 'patch':
      // If this is not a pre-release version, it will increment the patch.
      // If it is a pre-release it will bump up to the same patch version.
      // 1.2.0-5 patches to 1.2.0
      // 1.2.0 patches to 1.2.1
      if (this.prerelease.length === 0) {
        this.patch++
      }
      this.prerelease = []
      break
    // This probably shouldn't be used publicly.
    // 1.0.0 "pre" would become 1.0.0-0 which is the wrong direction.
    case 'pre':
      if (this.prerelease.length === 0) {
        this.prerelease = [0]
      } else {
        var i = this.prerelease.length
        while (--i >= 0) {
          if (typeof this.prerelease[i] === 'number') {
            this.prerelease[i]++
            i = -2
          }
        }
        if (i === -1) {
          // didn't increment anything
          this.prerelease.push(0)
        }
      }
      if (identifier) {
        // 1.2.0-beta.1 bumps to 1.2.0-beta.2,
        // 1.2.0-beta.fooblz or 1.2.0-beta bumps to 1.2.0-beta.0
        if (this.prerelease[0] === identifier) {
          if (isNaN(this.prerelease[1])) {
            this.prerelease = [identifier, 0]
          }
        } else {
          this.prerelease = [identifier, 0]
        }
      }
      break

    default:
      throw new Error('invalid increment argument: ' + release)
  }
  this.format()
  this.raw = this.version
  return this
}

exports.inc = inc
function inc (version, release, loose, identifier) {
  if (typeof (loose) === 'string') {
    identifier = loose
    loose = undefined
  }

  try {
    return new SemVer(version, loose).inc(release, identifier).version
  } catch (er) {
    return null
  }
}

exports.diff = diff
function diff (version1, version2) {
  if (eq(version1, version2)) {
    return null
  } else {
    var v1 = parse(version1)
    var v2 = parse(version2)
    var prefix = ''
    if (v1.prerelease.length || v2.prerelease.length) {
      prefix = 'pre'
      var defaultResult = 'prerelease'
    }
    for (var key in v1) {
      if (key === 'major' || key === 'minor' || key === 'patch') {
        if (v1[key] !== v2[key]) {
          return prefix + key
        }
      }
    }
    return defaultResult // may be undefined
  }
}

exports.compareIdentifiers = compareIdentifiers

var numeric = /^[0-9]+$/
function compareIdentifiers (a, b) {
  var anum = numeric.test(a)
  var bnum = numeric.test(b)

  if (anum && bnum) {
    a = +a
    b = +b
  }

  return a === b ? 0
    : (anum && !bnum) ? -1
    : (bnum && !anum) ? 1
    : a < b ? -1
    : 1
}

exports.rcompareIdentifiers = rcompareIdentifiers
function rcompareIdentifiers (a, b) {
  return compareIdentifiers(b, a)
}

exports.major = major
function major (a, loose) {
  return new SemVer(a, loose).major
}

exports.minor = minor
function minor (a, loose) {
  return new SemVer(a, loose).minor
}

exports.patch = patch
function patch (a, loose) {
  return new SemVer(a, loose).patch
}

exports.compare = compare
function compare (a, b, loose) {
  return new SemVer(a, loose).compare(new SemVer(b, loose))
}

exports.compareLoose = compareLoose
function compareLoose (a, b) {
  return compare(a, b, true)
}

exports.compareBuild = compareBuild
function compareBuild (a, b, loose) {
  var versionA = new SemVer(a, loose)
  var versionB = new SemVer(b, loose)
  return versionA.compare(versionB) || versionA.compareBuild(versionB)
}

exports.rcompare = rcompare
function rcompare (a, b, loose) {
  return compare(b, a, loose)
}

exports.sort = sort
function sort (list, loose) {
  return list.sort(function (a, b) {
    return exports.compareBuild(a, b, loose)
  })
}

exports.rsort = rsort
function rsort (list, loose) {
  return list.sort(function (a, b) {
    return exports.compareBuild(b, a, loose)
  })
}

exports.gt = gt
function gt (a, b, loose) {
  return compare(a, b, loose) > 0
}

exports.lt = lt
function lt (a, b, loose) {
  return compare(a, b, loose) < 0
}

exports.eq = eq
function eq (a, b, loose) {
  return compare(a, b, loose) === 0
}

exports.neq = neq
function neq (a, b, loose) {
  return compare(a, b, loose) !== 0
}

exports.gte = gte
function gte (a, b, loose) {
  return compare(a, b, loose) >= 0
}

exports.lte = lte
function lte (a, b, loose) {
  return compare(a, b, loose) <= 0
}

exports.cmp = cmp
function cmp (a, op, b, loose) {
  switch (op) {
    case '===':
      if (typeof a === 'object')
        a = a.version
      if (typeof b === 'object')
        b = b.version
      return a === b

    case '!==':
      if (typeof a === 'object')
        a = a.version
      if (typeof b === 'object')
        b = b.version
      return a !== b

    case '':
    case '=':
    case '==':
      return eq(a, b, loose)

    case '!=':
      return neq(a, b, loose)

    case '>':
      return gt(a, b, loose)

    case '>=':
      return gte(a, b, loose)

    case '<':
      return lt(a, b, loose)

    case '<=':
      return lte(a, b, loose)

    default:
      throw new TypeError('Invalid operator: ' + op)
  }
}

exports.Comparator = Comparator
function Comparator (comp, options) {
  if (!options || typeof options !== 'object') {
    options = {
      loose: !!options,
      includePrerelease: false
    }
  }

  if (comp instanceof Comparator) {
    if (comp.loose === !!options.loose) {
      return comp
    } else {
      comp = comp.value
    }
  }

  if (!(this instanceof Comparator)) {
    return new Comparator(comp, options)
  }

  debug('comparator', comp, options)
  this.options = options
  this.loose = !!options.loose
  this.parse(comp)

  if (this.semver === ANY) {
    this.value = ''
  } else {
    this.value = this.operator + this.semver.version
  }

  debug('comp', this)
}

var ANY = {}
Comparator.prototype.parse = function (comp) {
  var r = this.options.loose ? re[t.COMPARATORLOOSE] : re[t.COMPARATOR]
  var m = comp.match(r)

  if (!m) {
    throw new TypeError('Invalid comparator: ' + comp)
  }

  this.operator = m[1] !== undefined ? m[1] : ''
  if (this.operator === '=') {
    this.operator = ''
  }

  // if it literally is just '>' or '' then allow anything.
  if (!m[2]) {
    this.semver = ANY
  } else {
    this.semver = new SemVer(m[2], this.options.loose)
  }
}

Comparator.prototype.toString = function () {
  return this.value
}

Comparator.prototype.test = function (version) {
  debug('Comparator.test', version, this.options.loose)

  if (this.semver === ANY || version === ANY) {
    return true
  }

  if (typeof version === 'string') {
    try {
      version = new SemVer(version, this.options)
    } catch (er) {
      return false
    }
  }

  return cmp(version, this.operator, this.semver, this.options)
}

Comparator.prototype.intersects = function (comp, options) {
  if (!(comp instanceof Comparator)) {
    throw new TypeError('a Comparator is required')
  }

  if (!options || typeof options !== 'object') {
    options = {
      loose: !!options,
      includePrerelease: false
    }
  }

  var rangeTmp

  if (this.operator === '') {
    if (this.value === '') {
      return true
    }
    rangeTmp = new Range(comp.value, options)
    return satisfies(this.value, rangeTmp, options)
  } else if (comp.operator === '') {
    if (comp.value === '') {
      return true
    }
    rangeTmp = new Range(this.value, options)
    return satisfies(comp.semver, rangeTmp, options)
  }

  var sameDirectionIncreasing =
    (this.operator === '>=' || this.operator === '>') &&
    (comp.operator === '>=' || comp.operator === '>')
  var sameDirectionDecreasing =
    (this.operator === '<=' || this.operator === '<') &&
    (comp.operator === '<=' || comp.operator === '<')
  var sameSemVer = this.semver.version === comp.semver.version
  var differentDirectionsInclusive =
    (this.operator === '>=' || this.operator === '<=') &&
    (comp.operator === '>=' || comp.operator === '<=')
  var oppositeDirectionsLessThan =
    cmp(this.semver, '<', comp.semver, options) &&
    ((this.operator === '>=' || this.operator === '>') &&
    (comp.operator === '<=' || comp.operator === '<'))
  var oppositeDirectionsGreaterThan =
    cmp(this.semver, '>', comp.semver, options) &&
    ((this.operator === '<=' || this.operator === '<') &&
    (comp.operator === '>=' || comp.operator === '>'))

  return sameDirectionIncreasing || sameDirectionDecreasing ||
    (sameSemVer && differentDirectionsInclusive) ||
    oppositeDirectionsLessThan || oppositeDirectionsGreaterThan
}

exports.Range = Range
function Range (range, options) {
  if (!options || typeof options !== 'object') {
    options = {
      loose: !!options,
      includePrerelease: false
    }
  }

  if (range instanceof Range) {
    if (range.loose === !!options.loose &&
        range.includePrerelease === !!options.includePrerelease) {
      return range
    } else {
      return new Range(range.raw, options)
    }
  }

  if (range instanceof Comparator) {
    return new Range(range.value, options)
  }

  if (!(this instanceof Range)) {
    return new Range(range, options)
  }

  this.options = options
  this.loose = !!options.loose
  this.includePrerelease = !!options.includePrerelease

  // First, split based on boolean or ||
  this.raw = range
  this.set = range.split(/\s*\|\|\s*/).map(function (range) {
    return this.parseRange(range.trim())
  }, this).filter(function (c) {
    // throw out any that are not relevant for whatever reason
    return c.length
  })

  if (!this.set.length) {
    throw new TypeError('Invalid SemVer Range: ' + range)
  }

  this.format()
}

Range.prototype.format = function () {
  this.range = this.set.map(function (comps) {
    return comps.join(' ').trim()
  }).join('||').trim()
  return this.range
}

Range.prototype.toString = function () {
  return this.range
}

Range.prototype.parseRange = function (range) {
  var loose = this.options.loose
  range = range.trim()
  // `1.2.3 - 1.2.4` => `>=1.2.3 <=1.2.4`
  var hr = loose ? re[t.HYPHENRANGELOOSE] : re[t.HYPHENRANGE]
  range = range.replace(hr, hyphenReplace)
  debug('hyphen replace', range)
  // `> 1.2.3 < 1.2.5` => `>1.2.3 <1.2.5`
  range = range.replace(re[t.COMPARATORTRIM], comparatorTrimReplace)
  debug('comparator trim', range, re[t.COMPARATORTRIM])

  // `~ 1.2.3` => `~1.2.3`
  range = range.replace(re[t.TILDETRIM], tildeTrimReplace)

  // `^ 1.2.3` => `^1.2.3`
  range = range.replace(re[t.CARETTRIM], caretTrimReplace)

  // normalize spaces
  range = range.split(/\s+/).join(' ')

  // At this point, the range is completely trimmed and
  // ready to be split into comparators.

  var compRe = loose ? re[t.COMPARATORLOOSE] : re[t.COMPARATOR]
  var set = range.split(' ').map(function (comp) {
    return parseComparator(comp, this.options)
  }, this).join(' ').split(/\s+/)
  if (this.options.loose) {
    // in loose mode, throw out any that are not valid comparators
    set = set.filter(function (comp) {
      return !!comp.match(compRe)
    })
  }
  set = set.map(function (comp) {
    return new Comparator(comp, this.options)
  }, this)

  return set
}

Range.prototype.intersects = function (range, options) {
  if (!(range instanceof Range)) {
    throw new TypeError('a Range is required')
  }

  return this.set.some(function (thisComparators) {
    return (
      isSatisfiable(thisComparators, options) &&
      range.set.some(function (rangeComparators) {
        return (
          isSatisfiable(rangeComparators, options) &&
          thisComparators.every(function (thisComparator) {
            return rangeComparators.every(function (rangeComparator) {
              return thisComparator.intersects(rangeComparator, options)
            })
          })
        )
      })
    )
  })
}

// take a set of comparators and determine whether there
// exists a version which can satisfy it
function isSatisfiable (comparators, options) {
  var result = true
  var remainingComparators = comparators.slice()
  var testComparator = remainingComparators.pop()

  while (result && remainingComparators.length) {
    result = remainingComparators.every(function (otherComparator) {
      return testComparator.intersects(otherComparator, options)
    })

    testComparator = remainingComparators.pop()
  }

  return result
}

// Mostly just for testing and legacy API reasons
exports.toComparators = toComparators
function toComparators (range, options) {
  return new Range(range, options).set.map(function (comp) {
    return comp.map(function (c) {
      return c.value
    }).join(' ').trim().split(' ')
  })
}

// comprised of xranges, tildes, stars, and gtlt's at this point.
// already replaced the hyphen ranges
// turn into a set of JUST comparators.
function parseComparator (comp, options) {
  debug('comp', comp, options)
  comp = replaceCarets(comp, options)
  debug('caret', comp)
  comp = replaceTildes(comp, options)
  debug('tildes', comp)
  comp = replaceXRanges(comp, options)
  debug('xrange', comp)
  comp = replaceStars(comp, options)
  debug('stars', comp)
  return comp
}

function isX (id) {
  return !id || id.toLowerCase() === 'x' || id === '*'
}

// ~, ~> --> * (any, kinda silly)
// ~2, ~2.x, ~2.x.x, ~>2, ~>2.x ~>2.x.x --> >=2.0.0 <3.0.0
// ~2.0, ~2.0.x, ~>2.0, ~>2.0.x --> >=2.0.0 <2.1.0
// ~1.2, ~1.2.x, ~>1.2, ~>1.2.x --> >=1.2.0 <1.3.0
// ~1.2.3, ~>1.2.3 --> >=1.2.3 <1.3.0
// ~1.2.0, ~>1.2.0 --> >=1.2.0 <1.3.0
function replaceTildes (comp, options) {
  return comp.trim().split(/\s+/).map(function (comp) {
    return replaceTilde(comp, options)
  }).join(' ')
}

function replaceTilde (comp, options) {
  var r = options.loose ? re[t.TILDELOOSE] : re[t.TILDE]
  return comp.replace(r, function (_, M, m, p, pr) {
    debug('tilde', comp, _, M, m, p, pr)
    var ret

    if (isX(M)) {
      ret = ''
    } else if (isX(m)) {
      ret = '>=' + M + '.0.0 <' + (+M + 1) + '.0.0'
    } else if (isX(p)) {
      // ~1.2 == >=1.2.0 <1.3.0
      ret = '>=' + M + '.' + m + '.0 <' + M + '.' + (+m + 1) + '.0'
    } else if (pr) {
      debug('replaceTilde pr', pr)
      ret = '>=' + M + '.' + m + '.' + p + '-' + pr +
            ' <' + M + '.' + (+m + 1) + '.0'
    } else {
      // ~1.2.3 == >=1.2.3 <1.3.0
      ret = '>=' + M + '.' + m + '.' + p +
            ' <' + M + '.' + (+m + 1) + '.0'
    }

    debug('tilde return', ret)
    return ret
  })
}

// ^ --> * (any, kinda silly)
// ^2, ^2.x, ^2.x.x --> >=2.0.0 <3.0.0
// ^2.0, ^2.0.x --> >=2.0.0 <3.0.0
// ^1.2, ^1.2.x --> >=1.2.0 <2.0.0
// ^1.2.3 --> >=1.2.3 <2.0.0
// ^1.2.0 --> >=1.2.0 <2.0.0
function replaceCarets (comp, options) {
  return comp.trim().split(/\s+/).map(function (comp) {
    return replaceCaret(comp, options)
  }).join(' ')
}

function replaceCaret (comp, options) {
  debug('caret', comp, options)
  var r = options.loose ? re[t.CARETLOOSE] : re[t.CARET]
  return comp.replace(r, function (_, M, m, p, pr) {
    debug('caret', comp, _, M, m, p, pr)
    var ret

    if (isX(M)) {
      ret = ''
    } else if (isX(m)) {
      ret = '>=' + M + '.0.0 <' + (+M + 1) + '.0.0'
    } else if (isX(p)) {
      if (M === '0') {
        ret = '>=' + M + '.' + m + '.0 <' + M + '.' + (+m + 1) + '.0'
      } else {
        ret = '>=' + M + '.' + m + '.0 <' + (+M + 1) + '.0.0'
      }
    } else if (pr) {
      debug('replaceCaret pr', pr)
      if (M === '0') {
        if (m === '0') {
          ret = '>=' + M + '.' + m + '.' + p + '-' + pr +
                ' <' + M + '.' + m + '.' + (+p + 1)
        } else {
          ret = '>=' + M + '.' + m + '.' + p + '-' + pr +
                ' <' + M + '.' + (+m + 1) + '.0'
        }
      } else {
        ret = '>=' + M + '.' + m + '.' + p + '-' + pr +
              ' <' + (+M + 1) + '.0.0'
      }
    } else {
      debug('no pr')
      if (M === '0') {
        if (m === '0') {
          ret = '>=' + M + '.' + m + '.' + p +
                ' <' + M + '.' + m + '.' + (+p + 1)
        } else {
          ret = '>=' + M + '.' + m + '.' + p +
                ' <' + M + '.' + (+m + 1) + '.0'
        }
      } else {
        ret = '>=' + M + '.' + m + '.' + p +
              ' <' + (+M + 1) + '.0.0'
      }
    }

    debug('caret return', ret)
    return ret
  })
}

function replaceXRanges (comp, options) {
  debug('replaceXRanges', comp, options)
  return comp.split(/\s+/).map(function (comp) {
    return replaceXRange(comp, options)
  }).join(' ')
}

function replaceXRange (comp, options) {
  comp = comp.trim()
  var r = options.loose ? re[t.XRANGELOOSE] : re[t.XRANGE]
  return comp.replace(r, function (ret, gtlt, M, m, p, pr) {
    debug('xRange', comp, ret, gtlt, M, m, p, pr)
    var xM = isX(M)
    var xm = xM || isX(m)
    var xp = xm || isX(p)
    var anyX = xp

    if (gtlt === '=' && anyX) {
      gtlt = ''
    }

    // if we're including prereleases in the match, then we need
    // to fix this to -0, the lowest possible prerelease value
    pr = options.includePrerelease ? '-0' : ''

    if (xM) {
      if (gtlt === '>' || gtlt === '<') {
        // nothing is allowed
        ret = '<0.0.0-0'
      } else {
        // nothing is forbidden
        ret = '*'
      }
    } else if (gtlt && anyX) {
      // we know patch is an x, because we have any x at all.
      // replace X with 0
      if (xm) {
        m = 0
      }
      p = 0

      if (gtlt === '>') {
        // >1 => >=2.0.0
        // >1.2 => >=1.3.0
        // >1.2.3 => >= 1.2.4
        gtlt = '>='
        if (xm) {
          M = +M + 1
          m = 0
          p = 0
        } else {
          m = +m + 1
          p = 0
        }
      } else if (gtlt === '<=') {
        // <=0.7.x is actually <0.8.0, since any 0.7.x should
        // pass.  Similarly, <=7.x is actually <8.0.0, etc.
        gtlt = '<'
        if (xm) {
          M = +M + 1
        } else {
          m = +m + 1
        }
      }

      ret = gtlt + M + '.' + m + '.' + p + pr
    } else if (xm) {
      ret = '>=' + M + '.0.0' + pr + ' <' + (+M + 1) + '.0.0' + pr
    } else if (xp) {
      ret = '>=' + M + '.' + m + '.0' + pr +
        ' <' + M + '.' + (+m + 1) + '.0' + pr
    }

    debug('xRange return', ret)

    return ret
  })
}

// Because * is AND-ed with everything else in the comparator,
// and '' means "any version", just remove the *s entirely.
function replaceStars (comp, options) {
  debug('replaceStars', comp, options)
  // Looseness is ignored here.  star is always as loose as it gets!
  return comp.trim().replace(re[t.STAR], '')
}

// This function is passed to string.replace(re[t.HYPHENRANGE])
// M, m, patch, prerelease, build
// 1.2 - 3.4.5 => >=1.2.0 <=3.4.5
// 1.2.3 - 3.4 => >=1.2.0 <3.5.0 Any 3.4.x will do
// 1.2 - 3.4 => >=1.2.0 <3.5.0
function hyphenReplace ($0,
  from, fM, fm, fp, fpr, fb,
  to, tM, tm, tp, tpr, tb) {
  if (isX(fM)) {
    from = ''
  } else if (isX(fm)) {
    from = '>=' + fM + '.0.0'
  } else if (isX(fp)) {
    from = '>=' + fM + '.' + fm + '.0'
  } else {
    from = '>=' + from
  }

  if (isX(tM)) {
    to = ''
  } else if (isX(tm)) {
    to = '<' + (+tM + 1) + '.0.0'
  } else if (isX(tp)) {
    to = '<' + tM + '.' + (+tm + 1) + '.0'
  } else if (tpr) {
    to = '<=' + tM + '.' + tm + '.' + tp + '-' + tpr
  } else {
    to = '<=' + to
  }

  return (from + ' ' + to).trim()
}

// if ANY of the sets match ALL of its comparators, then pass
Range.prototype.test = function (version) {
  if (!version) {
    return false
  }

  if (typeof version === 'string') {
    try {
      version = new SemVer(version, this.options)
    } catch (er) {
      return false
    }
  }

  for (var i = 0; i < this.set.length; i++) {
    if (testSet(this.set[i], version, this.options)) {
      return true
    }
  }
  return false
}

function testSet (set, version, options) {
  for (var i = 0; i < set.length; i++) {
    if (!set[i].test(version)) {
      return false
    }
  }

  if (version.prerelease.length && !options.includePrerelease) {
    // Find the set of versions that are allowed to have prereleases
    // For example, ^1.2.3-pr.1 desugars to >=1.2.3-pr.1 <2.0.0
    // That should allow `1.2.3-pr.2` to pass.
    // However, `1.2.4-alpha.notready` should NOT be allowed,
    // even though it's within the range set by the comparators.
    for (i = 0; i < set.length; i++) {
      debug(set[i].semver)
      if (set[i].semver === ANY) {
        continue
      }

      if (set[i].semver.prerelease.length > 0) {
        var allowed = set[i].semver
        if (allowed.major === version.major &&
            allowed.minor === version.minor &&
            allowed.patch === version.patch) {
          return true
        }
      }
    }

    // Version has a -pre, but it's not one of the ones we like.
    return false
  }

  return true
}

exports.satisfies = satisfies
function satisfies (version, range, options) {
  try {
    range = new Range(range, options)
  } catch (er) {
    return false
  }
  return range.test(version)
}

exports.maxSatisfying = maxSatisfying
function maxSatisfying (versions, range, options) {
  var max = null
  var maxSV = null
  try {
    var rangeObj = new Range(range, options)
  } catch (er) {
    return null
  }
  versions.forEach(function (v) {
    if (rangeObj.test(v)) {
      // satisfies(v, range, options)
      if (!max || maxSV.compare(v) === -1) {
        // compare(max, v, true)
        max = v
        maxSV = new SemVer(max, options)
      }
    }
  })
  return max
}

exports.minSatisfying = minSatisfying
function minSatisfying (versions, range, options) {
  var min = null
  var minSV = null
  try {
    var rangeObj = new Range(range, options)
  } catch (er) {
    return null
  }
  versions.forEach(function (v) {
    if (rangeObj.test(v)) {
      // satisfies(v, range, options)
      if (!min || minSV.compare(v) === 1) {
        // compare(min, v, true)
        min = v
        minSV = new SemVer(min, options)
      }
    }
  })
  return min
}

exports.minVersion = minVersion
function minVersion (range, loose) {
  range = new Range(range, loose)

  var minver = new SemVer('0.0.0')
  if (range.test(minver)) {
    return minver
  }

  minver = new SemVer('0.0.0-0')
  if (range.test(minver)) {
    return minver
  }

  minver = null
  for (var i = 0; i < range.set.length; ++i) {
    var comparators = range.set[i]

    comparators.forEach(function (comparator) {
      // Clone to avoid manipulating the comparator's semver object.
      var compver = new SemVer(comparator.semver.version)
      switch (comparator.operator) {
        case '>':
          if (compver.prerelease.length === 0) {
            compver.patch++
          } else {
            compver.prerelease.push(0)
          }
          compver.raw = compver.format()
          /* fallthrough */
        case '':
        case '>=':
          if (!minver || gt(minver, compver)) {
            minver = compver
          }
          break
        case '<':
        case '<=':
          /* Ignore maximum versions */
          break
        /* istanbul ignore next */
        default:
          throw new Error('Unexpected operation: ' + comparator.operator)
      }
    })
  }

  if (minver && range.test(minver)) {
    return minver
  }

  return null
}

exports.validRange = validRange
function validRange (range, options) {
  try {
    // Return '*' instead of '' so that truthiness works.
    // This will throw if it's invalid anyway
    return new Range(range, options).range || '*'
  } catch (er) {
    return null
  }
}

// Determine if version is less than all the versions possible in the range
exports.ltr = ltr
function ltr (version, range, options) {
  return outside(version, range, '<', options)
}

// Determine if version is greater than all the versions possible in the range.
exports.gtr = gtr
function gtr (version, range, options) {
  return outside(version, range, '>', options)
}

exports.outside = outside
function outside (version, range, hilo, options) {
  version = new SemVer(version, options)
  range = new Range(range, options)

  var gtfn, ltefn, ltfn, comp, ecomp
  switch (hilo) {
    case '>':
      gtfn = gt
      ltefn = lte
      ltfn = lt
      comp = '>'
      ecomp = '>='
      break
    case '<':
      gtfn = lt
      ltefn = gte
      ltfn = gt
      comp = '<'
      ecomp = '<='
      break
    default:
      throw new TypeError('Must provide a hilo val of "<" or ">"')
  }

  // If it satisifes the range it is not outside
  if (satisfies(version, range, options)) {
    return false
  }

  // From now on, variable terms are as if we're in "gtr" mode.
  // but note that everything is flipped for the "ltr" function.

  for (var i = 0; i < range.set.length; ++i) {
    var comparators = range.set[i]

    var high = null
    var low = null

    comparators.forEach(function (comparator) {
      if (comparator.semver === ANY) {
        comparator = new Comparator('>=0.0.0')
      }
      high = high || comparator
      low = low || comparator
      if (gtfn(comparator.semver, high.semver, options)) {
        high = comparator
      } else if (ltfn(comparator.semver, low.semver, options)) {
        low = comparator
      }
    })

    // If the edge version comparator has a operator then our version
    // isn't outside it
    if (high.operator === comp || high.operator === ecomp) {
      return false
    }

    // If the lowest version comparator has an operator and our version
    // is less than it then it isn't higher than the range
    if ((!low.operator || low.operator === comp) &&
        ltefn(version, low.semver)) {
      return false
    } else if (low.operator === ecomp && ltfn(version, low.semver)) {
      return false
    }
  }
  return true
}

exports.prerelease = prerelease
function prerelease (version, options) {
  var parsed = parse(version, options)
  return (parsed && parsed.prerelease.length) ? parsed.prerelease : null
}

exports.intersects = intersects
function intersects (r1, r2, options) {
  r1 = new Range(r1, options)
  r2 = new Range(r2, options)
  return r1.intersects(r2)
}

exports.coerce = coerce
function coerce (version, options) {
  if (version instanceof SemVer) {
    return version
  }

  if (typeof version === 'number') {
    version = String(version)
  }

  if (typeof version !== 'string') {
    return null
  }

  options = options || {}

  var match = null
  if (!options.rtl) {
    match = version.match(re[t.COERCE])
  } else {
    // Find the right-most coercible string that does not share
    // a terminus with a more left-ward coercible string.
    // Eg, '1.2.3.4' wants to coerce '2.3.4', not '3.4' or '4'
    //
    // Walk through the string checking with a /g regexp
    // Manually set the index so as to pick up overlapping matches.
    // Stop when we get a match that ends at the string end, since no
    // coercible string can be more right-ward without the same terminus.
    var next
    while ((next = re[t.COERCERTL].exec(version)) &&
      (!match || match.index + match[0].length !== version.length)
    ) {
      if (!match ||
          next.index + next[0].length !== match.index + match[0].length) {
        match = next
      }
      re[t.COERCERTL].lastIndex = next.index + next[1].length + next[2].length
    }
    // leave it in a clean state
    re[t.COERCERTL].lastIndex = -1
  }

  if (match === null) {
    return null
  }

  return parse(match[2] +
    '.' + (match[3] || '0') +
    '.' + (match[4] || '0'), options)
}


/***/ })

}]);