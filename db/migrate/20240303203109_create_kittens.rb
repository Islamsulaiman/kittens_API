class CreateKittens < ActiveRecord::Migration[7.1]
  def change
    create_table :kittens do |t|
      t.string :name
      t.integer :age
      t.integer :cuteness
      t.string :softness

      t.timestamps
    end
  end
end