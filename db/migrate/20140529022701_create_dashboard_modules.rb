class CreateDashboardModules < ActiveRecord::Migration
  def change
    create_table :dashboard_modules do |t|
      t.string :title

      t.timestamps
    end
  end
end
