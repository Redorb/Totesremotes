json.array!(@job_postings) do |job_posting|
  json.extract! job_posting, :id, :job, :company, :tags, :description, :location, :salary
  json.url job_posting_url(job_posting, format: :json)
end
