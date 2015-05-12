class CreateQuestion < ActiveRecord::Migration
  def change
    create_table(:questions) do |t|
      t.column(:question_desc, :string)
      t.column(:survey_id, :integer)
    end
  end
end
