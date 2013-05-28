require 'rails/generators'

module Monimoni
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    include Rails::Generators::Migration

    desc "Monimoni installation generator"

    def self.next_migration_number(dirname)
      if ActiveRecord::Base.timestamped_migrations
        migration_number = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        migration_number += 1
        migration_number.to_s
      else
        "%.3d" % (current_migration_number(dirname) + 1)
      end
    end

    def install
      routes = File.open(Rails.root.join("config/routes.rb")).try :read

      gsub_file "config/routes.rb", /mount Monimoni::Engine => \'\/.+\', :as => \'monimoni\'/, ''
      route("mount Monimoni::Engine => '/monimoni', :as => 'monimoni'")

      migration_template 'migration.rb', 'db/migrate/create_monimonis_table.rb'
    end
  end
end
