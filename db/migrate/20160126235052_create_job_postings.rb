class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
      t.string :job
      t.string :company
      t.array :tags
      t.string :description
      t.string :location
      t.integer :salary

      t.timestamps null: false
    end
  end
end
