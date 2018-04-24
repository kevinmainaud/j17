class CreateJunctions < ActiveRecord::Migration[5.2]
  def change
    create_table :junctions do |t|
      t.timestamps
      t.belongs_to :category, index:true
      t.belongs_to :article, index:true
    end
  end
end
