class CreateTributes < ActiveRecord::Migration
  def change
    create_table :tributes do |t|

    t.string :saying
    t.string :contributor

      t.timestamps
    end
  end
end
