class CreateActivators < ActiveRecord::Migration[5.0]
  def change
    create_table :activators do |t|
      t.string :name
      t.text :description
      t.string :commandline
      t.string :color

      t.timestamps
    end
  end
end
