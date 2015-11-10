include_recipe 'deploy'
deploy 'private_repo' do
  repo 'https://github.com/jackiefong/cookbook.git'
  deploy_to '/tmp/private_code'
  symlink_before_migrate.clear
  create_dirs_before_symlink.clear
  purge_before_symlink.clear
  symlinks.clear
  action :deploy
end
