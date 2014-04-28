class CreateMonimonisTable < ActiveRecord::Migration
   def self.up
     create_table :monimonis
     Monimoni::Model.find_or_create_by(:id => 1)
  end

  def self.down
    drop_table :monimonis
  end
end
