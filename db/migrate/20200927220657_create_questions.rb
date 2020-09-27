class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer     :chapter_number
      t.text        :text
      t.integer     :user_id
      t.timestamps
    end
  end
end
