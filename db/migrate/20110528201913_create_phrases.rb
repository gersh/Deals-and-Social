class CreatePhrases < ActiveRecord::Migration
  def self.up
    create_table :phrases do |t|
      t.references :theme
      t.string :phrase

      t.timestamps
    end
  end

  def self.down
    drop_table :phrases
  end
end
