class AddColtoStudent < ActiveRecord::Migration
  def change
  	add_column :students, :youtubeID, :string
  end
end
