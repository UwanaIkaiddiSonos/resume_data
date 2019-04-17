class ResumeFile < Prawn::Document
  def initialize(student)
    super()
    @student = student
    student_name
    contact_info

  end

  def student_name
    text "#{@student.first_name} #{@student.last_name}", size: 25, style: :bold, align: :center
  end

  def contact_info
    text "Email: #{@student.email} - Phone:#{@student.phone_number} - Linkedin: #{@student.linkedin} -  Twitter: #{@student.twitter} - Portfolio: #{@student.website} - Github: #{@student.github}",
      align: :center
  end


end