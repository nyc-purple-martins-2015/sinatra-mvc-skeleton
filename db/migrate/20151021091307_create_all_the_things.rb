class CreateAllTheThings < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :email
    end

    create_table :items do |t|
      t.string :name
      t.integer :user_id
      # t.belongs_to :user
    end

    create_table :parts do |t|
      t.string :name
      t.integer :item_id
    end

  end
end
