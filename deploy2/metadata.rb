name        "deploy2"
description "Deploy applications"
maintainer  "AWS OpsWorks"
license     "Apache 2.0"
version     "1.0.0"

depends "dependencies"
depends "scm_helper"
depends "apache2"
depends "mod_php5_apache2"
depends "nginx"
depends "ssh_users"
depends "opsworks_agent_monit"
depends "passenger_apache2"
depends "unicorn"
depends "puma"
depends "opsworks_java"
depends "php"
depends "mysql"
depends "opsworks_nodejs"
depends "opsworks_aws_flow_ruby"

recipe "deploy2::aws-flow-ruby", "Deploy an AWS Flow Ruby application"
recipe "deploy2::rails", "Deploy a Rails application"
recipe "deploy2::php", "Deploy a PHP application"
recipe "deploy2::rails-undeploy", "Remove a Rails application"
recipe "deploy2::mysql", "Create the MySQL database for an app"
recipe "deploy2::java", "Deploy a Java application"
