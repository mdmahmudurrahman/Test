class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :gear, foreign_key: true
      t.decimal :rating
      t.text :text_message

      t.timestamps
    end
  end
end
