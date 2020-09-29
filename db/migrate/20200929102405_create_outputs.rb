class CreateOutputs < ActiveRecord::Migration[6.0]
  def change
    create_table :outputs do |t|
      t.integer :book_genre_id, null:false
      t.string  :book_name,     null:false
      t.integer :post_type_id,  null:false
      t.text    :post_text,     null:false
      t.references :text,       foreign_key:true
      t.timestamps
    end
  end
end
