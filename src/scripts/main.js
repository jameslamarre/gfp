class App {

	constructor() {
		this.header = document.querySelector('.header');
    this.body = document.querySelector('body');

		this.blobs = document.querySelectorAll('.blob');

		this.mobileMenu = document.querySelector('.header-mobile');
		this.mobileMenuBtn = document.querySelector('.header-mobile__button');

    this.content = document.querySelector('.content-wrapper');

		this.footer = document.querySelector('.footer-wrapper')
		this.loader = document.querySelector('.loader');

		this.bindGlobalEvents();
	}

	bindGlobalEvents() {
		window.addEventListener('load', this.turnOffLoader.bind(this));
		// window.addEventListener('scroll', this.trackScroll.bind(this));

		if (window.innerWidth > 1024) {
			document.addEventListener('mousemove', this.mouseListener.bind(this));
		}

		this.mobileMenuBtn.addEventListener('click', this.toggleMenu.bind(this));
	}

	turnOffLoader() {
		this.loader.parentNode.removeChild(this.loader);
		this.content.style.display = 'block';

		for (let i = 0; i < this.blobs.length; i++) {
			this.blobs[i].style.opacity = '0.55';
		}

		if (this.footer) {
			this.footer.classList.add('show');
		}
	}

	toggleMenu() {
    this.body.classList.toggle('no-scroll');
    this.mobileMenuBtn.classList.toggle('active');
    this.mobileMenu.classList.toggle('active');
  }

	trackScroll() {
		let offset = window.pageYOffset;
		if (offset > 0) {
			this.header.classList.add('scroll');
		} else {
			this.header.classList.remove('scroll')
		}
	}

	mouseListener(e) {
		let xFactor = e.clientX * 0.05;

		this.blobs[0].style.transform = 'translate3d(' + parseInt(xFactor * 0.4) + 'px, ' + parseInt(xFactor * -1.5) + 'px, 0)';
		this.blobs[1].style.transform = 'translate3d(' + parseInt(xFactor * -2) + 'px, ' + parseInt(xFactor * -1.5) + 'px, 0)';

		this.blobs[2].style.transform = 'translate3d(' + parseInt(xFactor * -0.4) + 'px, ' + parseInt(xFactor) + 'px, 0)';
		this.blobs[3].style.transform = 'translate3d(' + parseInt(xFactor * -0.6) + 'px, ' + parseInt(xFactor * 0.3) + 'px, 0)';

		this.blobs[4].style.transform = 'translate3d(' + parseInt(xFactor * 1.6) + 'px, ' + parseInt(xFactor * -1.2) + 'px, 0)';
		this.blobs[5].style.transform = 'translate3d(' + parseInt(xFactor * 2) + 'px, ' + parseInt(xFactor * -1) + 'px, 0)';

		this.blobs[6].style.transform = 'translate3d(' + parseInt(xFactor * 1.2) + 'px, ' + parseInt(xFactor * 0.5) + 'px, 0)';
	}
}

new App();
