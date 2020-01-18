/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./src/scripts/main.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./src/scripts/main.js":
/*!*****************************!*\
  !*** ./src/scripts/main.js ***!
  \*****************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("class App {\n\n\tconstructor() {\n\t\tthis.header = document.querySelector('.header');\n    this.body = document.querySelector('body');\n\n\t\tthis.blobs = document.querySelectorAll('.blob');\n\n\t\tthis.nav = document.querySelector('.header-right__nav');\n\n\t\tthis.mobileMenu = document.querySelector('.header-mobile');\n\t\tthis.mobileMenuBtn = document.querySelector('.header-mobile__button');\n\n\t\tthis.mobileMenuLists = document.querySelectorAll('.header-mobile__nav .nav-link.primary');\n\t\tthis.mobileMenuGroups = document.querySelectorAll('.header-mobile__nav .nav-link-group');\n\n    this.content = document.querySelector('.content-wrapper');\n\n\t\tthis.footer = document.querySelector('.footer-wrapper')\n\t\tthis.loader = document.querySelector('.loader');\n\n\t\tthis.bindGlobalEvents();\n\t}\n\n\tbindGlobalEvents() {\n\t\twindow.addEventListener('load', this.turnOffLoader.bind(this));\n\n\n\t\tif (window.innerWidth > 1024) {\n\t\t\tthis.content.style.marginTop = this.header.offsetHeight + 70 + \"px\";\n\t\t\twindow.addEventListener('scroll', this.trackScroll.bind(this));\n\t\t\tdocument.addEventListener('mousemove', this.mouseListener.bind(this));\n\t\t}\n\n\t\tthis.mobileMenuBtn.addEventListener('click', this.toggleMenu.bind(this));\n\n\t\tfor (const list of this.mobileMenuLists) {\n\t\t\tlist.addEventListener('click', this.toggleMobileGroups.bind(this));\n\t\t}\n\t}\n\n\tturnOffLoader() {\n\t\tthis.loader.parentNode.removeChild(this.loader);\n\t\tthis.content.style.display = 'block';\n\n\t\tfor (let i = 0; i < this.blobs.length; i++) {\n\t\t\tthis.blobs[i].style.opacity = '0.55';\n\t\t}\n\n\t\tif (this.footer) {\n\t\t\tthis.footer.classList.add('show');\n\t\t}\n\t}\n\n\ttoggleMenu() {\n    this.body.classList.toggle('no-scroll');\n    this.mobileMenuBtn.classList.toggle('active');\n    this.mobileMenu.classList.toggle('active');\n  }\n\n\ttoggleMobileGroups(e) {\n\t\tthis.mobileMenuGroups.forEach(function (group, index) {\n\t\t\tif (group.parentNode.classList.contains('active')) {\n\t\t\t\tgroup.parentNode.classList.remove('active');\n\t\t\t}\n\t\t});\n\n\t\te.target.parentNode.classList.add('active');\n\t}\n\n\ttrackScroll() {\n\t\tlet offset = window.pageYOffset;\n\n\t\tif (offset > 150) {\n\t\t\tthis.header.classList.add('scroll');\n\t\t} else {\n\t\t\tthis.header.classList.remove('scroll')\n\t\t}\n\t}\n\n\tmouseListener(e) {\n\t\tlet xFactor = e.clientX * 0.05;\n\n\t\tthis.blobs[0].style.transform = 'translate3d(' + parseInt(xFactor * 0.4) + 'px, ' + parseInt(xFactor * -1.5) + 'px, 0)';\n\t\tthis.blobs[1].style.transform = 'translate3d(' + parseInt(xFactor * -2) + 'px, ' + parseInt(xFactor * -1.5) + 'px, 0)';\n\n\t\tthis.blobs[2].style.transform = 'translate3d(' + parseInt(xFactor * -0.4) + 'px, ' + parseInt(xFactor) + 'px, 0)';\n\t\tthis.blobs[3].style.transform = 'translate3d(' + parseInt(xFactor * -0.6) + 'px, ' + parseInt(xFactor * 0.3) + 'px, 0)';\n\n\t\tthis.blobs[4].style.transform = 'translate3d(' + parseInt(xFactor * 1.6) + 'px, ' + parseInt(xFactor * -1.2) + 'px, 0)';\n\t\tthis.blobs[5].style.transform = 'translate3d(' + parseInt(xFactor * 2) + 'px, ' + parseInt(xFactor * -1) + 'px, 0)';\n\n\t\tthis.blobs[6].style.transform = 'translate3d(' + parseInt(xFactor * 1.2) + 'px, ' + parseInt(xFactor * 0.5) + 'px, 0)';\n\t}\n}\n\nnew App();\n\n\n//# sourceURL=webpack:///./src/scripts/main.js?");

/***/ })

/******/ });