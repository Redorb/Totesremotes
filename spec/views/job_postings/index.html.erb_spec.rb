require 'rails_helper'

RSpec.describe "job_postings/index", type: :view do
  before(:each) do
    assign(:job_postings, [
      JobPosting.create!(job: "test",
                         company: "test",
                         description: "test",
                         tags: ["test"],
                         location: "test",
                         salary: 100000),
      JobPosting.create!(job: "test",
                         company: "test",
                         description: "test",
                         tags: ["test"],
                         location: "test",
                         salary: 100000)
    ])
    assign(:scrapped_postings, [
        {
            job: "test",
            company: "test",
            tags: ["test", "test"],
            description: "test"
        }
    ])
  end

  it "renders a list of job_postings" do
    render
  end
end
