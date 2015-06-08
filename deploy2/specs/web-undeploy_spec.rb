require 'minitest/spec'

describe_recipe 'deploy2::web-undeploy' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

end
