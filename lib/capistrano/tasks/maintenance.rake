namespace :maintenance do
  SOURCE_FILE = "maintenance.tmpl"
  DEST_FILE = "public/maintenance.html"

  desc "Enable maintenance mode"
  task :enable do
    on roles(:app) do
      within release_path do
        execute "cp #{SOURCE_FILE} #{DEST_FILE}"
        info "Maintenance mode is enabled"
      end
    end
  end

  desc "Disbale maintenance mode"
  task :disable do
    on roles(:app) do
      within release_path do
        execute "rm #{DEST_FILE}"
        info "Maintenance mode is disabled"
      end
    end
  end
end
