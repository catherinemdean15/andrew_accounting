class CreateAction < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.date :date
      t.string :description

      t.timestamps
    end
  end
end
