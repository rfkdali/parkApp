module ParkingsHelper
  def available_step_process role
    Parking::ROLES_PROCESS[role.to_sym]
  end
end