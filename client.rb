this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'notes_services_pb'
include NoteService

def main
    stub = NoteService::Stub.new('localhost:50051', :this_channel_is_insecure)
    newNote = Note.new(title: "New Note", content: "From Ruby")
    stub.insert(newNote)
    print newNote, "\n"
end

main