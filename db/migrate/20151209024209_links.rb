class Links < ActiveRecord::Migration
  def change
  	create_table :links do |t|
  		t.string :title
  		t.string :url
  		t.string :image
  		t.integer :upvotes, :default => 0
  		t.integer :downvotes, :default => 0
  		t.timestamps null: false
	end 
  end
end
