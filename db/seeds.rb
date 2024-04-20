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

#教科名
Subject.find_or_create_by!(subject_name: "国語")
Subject.find_or_create_by!(subject_name: "数学")
Subject.find_or_create_by!(subject_name: "理科")
Subject.find_or_create_by!(subject_name: "社会")
Subject.find_or_create_by!(subject_name: "英語")

#テストの種類
TestName.find_or_create_by(test_name: '中間テスト')
TestName.find_or_create_by(test_name: '期末テスト')
TestName.find_or_create_by(test_name: '実力テスト')
TestName.find_or_create_by(test_name: '小テスト')

#満点
MaxScore.find_or_create_by(max_score: '100')
MaxScore.find_or_create_by(max_score: '50')
MaxScore.find_or_create_by(max_score: '20')
MaxScore.find_or_create_by(max_score: '10')
MaxScore.find_or_create_by(max_score: '5')
