class CreateTickets < ActiveRecord::Migration[5.2]
  def self.up
    create_table :tickets do |t|
      t.string :incident_number
      t.boolean   :status
      t.date :date_of_service, polymorphic: true
      t.references :user
      t.timestamps
    end
    add_index :tickets, [:incident_number]
  end

  def self.down
    drop_table :tickets
  end
end
