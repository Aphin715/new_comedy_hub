module ApplicationHelper

   def body_class
    "#{controller.controller_name} #{controller.controller_name}-#{controller.action_name}"
  end

 # def youtube_video(url)
 #    render :partial => 'shared/video', :locals => { :url => url }
 #  end
end
