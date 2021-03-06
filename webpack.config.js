var path = require('path');
var webpack = require('webpack');
var src = path.join(__dirname, 'src/scripts');
var plugins = [ new webpack.NoEmitOnErrorsPlugin() ];
var PROD = JSON.parse(process.env.ENV_PROD || 0);
var env = {
  prod : PROD
};

var plugins = [
  new webpack.NoEmitOnErrorsPlugin()
];

var filename = 'bundle.js';

if( PROD ){
  filename = 'bundle.min.js';
  mode = 'production',
  console.log('\n ---- WEBPACK ----\n \n running in production \n');
} else{
  mode = 'development',
  console.log('\n ---- WEBPACK ---- \n \n running in development \n');
}

// plugins.push( new webpack.ProvidePlugin({
//   gsap        : 'gsap'
// }));

module.exports = {
  entry: src + '/main.js',
  mode: mode,

  output: {
    filename: filename,
    path: path.resolve(__dirname, 'web/js')
  },

  node: {
    fs: 'empty'
  },

  plugins: plugins,

  stats: {
    colors: true
  }
};
