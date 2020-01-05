// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// MaterialKit requirements https://dev.to/morinoko/adding-custom-javascript-in-rails-6-1ke6
require('material-kit/core/jquery.min')
require('material-kit/core/popper.min')
require('material-kit/plugins/jquery')
require('material-kit/plugins/nouislider.min')
require('material-kit/core/bootstrap-material-design.min')
require('material-kit/plugins/bootstrap-datetimepicker')
require('material-kit/plugins/moment.min')
require("material-kit/material-kit")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
