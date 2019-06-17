class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.string :title
      t.text :body
      t.references :host, foreign_key: true
      t.references :guest, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
