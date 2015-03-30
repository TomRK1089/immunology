

if Rails.env.development?

  System.find_or_create_by(id: 1, status: "uncompromised", apoptosis: false,
  differentiation: true)
  Virus.find_or_create_by(system_id: 1)
  Cell.find_or_create_by(system_id: 1)
end
