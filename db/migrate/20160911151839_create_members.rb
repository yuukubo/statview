class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :deskno
#      t.string :memstat
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
