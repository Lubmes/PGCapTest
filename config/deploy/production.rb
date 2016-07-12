set :stage, :production
set :branch, "master"

# This is used in the Nginx VirtualHost to specify which domains
# the app should appear on. If you don't yet have DSN setup you'll
# need to create entries in your local hosts file for testing. 
set :server_name, "www.lubmes.xyz lubmes.xyz"

# Used in case we are deploying multiple versions of the same
# app side by side. Also provides quick sanity checks when looking
# at file paths. 
set :full_app_name, "#{fetch(:application)}_#{fetch(:stage)}"

server 'lubmes.xyz', user: 'deploy', roles: %w{web app db}, primary: true #KAN OOK IP ZIJN IPV URL

set :deploy_to, "/home/#{fetch(:deploy_user)}/apps/#{fetch(:full_app_name)}"

# Don't try and infere something as important as environment from
# stage name.
set :rails_env, :production

# Number of unicorn workers, this will be reflected in 
# the unicorn.rb and the monit configs.
set :unicorn_worker_count, 5

# Wether we are using SSL or not, used for building the nginx
# config file
set :enable_ssl, false


# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

role :app, %w{deploy@example.com}
role :web, %w{deploy@example.com}
role :db,  %w{deploy@example.com}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server 'example.com', user: 'deploy', roles: %w{web app}, my_property: :my_value


# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
