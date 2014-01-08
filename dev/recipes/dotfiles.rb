apt_package "git" do
  action :upgrade
end

execute "git init && git remote add origin https://github.com/ryanpetrello/dotfiles.git && git pull origin master" do
  cwd node[:devstack][:dir]
  user node[:devstack][:user]
  group node[:devstack][:group]
end
