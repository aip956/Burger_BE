class CreateBurgers < ActiveRecord::Migration[6.1]
  def change
    create_table :burgers do |t|
      t.string :burger_name
      t.string :meat
      t.string :cheese
      t.string :veggie
      t.string :user_id
    end
  end
end
