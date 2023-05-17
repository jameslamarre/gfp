require("dotenv").config();
const mix = require("laravel-mix");
const tailwindcss = require("tailwindcss");
require("laravel-mix-versionhash");

mix.js(["src/scripts/main.js"], "web/js/bundle.js").extract();

mix
	.sass("src/styles/app.scss", "css/app.css")
	.setPublicPath("web")
	.options({
		processCssUrls: false,
		postCss: [tailwindcss("./tailwind.config.js")],
	});

// Run BrowserSync Locally, off by default
if (!mix.inProduction()) {
	mix.browserSync({
		// Set this to a variable in your .env file containing your local development URL:
		proxy: process.env.PRIMARY_SITE_URL,
		// Watch for any changes in assets/ and templates/ directories:
		files: ["src/**/*", "templates/**/*"],
		notify: false,
	});
}

// Only run in Production
if (mix.inProduction()) {
	mix.versionHash();
}
