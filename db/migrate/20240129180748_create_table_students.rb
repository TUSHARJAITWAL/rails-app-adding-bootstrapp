class CreateTableStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :table_students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :address

      t.timestamps
    end
  end
end
