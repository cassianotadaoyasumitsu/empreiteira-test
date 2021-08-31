class CreateReacts < ActiveRecord::Migration[6.0]
  def change
    create_table :reacts do |t|
      t.string :name, null: false
      t.boolean :is_completed, default: false, null: false

      t.timestamps
    end
  end
end
