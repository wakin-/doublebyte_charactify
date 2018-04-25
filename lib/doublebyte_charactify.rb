require "doublebyte_charactify/version"
require "doublebyte_charactify/convert"
require "doublebyte_charactify/status_serializer"
require "doublebyte_charactify/note_serializer"

module DoublebyteCharactify
  def self.patch
    REST::StatusSerializer.prepend(RESTStatusSerializerPatch)
    ActivityPub::NoteSerializer.prepend(ActivityPubNoteSerializerPatch)
  end
end
