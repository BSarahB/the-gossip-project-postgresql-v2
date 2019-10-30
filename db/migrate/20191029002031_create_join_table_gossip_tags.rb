class CreateJoinTableGossipTags < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_gossip_tags do |t|
#on doit rajouter les froeign key des 2 tables qu on veut joindre
      t.references :tag, index: true
      t.references :gossip, index: true
      t.timestamps
    end
  end
end
