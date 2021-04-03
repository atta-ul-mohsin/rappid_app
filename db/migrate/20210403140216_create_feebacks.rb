class CreateFeebacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feebacks do |t|
      t.integer :grade
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
