const client = require('./client')
let newNote = {
    title: "New note",
    content: "From JavaScript"
}
client.insert(newNote, (error, note) => {
    if (!error) {
       console.log('New Note created successfully', note)
    } else {
       console.error(error)
    }
})