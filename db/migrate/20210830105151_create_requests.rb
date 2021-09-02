class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|

      t.string :kind_of
      t.string :amount
      t.date :request_date
      t.text :request_reason

      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
