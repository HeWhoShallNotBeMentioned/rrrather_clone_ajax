class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :title, :string
      t.column :text, :text
      t.column :question_id, :integer
    end
  end
end
