class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|

      t.string :name
      t.string :furigana
      t.string :address
      t.string :phone
      t.string :email
      t.string :factory
      t.string :role
      t.string :job_exp
      t.string :pay_number
      t.date :started_date
      t.boolean :licence1, default: false
      t.date :healthy_exam
      t.string :drive_licence
      t.date :drive_licence_date
      t.string :document
      t.date :document_date
      t.string :passport
      t.date :passport_date


      t.timestamps
    end
  end
end
