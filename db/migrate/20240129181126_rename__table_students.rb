class RenameTableStudents < ActiveRecord::Migration[7.1]
  def change
    rename_table :table_students, :students
  end
end
