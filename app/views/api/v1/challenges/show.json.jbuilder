json.extract! challenge, :id, :description, :acceptable, :cost_inaction_hy, :cost_inaction_yr, :cost_inaction_3y

json.array! @fears do |fear|
  json.extract! fear, id: :description
end

json.array! @benefits do |benefit|
  json.extract! benefit, id: :description
end