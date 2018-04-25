module ActivityPubNoteSerializerPatch
  def content
    DoublebyteCharactify.convert(Formatter.instance.format(object), object.tags)
  end
end
