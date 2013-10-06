module ComedyClubsHelper
  def comedy_club_image(comedy_club)
    image_url = ""

    if comedy_club.image.present?
      image_url = comedy_club.image.url
    else
      image_url = comedy_club.image.default_url
    end

    image_tag image_url
  end
end
