require 'sinatra/config_file'

TWENTY_FOUR_HOURS = 60 * 60 * 24

module Hacienda
  class Website < Sinatra::Base

    register Sinatra::ConfigFile
    config_file Pathname.new(File.dirname(__FILE__)).parent.join('config/config.yml').to_s

    set :public_folder, File.join(Pathname.new(File.dirname(__FILE__)).parent, 'public')
    set :static_cache_control, [:public, max_age: TWENTY_FOUR_HOURS]

  end
end
