class FixColumnName < ActiveRecord::Migration[7.0]
  def change
   rename_column :jobs, :employer_discription, :employer_description
  end
end
