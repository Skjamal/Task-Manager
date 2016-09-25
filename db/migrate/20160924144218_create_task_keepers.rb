class CreateTaskKeepers < ActiveRecord::Migration
  def change
    create_table :task_keepers do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
