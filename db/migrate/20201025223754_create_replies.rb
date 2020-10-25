class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.integer     :question_id
      t.text        :text
      t.timestamps
    end
  end
end
