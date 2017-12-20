module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Mike Harris | My Portfolio Website"
    @seo_keywords = "Mike Harris portfolio blog professional programming coding"
  end
end