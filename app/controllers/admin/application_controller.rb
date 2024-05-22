# app/controllers/admin/application_controller.rb
module Admin
  class ApplicationController < Administrate::ApplicationController
    http_basic_authenticate_with(
      name: "admin",
      password: "admin"
    )

    # Other customizations as needed
  end
end
