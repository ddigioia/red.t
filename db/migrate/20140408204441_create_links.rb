class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.references 	"user"
    	t.integer 		"score"
    	t.string		"url"
    	t.string		"title"
    	t.text			"body"
    	t.date			"date"
    end
  end
end
