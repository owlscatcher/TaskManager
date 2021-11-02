const { environment } = require('@rails/webpacker')

module.exports = environment

// Disable processing
environment.loaders.delete('nodeModules');