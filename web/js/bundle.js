(self["webpackChunkgfp"] = self["webpackChunkgfp"] || []).push([["/js/bundle"],{

/***/ "./src/scripts/main.js":
/*!*****************************!*\
  !*** ./src/scripts/main.js ***!
  \*****************************/
/***/ (() => {

function _typeof(obj) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (obj) { return typeof obj; } : function (obj) { return obj && "function" == typeof Symbol && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }, _typeof(obj); }
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }
function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, _toPropertyKey(descriptor.key), descriptor); } }
function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }
function _toPropertyKey(arg) { var key = _toPrimitive(arg, "string"); return _typeof(key) === "symbol" ? key : String(key); }
function _toPrimitive(input, hint) { if (_typeof(input) !== "object" || input === null) return input; var prim = input[Symbol.toPrimitive]; if (prim !== undefined) { var res = prim.call(input, hint || "default"); if (_typeof(res) !== "object") return res; throw new TypeError("@@toPrimitive must return a primitive value."); } return (hint === "string" ? String : Number)(input); }
var App = /*#__PURE__*/function () {
  function App() {
    _classCallCheck(this, App);
    this.header = document.querySelector('.header');
    this.body = document.querySelector('body');
    this.blobs = document.querySelectorAll('.blob');
    this.mobileMenu = document.querySelector('.header-mobile');
    this.mobileMenuBtn = document.querySelector('.header-mobile__button');
    this.content = document.querySelector('.content-wrapper');
    this.footer = document.querySelector('.footer-wrapper');
    this.loader = document.querySelector('.loader');
    this.bindGlobalEvents();
  }
  _createClass(App, [{
    key: "bindGlobalEvents",
    value: function bindGlobalEvents() {
      window.addEventListener('load', this.turnOffLoader.bind(this));
      // window.addEventListener('scroll', this.trackScroll.bind(this));

      if (window.innerWidth > 1024) {
        document.addEventListener('mousemove', this.mouseListener.bind(this));
      }
      this.mobileMenuBtn.addEventListener('click', this.toggleMenu.bind(this));
    }
  }, {
    key: "turnOffLoader",
    value: function turnOffLoader() {
      this.loader.parentNode.removeChild(this.loader);
      this.content.style.display = 'block';
      for (var i = 0; i < this.blobs.length; i++) {
        this.blobs[i].style.opacity = '0.55';
      }
      if (this.footer) {
        this.footer.classList.add('show');
      }
    }
  }, {
    key: "toggleMenu",
    value: function toggleMenu() {
      this.body.classList.toggle('no-scroll');
      this.mobileMenuBtn.classList.toggle('active');
      this.mobileMenu.classList.toggle('active');
    }
  }, {
    key: "trackScroll",
    value: function trackScroll() {
      var offset = window.pageYOffset;
      if (offset > 0) {
        this.header.classList.add('scroll');
      } else {
        this.header.classList.remove('scroll');
      }
    }
  }, {
    key: "mouseListener",
    value: function mouseListener(e) {
      var xFactor = e.clientX * 0.05;
      this.blobs[0].style.transform = 'translate3d(' + parseInt(xFactor * 0.4) + 'px, ' + parseInt(xFactor * -1.5) + 'px, 0)';
      this.blobs[1].style.transform = 'translate3d(' + parseInt(xFactor * -2) + 'px, ' + parseInt(xFactor * -1.5) + 'px, 0)';
      this.blobs[2].style.transform = 'translate3d(' + parseInt(xFactor * -0.4) + 'px, ' + parseInt(xFactor) + 'px, 0)';
      this.blobs[3].style.transform = 'translate3d(' + parseInt(xFactor * -0.6) + 'px, ' + parseInt(xFactor * 0.3) + 'px, 0)';
      this.blobs[4].style.transform = 'translate3d(' + parseInt(xFactor * 1.6) + 'px, ' + parseInt(xFactor * -1.2) + 'px, 0)';
      this.blobs[5].style.transform = 'translate3d(' + parseInt(xFactor * 2) + 'px, ' + parseInt(xFactor * -1) + 'px, 0)';
      this.blobs[6].style.transform = 'translate3d(' + parseInt(xFactor * 1.2) + 'px, ' + parseInt(xFactor * 0.5) + 'px, 0)';
    }
  }]);
  return App;
}();
new App();

/***/ }),

