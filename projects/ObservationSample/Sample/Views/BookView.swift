/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that displays the title of a book, as well as a button for editing the
 title.
*/

import SwiftUI

struct BookView: View {
    var book: Book
    @State private var isEditorPresented = false
    
    var body: some View {
        HStack {
            Text(book.title)
            Spacer()
            Button("Edit") {
                isEditorPresented = true
            }
            
            Button ("update") {
                book.title = "A new update?!"
            }
        }
        .sheet(isPresented: $isEditorPresented) {
            BookEditView(book: book)
        }
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView(book: Book())
    }
}

// Новите елементи от iOS 17
//@State
//@Observable
//@Environment(YourType.self)
//@Bindable ($)  да не се бърка с @Binding
