class AddActionToLines < ActiveRecord::Migration[6.1]
  def change
    add_reference :lines, :action, null: false, foreign_key: true
  end
end
