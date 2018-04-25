module RESTStatusSerializerPatch
  def content
    DoublebyteCharactify.convert_content(Formatter.instance.format(object), object.tags)
  end
end
