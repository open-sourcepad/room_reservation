# config valid only for current version of Capistrano
lock "3.7.2"

set :application, 'room_reservation'
set :repo_url, 'git@github.com:open-sourcepad/room_reservation.git'
set :branch, 'master'

set :deploy_to, '/home/deploy/app'
set :user,      'deploy'
set :stage,     :production

set :keep_releases, 1

set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs,  %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
