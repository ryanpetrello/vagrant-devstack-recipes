apt_package "zsh" do
  action :upgrade
end

execute "echo vagrant | chsh -s $(which zsh)" do
  user node[:devstack][:user]
end
