class CreatePretimes < ActiveRecord::Migration
  def change
    create_table :pretimes do |t|
      t.float :time

      t.timestamps
    end
  end
end
