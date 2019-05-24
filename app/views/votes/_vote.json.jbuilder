json.extract! vote, :id, :candidate_id, :voter_id, :created_at, :updated_at
json.url vote_url(vote, format: :json)
