class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :mfr
      t.string :dist
      t.string :contact
      t.string :email
      t.string :address1
      t.string :address2
      t.string :tel
      t.string :fax
      t.string :webpage
      t.string :specialty

      t.timestamps
    end
    add_index :contacts, [:mfr, :dist, :contact, :specialty]
  end
end
