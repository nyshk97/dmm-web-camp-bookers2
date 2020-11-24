module ApplicationHelper
  def show_thumbnail(user, width=100, height=100)
    if user.thumbnail_id
      img = image_tag(attachment_url(current_user, :thumbnail, :fill, width, height))
    else
      img = image_tag('no_image.jpg', width: width, height: height)
    end
    img
  end
end
