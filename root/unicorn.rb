worker_processes 5
preload_app true
timeout 60
listen "127.0.0.101:8080"

after_fork do |server, worker|
  ActiveRecord::Base.establish_connection
end
