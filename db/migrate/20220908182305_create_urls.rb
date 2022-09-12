class CreateUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :urls do |t|
      t.string :name
      t.string :long_url
      t.string :short_code
      t.integer :click

      t.timestamps
    end
  end
end
