(self["webpackChunkgfp"] = self["webpackChunkgfp"] || []).push([["/js/bundle"],{

/***/ "./src/scripts/main.js":
/*!*****************************!*\
  !*** ./src/scripts/main.js ***!
  \*****************************/
/***/ (() => {

function _typeof(obj) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (obj) { return typeof obj; } : function (obj) { return obj && "function" == typeof Symbol && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }, _typeof(obj); }
function _createForOfIteratorHelper(o, allowArrayLike) { var it = typeof Symbol !== "undefined" && o[Symbol.iterator] || o["@@iterator"]; if (!it) { if (Array.isArray(o) || (it = _unsupportedIterableToArray(o)) || allowArrayLike && o && typeof o.length === "number") { if (it) o = it; var i = 0; var F = function F() {}; return { s: F, n: function n() { if (i >= o.length) return { done: true }; return { done: false, value: o[i++] }; }, e: function e(_e) { throw _e; }, f: F }; } throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); } var normalCompletion = true, didErr = false, err; return { s: function s() { it = it.call(o); }, n: function n() { var step = it.next(); normalCompletion = step.done; return step; }, e: function e(_e2) { didErr = true; err = _e2; }, f: function f() { try { if (!normalCompletion && it["return"] != null) it["return"](); } finally { if (didErr) throw err; } } }; }
function _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === "string") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === "Object" && o.constructor) n = o.constructor.name; if (n === "Map" || n === "Set") return Array.from(o); if (n === "Arguments" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }
function _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) arr2[i] = arr[i]; return arr2; }
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }
function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, _toPropertyKey(descriptor.key), descriptor); } }
function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }
function _toPropertyKey(arg) { var key = _toPrimitive(arg, "string"); return _typeof(key) === "symbol" ? key : String(key); }
function _toPrimitive(input, hint) { if (_typeof(input) !== "object" || input === null) return input; var prim = input[Symbol.toPrimitive]; if (prim !== undefined) { var res = prim.call(input, hint || "default"); if (_typeof(res) !== "object") return res; throw new TypeError("@@toPrimitive must return a primitive value."); } return (hint === "string" ? String : Number)(input); }
var App = /*#__PURE__*/function () {
  function App() {
    _classCallCheck(this, App);
    this.header = document.querySelector(".header");
    this.body = document.querySelector("body");
    this.blobs = document.querySelectorAll(".blob");
    this.nav = document.querySelector(".header-right__nav");
    this.mobileMenu = document.querySelector(".header-mobile");
    this.mobileMenuBtn = document.querySelector(".header-mobile__button");
    this.mobileMenuLists = document.querySelectorAll(".header-mobile__nav .nav-link.primary");
    this.mobileMenuGroups = document.querySelectorAll(".header-mobile__nav .nav-link-group");
    this.content = document.querySelector(".content-wrapper");
    this.videoLockups = document.querySelectorAll(".content-lockup.video");
    this.videoCopys = document.querySelectorAll(".content-lockup__copy");
    this.footer = document.querySelector(".footer-wrapper");
    this.loader = document.querySelector(".loader");
    this.bindGlobalEvents();
  }
  _createClass(App, [{
    key: "bindGlobalEvents",
    value: function bindGlobalEvents() {
      window.addEventListener("load", this.turnOffLoader.bind(this));
      if (window.innerWidth > 850) {
        if (window.location.pathname == "/") {
          this.content.style.marginTop = this.header.offsetHeight - 1 + "px";
        } else {
          this.content.style.marginTop = this.header.offsetHeight + 70 + "px";
        }
        window.addEventListener("scroll", this.trackScroll.bind(this));
        document.addEventListener("mousemove", this.mouseListener.bind(this));
      }
      this.mobileMenuBtn.addEventListener("click", this.toggleMenu.bind(this));
      var _iterator = _createForOfIteratorHelper(this.mobileMenuLists),
        _step;
      try {
        for (_iterator.s(); !(_step = _iterator.n()).done;) {
          var list = _step.value;
          list.addEventListener("click", this.toggleMobileGroups.bind(this));
        }
      } catch (err) {
        _iterator.e(err);
      } finally {
        _iterator.f();
      }
      var _iterator2 = _createForOfIteratorHelper(this.videoLockups),
        _step2;
      try {
        for (_iterator2.s(); !(_step2 = _iterator2.n()).done;) {
          var lockup = _step2.value;
          lockup.addEventListener("click", this.toggleVideoCopy.bind(this));
        }
      } catch (err) {
        _iterator2.e(err);
      } finally {
        _iterator2.f();
      }
    }
  }, {
    key: "turnOffLoader",
    value: function turnOffLoader() {
      this.loader.parentNode.removeChild(this.loader);
      this.content.style.display = "block";
      for (var i = 0; i < this.blobs.length; i++) {
        this.blobs[i].style.opacity = "0.55";
      }
      if (this.footer) {
        this.footer.classList.add("show");
      }
    }
  }, {
    key: "toggleMenu",
    value: function toggleMenu() {
      this.body.classList.toggle("no-scroll");
      this.mobileMenuBtn.classList.toggle("active");
      this.mobileMenu.classList.toggle("active");
    }
  }, {
    key: "toggleMobileGroups",
    value: function toggleMobileGroups(e) {
      if (e.target.parentNode.classList.contains("active")) {
        e.target.parentNode.classList.remove("active");
      } else {
        e.target.parentNode.classList.add("active");
      }
    }
  }, {
    key: "trackScroll",
    value: function trackScroll() {
      console.log("trackScroll");
      var offset = window.pageYOffset;
      if (offset > 150) {
        this.header.classList.add("scroll");
      } else {
        this.header.classList.remove("scroll");
      }
    }
  }, {
    key: "toggleVideoCopy",
    value: function toggleVideoCopy(e) {
      var id = e.target.getAttribute("data-id");
      this.videoCopys.forEach(function (copy, index) {
        if (copy.getAttribute("data-id") == id) {
          copy.classList.add("hidden");
        }
      });
    }
  }, {
    key: "mouseListener",
    value: function mouseListener(e) {
      var xFactor = e.clientX * 0.05;
      this.blobs[0].style.transform = "translate3d(" + parseInt(xFactor * 0.4) + "px, " + parseInt(xFactor * -1.5) + "px, 0)";
      this.blobs[1].style.transform = "translate3d(" + parseInt(xFactor * -2) + "px, " + parseInt(xFactor * -1.5) + "px, 0)";
      this.blobs[2].style.transform = "translate3d(" + parseInt(xFactor * -0.4) + "px, " + parseInt(xFactor) + "px, 0)";
      this.blobs[3].style.transform = "translate3d(" + parseInt(xFactor * -0.6) + "px, " + parseInt(xFactor * 0.3) + "px, 0)";
      this.blobs[4].style.transform = "translate3d(" + parseInt(xFactor * 1.6) + "px, " + parseInt(xFactor * -1.2) + "px, 0)";
      this.blobs[5].style.transform = "translate3d(" + parseInt(xFactor * 2) + "px, " + parseInt(xFactor * -1) + "px, 0)";
      this.blobs[6].style.transform = "translate3d(" + parseInt(xFactor * 1.2) + "px, " + parseInt(xFactor * 0.5) + "px, 0)";
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


/***/ })

},
/******/ __webpack_require__ => { // webpackRuntimeModules
/******/ var __webpack_exec__ = (moduleId) => (__webpack_require__(__webpack_require__.s = moduleId))
/******/ __webpack_require__.O(0, ["css/app"], () => (__webpack_exec__("./src/scripts/main.js"), __webpack_exec__("./src/styles/app.scss")));
/******/ var __webpack_exports__ = __webpack_require__.O();
/******/ }
]);