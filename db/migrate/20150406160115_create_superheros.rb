class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :superheros do |t|
      t.string :name, null: false
      t.string :specialty, default: "general awesomeness"
      t.integer :overall_rating, precision: 1
      t.text :bio, null: false
      t.timestamps null: false
    end
  end
end
