class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :string
      t.string :complete
      t.string :boolean

      t.timestamps
    end
  end
end
