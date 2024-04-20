Administrator.create!(
  name: "Admin Name",
  email: "admin@example.com",
  password: "12345678"
)

Grade.find_or_create_by!(name: "1年")
Grade.find_or_create_by!(name: "2年")
Grade.find_or_create_by!(name: "3年")

StudentClass.find_or_create_by!(name: "1組")
StudentClass.find_or_create_by!(name: "2組")
StudentClass.find_or_create_by!(name: "3組")
StudentClass.find_or_create_by!(name: "4組")
StudentClass.find_or_create_by!(name: "5組")
StudentClass.find_or_create_by!(name: "6組")
StudentClass.find_or_create_by!(name: "7組")
StudentClass.find_or_create_by!(name: "8組")
StudentClass.find_or_create_by!(name: "9組")
StudentClass.find_or_create_by!(name: "10組")