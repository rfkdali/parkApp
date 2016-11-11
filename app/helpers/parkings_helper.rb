module ParkingsHelper
  def available_step_process role
    Parking::STEP_PROCESS[role.to_sym]
  end
end