class CreateDives < ActiveRecord::Migration[5.1]
  def change
    create_table :dives do |t|
      t.references :user, foreign_key: true
      t.string :location
      t.datetime :date
      t.integer :max_depth
      t.integer :duration
      t.integer :psi_used
      t.integer :weight_used
      t.integer :rating
      t.string :notes
      t.integer :make_public

      t.timestamps
    end
  end
end
