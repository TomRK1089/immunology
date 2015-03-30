

if Rails.env.development?

  System.find_or_create_by(id: 1, status: "uncompromised", apoptosis: false,
  differentiation: true, memory: 0, pyrogenation: false, user_id: 1)
  Virus.find_or_create_by(system_id: 1, cell_id: 1, status: "latent")
  Cell.find_or_create_by(system_id: 1, status: "antibody" )
end
