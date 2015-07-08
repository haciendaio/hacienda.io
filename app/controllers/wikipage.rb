require_relative '../stores/hacienda_store'
module Hacienda
  class Wikipage

    def initialize(app, id)
      @id = id
      @app = app
    end

    def render_page
      wikipage = HaciendaStore.new("http://46.101.129.98:81").get_public_item("wiki", @id)
      @app.slim :wikipage, locals: wikipage
    end

  end
end
