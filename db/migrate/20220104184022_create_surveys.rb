class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.column(:name, :string)
      t.column(:genre, :string)

      t.timestamps
    end
  end
end
