class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :idea_name
      t.string :idea_description

      t.timestamps null: false
    end
  end
end
