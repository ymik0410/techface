class AddFieldsToMentees < ActiveRecord::Migration[6.0]
  def change
    add_column :mentees, :specific_area, :string
    add_column :mentees, :mentors_industry, :string
    add_column :mentees, :language, :string
    add_column :mentees, :gender, :string
    add_column :mentees, :time, :string
  end
end
