

if Rails.env.development?

  user = User.find_or_create_by(
    username: "kalyco", email: "kayla.comalli@gmail.com",
    encrypted_password: "password"
  )
  user.password = "password"
  user.save
  # System.find_or_create_by(id: 1, status: "uncompromised", apoptosis: 0,
  # differentiation: 10, memory: 0, pyrogenation: 10, user_id: 1)
  # Virus.find_or_create_by(system_id: 1, cell_id: 1, status: "latent")
  # Cell.find_or_create_by(system_id: 1, status: "antibody" )
end
