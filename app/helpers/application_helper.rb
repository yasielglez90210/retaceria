module ApplicationHelper
  def content_header(isBack,pathBack)
    if user.avatar?
      image_tag user.avatar.url(:avatar), class: cl,id:cl
    else
      # image_tag "default/default-avatar.png", id:cl, class:cl, width: '100%', height: '100%'
      image_tag user.avatar.default_url, id:cl, class:cl, width: '100%', height: '100%'

    end
  end
end
