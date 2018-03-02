class CreateValues < ActiveRecord::Migration[5.1]
  def change
    create_table :values do |t|
      t.belongs_to :user, foreign_key: true
      t.string :key
      t.integer :value

      t.timestamps
    end
  end
end
