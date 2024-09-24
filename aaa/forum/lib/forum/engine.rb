module Forum
  class Engine < ::Rails::Engine
    initializer :append_migrations do |app|
      append_engine_paths("db/migrate", app)
    end

    private

    def append_engine_paths(type, app)
      return if app.root.to_s.match root.to_s

      config.paths[type].expanded.each do |expanded_path|
        app.config.paths[type] << expanded_path
      end
    end
  end
end