/***/ "./src/styles/app.scss":
/*!*****************************!*\
  !*** ./src/styles/app.scss ***!
  \*****************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin

<<<<<<< HEAD
=======
eval("class App {\n\n\tconstructor() {\n\t\tthis.header = document.querySelector('.header');\n    this.body = document.querySelector('body');\n\n\t\tthis.blobs = document.querySelectorAll('.blob');\n\n\t\tthis.nav = document.querySelector('.header-right__nav');\n\n\t\tthis.mobileMenu = document.querySelector('.header-mobile');\n\t\tthis.mobileMenuBtn = document.querySelector('.header-mobile__button');\n\n\t\tthis.mobileMenuLists = document.querySelectorAll('.header-mobile__nav .nav-link.primary');\n\t\tthis.mobileMenuGroups = document.querySelectorAll('.header-mobile__nav .nav-link-group');\n\n    this.content = document.querySelector('.content-wrapper');\n\n\t\tthis.videoLockups = document.querySelectorAll('.content-lockup.video')\n\t\tthis.videoCopys = document.querySelectorAll('.content-lockup__copy')\n\n\t\tthis.footer = document.querySelector('.footer-wrapper')\n\t\tthis.loader = document.querySelector('.loader');\n\n\t\tthis.bindGlobalEvents();\n\t}\n\n\tbindGlobalEvents() {\n\t\twindow.addEventListener('load', this.turnOffLoader.bind(this));\n\n\t\tif (window.innerWidth > 850) {\n\t\t\tif (window.location.pathname == '/') {\n\t\t\t\tthis.content.style.marginTop = this.header.offsetHeight - 1 + \"px\";\n\t\t\t} else {\n\t\t\t\tthis.content.style.marginTop = this.header.offsetHeight + 70 + \"px\";\n\t\t\t}\n\n\t\t\twindow.addEventListener('scroll', this.trackScroll.bind(this));\n\t\t\tdocument.addEventListener('mousemove', this.mouseListener.bind(this));\n\t\t}\n\n\t\tthis.mobileMenuBtn.addEventListener('click', this.toggleMenu.bind(this));\n\n\t\tfor (const list of this.mobileMenuLists) {\n\t\t\tlist.addEventListener('click', this.toggleMobileGroups.bind(this));\n\t\t}\n\n\t\tfor (const lockup of this.videoLockups) {\n\t\t\tlockup.addEventListener('click', this.toggleVideoCopy.bind(this));\n\t\t}\n\t}\n\n\tturnOffLoader() {\n\t\tthis.loader.parentNode.removeChild(this.loader);\n\t\tthis.content.style.display = 'block';\n\n\t\tfor (let i = 0; i < this.blobs.length; i++) {\n\t\t\tthis.blobs[i].style.opacity = '0.55';\n\t\t}\n\n\t\tif (this.footer) {\n\t\t\tthis.footer.classList.add('show');\n\t\t}\n\t}\n\n\ttoggleMenu() {\n    this.body.classList.toggle('no-scroll');\n    this.mobileMenuBtn.classList.toggle('active');\n    this.mobileMenu.classList.toggle('active');\n  }\n\n\ttoggleMobileGroups(e) {\n\t\tif (e.target.parentNode.classList.contains('active')) {\n\t\t\te.target.parentNode.classList.remove('active');\n\t\t} else {\n\t\t\te.target.parentNode.classList.add('active');\n\t\t}\n\t}\n\n\ttrackScroll() {\n\t\tlet offset = window.pageYOffset;\n\n\t\tif (offset > 150) {\n\t\t\tthis.header.classList.add('scroll');\n\t\t} else {\n\t\t\tthis.header.classList.remove('scroll')\n\t\t}\n\t}\n\n\ttoggleVideoCopy(e) {\n\t\tconst id = e.target.getAttribute('data-id');\n\n\t\tthis.videoCopys.forEach(function (copy, index) {\n\t\t\tif (copy.getAttribute('data-id') == id) {\n\t\t\t\tcopy.classList.add('hidden');\n\t\t\t}\n\t\t});\n\t}\n\n\tmouseListener(e) {\n\t\tlet xFactor = e.clientX * 0.05;\n\n\t\tthis.blobs[0].style.transform = 'translate3d(' + parseInt(xFactor * 0.4) + 'px, ' + parseInt(xFactor * -1.5) + 'px, 0)';\n\t\tthis.blobs[1].style.transform = 'translate3d(' + parseInt(xFactor * -2) + 'px, ' + parseInt(xFactor * -1.5) + 'px, 0)';\n\n\t\tthis.blobs[2].style.transform = 'translate3d(' + parseInt(xFactor * -0.4) + 'px, ' + parseInt(xFactor) + 'px, 0)';\n\t\tthis.blobs[3].style.transform = 'translate3d(' + parseInt(xFactor * -0.6) + 'px, ' + parseInt(xFactor * 0.3) + 'px, 0)';\n\n\t\tthis.blobs[4].style.transform = 'translate3d(' + parseInt(xFactor * 1.6) + 'px, ' + parseInt(xFactor * -1.2) + 'px, 0)';\n\t\tthis.blobs[5].style.transform = 'translate3d(' + parseInt(xFactor * 2) + 'px, ' + parseInt(xFactor * -1) + 'px, 0)';\n\n\t\tthis.blobs[6].style.transform = 'translate3d(' + parseInt(xFactor * 1.2) + 'px, ' + parseInt(xFactor * 0.5) + 'px, 0)';\n\t}\n}\n\nnew App();\n\n\n//# sourceURL=webpack:///./src/scripts/main.js?");
>>>>>>> staging

/***/ })

},
/******/ __webpack_require__ => { // webpackRuntimeModules
/******/ var __webpack_exec__ = (moduleId) => (__webpack_require__(__webpack_require__.s = moduleId))
/******/ __webpack_require__.O(0, ["css/app"], () => (__webpack_exec__("./src/scripts/main.js"), __webpack_exec__("./src/styles/app.scss")));
/******/ var __webpack_exports__ = __webpack_require__.O();
/******/ }
]);