class CreateUsers < ActiveRecord::Migration
  using(:foo)

  def change
    create_table :users do |t|
      t.name :string
      t.email :string

      t.timestamps null: false
    end
  end
end
