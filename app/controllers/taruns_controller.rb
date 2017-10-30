class TarunsController < ApplicationController

  # for skipping authentication token
  skip_before_action :verify_authenticity_token


  def jayu_post
    logger.debug "hey waz up.......#{2 + 3}"
    logger.debug "post params by my darling are #{params['parentObject']['objectName']}"
  end

  def my_form
  end
end
