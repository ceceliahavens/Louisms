class AlterTributesAddUserIdColumn < ActiveRecord::Migration
  def change
  	add_column :tributes, :user_id, :integer
    add_index :tributes, :user_id
  end
end
