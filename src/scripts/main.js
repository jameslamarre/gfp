class App {

	constructor() {
		this.header = document.querySelector('.header');
    this.body = document.querySelector('body');

    this.content = document.querySelector('.content-wrapper');

		this.footer = document.querySelector('.footer-wrapper')
		this.loader = document.querySelector('.loader');

		this.bindGlobalEvents();
	}

	bindGlobalEvents() {
		window.addEventListener('load', this.turnOffLoader.bind(this));

	}

	turnOffLoader() {
		this.loader.parentNode.removeChild(this.loader);
		this.content.style.display = 'block';

		if (this.footer) {
			this.footer.classList.add('show');
		}
	}
}

new App();
