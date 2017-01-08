module HatebuLinksHelper
  def to_hatebu_count_link(url)
    return '' if url.blank?
    truncated_url = bookmark_url_trimmer(url)
    page_url = "http://b.hatena.ne.jp/entry/#{truncated_url}"
    image_url = "http://b.st-hatena.com/entry/image/#{truncated_url}"
    content_tag :a, href: page_url, target: '_blank' do
      tag = content_tag :img, '', src: image_url
      concat tag
    end
  end

  def bookmark_url_trimmer(url)
    url.size > 255 ? url[0..254].gsub(/%\w?\z/, '') : url
  end
end