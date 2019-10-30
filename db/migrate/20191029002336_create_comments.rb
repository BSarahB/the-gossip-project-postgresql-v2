class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
 #on cree 2 colonnes gossip_id et user_id dans la tabe comments, ainsi en faisant gossip.comments (user.comments)je recupere l array de comments pour un gossip ou un user donne, symetriquement comment.gossip (comment.user)recuperera l instance gossip (ou l instance user)qui est liee au commentaire
      t.belongs_to :gossip, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
