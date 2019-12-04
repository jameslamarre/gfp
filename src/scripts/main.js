class App {

	constructor() {
		this.header = document.querySelector('.header');
    this.body = document.querySelector('body');

		this.menuNav = document.querySelector('.header-right__nav');
		this.menuLinks = document.querySelectorAll('.nav-link');

		this.mobileMenu = document.querySelector('.header-mobile');
		this.mobileMenuBtn = document.querySelector('.header-mobile__button');

    this.content = document.querySelector('.content-wrapper');

		this.footer = document.querySelector('.footer-wrapper')
		this.loader = document.querySelector('.loader');

		this.bindGlobalEvents();
	}

	bindGlobalEvents() {
		window.addEventListener('load', this.turnOffLoader.bind(this));

		for (const link of this.menuLinks) {
			link.addEventListener('onmouseenter', this.navHoverIn.bind(this));
			link.addEventListener('onmouseout', this.navHoverOut.bind(this));
		}

		this.mobileMenuBtn.addEventListener('click', this.toggleMenu.bind(this));
	}

	turnOffLoader() {
		this.loader.parentNode.removeChild(this.loader);
		this.content.style.display = 'block';

		if (this.footer) {
			this.footer.classList.add('show');
		}
	}

	toggleMenu() {
    this.body.classList.toggle('no-scroll');
    this.mobileMenuBtn.classList.toggle('active');
    this.mobileMenu.classList.toggle('active');
  }

	navHoverIn(e) {
		console.log('here');
		this.menuNav.classList.add('hover');
		e.target.classList.add('active');
	}

	navHoverOut(e) {
		this.menuNav.classList.remove('hover');
		e.target.classList.remove('active');
	}
}

new App();
