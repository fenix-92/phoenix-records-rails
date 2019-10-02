class CreateRecordCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :record_companies do |t|
      t.string :name
      t.string :long_name

      t.timestamps
    end
  end
end
