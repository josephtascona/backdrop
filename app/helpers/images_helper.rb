module ImagesHelper
  def full_name1
    @image.user.first_name + ' ' + @image.user.last_name
  end
end
