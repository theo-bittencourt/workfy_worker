namespace :api do
  desc 'API Routes'
  task :routes => :environment do
    API::Root.routes.each do |api|
      method = api.route_method.ljust(10)
      path =
        if api.route_path[':version']
          api.route_path.gsub(":version", api.route_version)
        else
          api.route_path
        end

      puts "     #{method} #{path}"
    end
  end
end
