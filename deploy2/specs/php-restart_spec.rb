require 'minitest/spec'

describe_recipe 'deploy2::php-restart' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'restarts apache'
end
