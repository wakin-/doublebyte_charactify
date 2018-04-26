module DoublebyteCharactify
  def self.convert(content, tags)
    if !(tags.select { |tag| tag.name === '全角芸' }).blank?
      doc = Nokogiri::XML.parse(content)
      doc.traverse do |e| e.content = e.content.tr('0-9a-zA-Z/\\\.:#\-_"\' ', '０-９ａ-ｚＡ-Ｚ／＼．：＃ー＿”’　') if e.text? end
      content = doc.to_xhtml(:encoding => 'UTF-8').chomp
    end
    content
  end
end
