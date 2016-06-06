class CreateKeywordData < ActiveRecord::Migration
  def change
    create_table :keyword_data do |t|
      t.string :publication
      t.integer :political_score
      t.integer :conflict_score
      t.integer :econ_score
      t.integer :tech_score

      t.timestamps null: false
    end
  end
end
