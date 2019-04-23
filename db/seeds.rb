# Student
Student.create(
  {
    first_name: "Sharon",
    last_name: "Getrollin'",
    email: "sgetrollin@yahoo.com",
    phone_number: "555-867-5309",
    short_bio: "Dog-lover. Yoga instructor. Passionate programmer.",
    linkedin: "https://www.linkedin.com/in/joshuasarna/",
    twitter: "https://twitter.com/xkcdComic",
    website: "https://xkcd.com/",
    resume: "https://www.themuse.com/advice/43-resume-tips-that-will-help-you-get-hired",
    github: "https://github.com/riceb53",
    photo: "https://www.totalsoftwater.com/wp-content/uploads/2017/08/wells-2212974_1280.jpg"
   })
# Education
Education.create(
  {
    start_date: "November 2012", 
    end_date: "June 2018", 
    degree: "Bachelors of Arts Trigonometry", 
    university_name: "University of Trigonometry", 
    details: "studied math and that of the such",
    student_id: 1
  })
# Experience
Experience.create(
  {
    start_date: "2/10/2012", 
    end_date: "3/15/2014", 
    job_title: "Singer", 
    company_name: "American Idol", 
    details: "Produced 10 albums and won 15 Grammys",
    student_id: 1
  })

Experience.create(
  {
    start_date: "6/01/2015", 
    end_date: "9/01/2015", 
    job_title: "Astronaut", 
    company_name: "NASA", 
    details: "Travelled to the moon and then went to Mars",
    student_id: 1
  })

Experience.create(
  {
    start_date: "3/02/2012", 
    end_date: "6/17/2014", 
    job_title: "Software Developer", 
    company_name: "Amazon", 
    details: "Worked within a team of 100 people to maintain and update Amazon's web interface",
    student_id: 1
  })
# Capstone
Capstone.create!(
  {
    name: "Heal the World", 
    description: "Heal the world and make it a better place. For you and for me, and the entire human race.", 
    url: "https://en.wikipedia.org/wiki/Heal_the_World", 
    screenshot: "https://m.media-amazon.com/images/M/MV5BMDI2ZTczZDUtZjkzZi00NWRkLWI4ZTUtNDMzMWYyYzU3ZTlmXkEyXkFqcGdeQXVyNzc1ODA1Mzc@._V1_UX182_CR0,0,182,268_AL_.jpg",
    student_id: 1
  })
# Skills
Skill.create(
  {
    skill_name: "CSS",
    student_id: 1
  })
Skill.create(
  {
    skill_name: "HTML",
    student_id: 1
  })
# Skill.create(
#   {
#     skill_name: "Bootstrap"
#   })
# Skill.create(
#   {
#     skill_name: "JavaScript"
#   })
# Skill.create(
#   {
#     skill_name: "Ruby"
#   })
# Skill.create(
#   {
#     skill_name: "Ruby on Rails"
#   })