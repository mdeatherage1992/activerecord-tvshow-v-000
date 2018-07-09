class CreateShows < ActiveRecord::Migration[10.4]
  def change
    create_table :shows do |t|
    t.string   :name
    t.string   :network
    t.string   :day
    t.integrer :rating
  end
end
end
