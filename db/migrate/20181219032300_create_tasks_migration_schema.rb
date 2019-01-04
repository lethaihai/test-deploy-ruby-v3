class CreateTasksMigrationSchema < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks_migration_schema, id: false do |t|
      t.string :version, primary_key: true
    end
  end
end
