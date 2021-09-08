class CreateMentees < ActiveRecord::Migration[6.0]
  def change
    create_table :mentees do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.string :job
      t.string :industry
      t.integer :experience
      t.string :profile
      t.string :reason
      t.string :help
      t.string :expectations

      t.timestamps
    end
  end
end
