class CreateFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :files do |t|
      t.string :path

      t.timestamps
    end
  end
end

