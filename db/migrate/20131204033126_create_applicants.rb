class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :answer1
      t.text :answer2
      t.text :answer3

      t.timestamps
    end
  end
end
