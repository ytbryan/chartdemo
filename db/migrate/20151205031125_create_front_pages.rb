class CreateFrontPages < ActiveRecord::Migration
  def change
    create_table :front_pages do |t|

      t.timestamps null: false
    end
  end
end
