import grpc

import notes_pb2_grpc
import notes_pb2


channel = grpc.insecure_channel('localhost:50051')
client = notes_pb2_grpc.NoteServiceStub(channel)

newNote = notes_pb2.Note(title="New note", content="From Python")

client.Insert(newNote)
print(newNote)