class CreateRooms < ActiveRecord::Migration
  using(:bar)
  def change
    create_table :rooms do |t|
      t.name :string
      t.location :string

      t.timestamps null: false
    end
  end
end
