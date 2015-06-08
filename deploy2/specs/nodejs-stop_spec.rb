require 'minitest/spec'

describe_recipe 'deploy2::nodejs-stop' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

end
