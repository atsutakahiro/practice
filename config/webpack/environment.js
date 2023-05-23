const { environment } = require('@rails/webpacker')

module.exports = environment
environment.config.merge({
  resolve: {
      fallback: {
          dgram: false,
          fs: false,
          net: false,
          tls: false,
          child_process: false
      }
  }
});
