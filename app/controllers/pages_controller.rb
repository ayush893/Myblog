class PagesController < ApplicationController
	def about
		@title = 'About us';
		@content = 'This is the first blog page';
	end
scope :recents, where("created_at > ?", Time.now-7.days)

    def self.get_student_attendance_details
        attendance = Attendances.recents
        dict = { }
        for student in attendance
            if dict.include?(student.student_id):
                dict[student.student_id] =  dict[student.student_id].push(student)
            else
                d[student.student_id] = [student]
    end
end
