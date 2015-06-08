require 'minitest/spec'

describe_recipe 'deploy2::nodejs-rollback' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

end
