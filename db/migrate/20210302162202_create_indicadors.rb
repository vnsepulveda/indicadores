class CreateIndicadors < ActiveRecord::Migration[6.1]
  def change
    create_table :indicadors do |t|
      t.datetime :fecha
      t.float :valor

      t.timestamps
    end
  end
end
