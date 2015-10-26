class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :option1, :string
      t.column :option2, :string
      t.column :vote1, :integer
      t.column :vote2, :integer
    end
  end
end
