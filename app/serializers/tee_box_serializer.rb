class TeeBoxSerializer < ActiveModel::Serializer
  attributes :id, :course_name, :city, :state, :tee, :color, :par, :total_distance
  
  def course_name
    "#{object.course.name}"
  end

  def address
    "#{object.course.address}"
  end

  def city
    "#{object.course.city}"
  end

  def state
    "#{object.course.state}"
  end

  def total_distance
    object.holes.pluck(:distance).sum
  end
end
