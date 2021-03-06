#
# Copyright (C) 2019 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

require_relative '../../common'

module CourseWikiPage
  #------------------------------ Selectors -----------------------------
  def publish_btn_selector
    '.btn-publish'
  end

  def published_btn_selector
    '.btn-published'
  end

  #------------------------------ Elements ------------------------------
  def publish_btn
    f(publish_btn_selector)
  end

  def published_btn
    f(published_btn_selector)
  end

  def wiki_page_body
    f('body')
  end

  def wiki_page_settings_button
    fj("[role='button']:contains('Settings')")
  end

  def wiki_page_send_to_menu
    fj("li:contains('Send To...')")
  end

  def wiki_page_copy_to_menu
    fj("li:contains('Copy To...')")
  end

  def immersive_reader_btn
    fj("[type='button']:contains('Immersive Reader')")
  end

  #------------------------------ Actions -------------------------------

  def visit_wiki_page_view(course_id, page_title)
    get "/courses/#{course_id}/pages/#{page_title}"
  end

  def publish_wiki_page
    publish_btn.click
    wait_for_ajaximations
  end

  def unpublish_wiki_page
    published_btn.click
    wait_for_ajaximations
  end
end
