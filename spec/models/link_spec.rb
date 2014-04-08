require 'spec_helper'

describe Link do

	it {should belong_to(:user)}
	it {should validate_uniqueness_of(:url)}
	it {should validate_numericality_of(:score).only_integer}
	it {should validate_presence_of(:title)}
	it {should validate_presence_of(:body)}
  
end


    # t.integer "user_id"
    # t.integer "score"
    # t.string  "url"
    # t.string  "title"
    # t.text    "body"
    # t.date    "date"