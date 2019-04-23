class ResumeFile < Prawn::Document
  def initialize(student)
    super()
    @student = student
    student_name
    contact_info
    profession
    student_bio
    skillz
    experience
    education
    capstone
  end

  def student_name
    text "#{@student.first_name} #{@student.last_name}", size: 14, style: :bold, align: :center
  end

  def contact_info
    text "Email: #{@student.email} - Phone:#{@student.phone_number} - Linkedin: #{@student.linkedin} -  Twitter: #{@student.twitter} - Portfolio: #{@student.website} - Github: #{@student.github}",
      align: :center, size: 11
  end

  def student_bio
    move_down 3
    text "#{@student.short_bio}", 
    size: 11
  end

  def profession
    move_down 10
    text "I'm up for anything", size:14, style: :bold, align: :center
  end

  def experience
    move_down 20
    text "Experience", size: 14, style: :bold 
    @student.experiences.each do |experience|
      text "#{experience.company_name}, #{experience.job_title} | #{experience.start_date} - #{experience.end_date}",
      size:12, style: :bold
      text "#{experience.details}",
      indent_paragraphs:30
      move_down 20 #this last movedown newlines for education
    end
  end

  def education
    text "Education", size: 14, style: :bold 
    @student.educations.each do |education|
      text "#{education.university_name}, 
      #{education.degree} | #{education.start_date} - #{education.end_date}",
      size:12, style: :bold
      text "#{education.details}",
      indent_paragraphs:30
      move_down 20
    end
  end

  def skillz
    move_down 20
    text "Skills:", size:14, style: :bold
    @student.skills each do |skill|
      text "#{skill}", size:11
    end
  end

  def capstone
    text "Capstone:", size:14, style: :bold
    text "#{@student.capstone.name}"
    text "#{@student.capstone.description}"
    text "#{@student.capstone.url}"
  end
end