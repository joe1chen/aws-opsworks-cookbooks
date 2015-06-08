require 'minitest/spec'

describe_recipe 'deploy2::rails-restart' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

end
