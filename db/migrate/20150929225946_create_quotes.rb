class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|

    t.string :saying
    t.string :contributor

      t.timestamps
    end
  end
end
