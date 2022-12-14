Rails.application.routes.draw do

  mount Courses::Engine => "/courses"

  get 'admin/index'
  get 'admin/students_list'
  get 'admin/teacher_list'
  get 'admin/student_info/:id',to: "admin#student_info", as: "student_info"
  get 'admin/teacher_info/:id',to: "admin#teacher_info", as: "teacher_info"
  get 'teacher/show'
  get 'student/index'
  get 'student/show'
  patch 'enrolled_courses/update/:id', to: "enrolled_courses#update", as: 'update_marks'
  get 'enrolled_courses/index', as:'allCourses'
  get 'teacher/:id/enrolled_students', to: "teacher#enrolled_students", as: "enrolled_students"
  get 'teacher/edit_marks/:id/course', to: "enrolled_courses#edit", as: "edit_marks"

  post 'course/:id/register',to: "enrolled_courses#create", as: 'register'
  delete 'course/:id/unregister',to: "enrolled_courses#destroy", as: 'destroy'


  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords',
      unlocks:'users/unlocks',
      confirmations:'users/confirmations'
    }
    devise_scope :user do
      root 'users/sessions#new'
      get 'users/registration/new_user',to: "users/registrations#new_user", as: "create_new_user"

    end

end
