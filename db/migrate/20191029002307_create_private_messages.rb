class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.references :recipient, index: true #creer  colonnes sender_id et recipient_id dans la table private_messages 
      t.references :sender, index: true   #on annonce que la table contient des foreign keys, index: true car les tables senders et recipients n existent pas

      t.timestamps
    end
  end
end
