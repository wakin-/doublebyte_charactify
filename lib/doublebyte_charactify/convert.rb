module DoublebyteCharactiy
  def convert(status)
    Rails.logger.info status.content
    if status.tags.select { | tag| tag.name === '全角芸' }
      doc = Nokogiri::HTML.parse(status.content)
      doc.traverse do |e| e.content = e.content.tr('a-zA-Z/.:', 'ａ-ｚＡ-Ｚ／．：') if e.text? end
      status.content = doc.to_html
    end
    status
  end
end
