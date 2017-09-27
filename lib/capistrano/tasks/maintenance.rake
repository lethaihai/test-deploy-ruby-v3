namespace :maintenance do
  SOURCE_FILE = "maintenance.tmpl"
  DEST_FILE = "public/maintenance.html"

  desc "Enable maintenance mode"
  task :enable do
    on roles(:app) do
      execute "ln -s #{release_path}/#{SOURCE_FILE} #{release_path}/#{DEST_FILE}"
      info "Maintenance mode is enabled"
    end
  end

  desc "Disbale maintenance mode"
  task :disable do
    on roles(:app) do
      execute "rm -f #{release_path}/#{DEST_FILE}"
      info "Maintenance mode is disabled"
    end
  end
end
