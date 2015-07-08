module Hacienda
  class Homepage

    def initialize(app)
      @app = app
    end

    def render_page
      homepage_data = HaciendaStore.new("http://46.101.129.98:81").get_public_item("pages", "home")
      @app.slim :homepage, locals: homepage_data
    end

  end
end
