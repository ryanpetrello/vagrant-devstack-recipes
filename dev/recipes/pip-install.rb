apt_package "python-pip" do
  action :upgrade
end

node[:devstack][:pip][:installs].each do |p|
  execute "sudo pip install "+p do
    user node[:devstack][:user]
  end
end
