class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.string :status
      t.string :color

      t.timestamps
    end
  end
end
