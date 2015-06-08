require 'sinatra/base'
require 'sinatra/assetpack'

module Hacienda
  class Website < Sinatra::Base
    register Sinatra::AssetPack

    assets do

      serve '/css', from: 'views/css'
      serve '/js', from: '../public/js'

      css :screen, '/css/screen.css', %w(/css/animate.min.css /css/gridism.css /css/gridism-tweaks.css /css/hacienda.css)

      js :application, '/js/application.js', ['/js/wow.min.js']

      js_compression :jsmin

    end
  end
end
