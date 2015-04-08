class CreateClassselects < ActiveRecord::Migration
  def change
    create_table :classselects do |t|
    	t.string :name
    	t.string :teacher
    	t.string :place
    	t.string :time
    	t.string :score
      t.timestamps null: false
    end
  end
end
