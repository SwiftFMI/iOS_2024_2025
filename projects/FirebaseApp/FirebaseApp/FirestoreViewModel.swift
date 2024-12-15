//
//  FirestoreViewModel.swift
//  FirebaseApp
//
//  Created by Emil Atanasov on 12/06/24.
//

import Foundation
import FirebaseFirestore
import FirebaseStorage

class FirestoreViewModel: ObservableObject {
    @Published var items = [String]()
    var uploadTask: StorageUploadTask?
    
    var db: Firestore?
    var  storage: Storage?
    
    func connect() {
        db = Firestore.firestore()
    }
    
    func connectStorage() {
        storage = Storage.storage()
    }
    
    func fetchData() async {
        do {
            guard let snapshot = try await db?.collection("game_server").getDocuments() else {
                print("No information!")
                return
            }
          for document in snapshot.documents {
            print("\(document.documentID) => \(document.data())")
          }
        } catch {
          print("Error getting documents: \(error)")
        }
    }
    
    
    func observeData() async {
         db?.collection("game_server").addSnapshotListener({ snapshot, error in
            print(snapshot)
        })
        
    }
    
    func fetchUserInfo(byId: String) async {
        do {
            
            guard let document = try await db?.collection("users").document("\(byId)").getDocument(), document.exists else {
                return
            }
            guard let snapshot = try document.data() else {
                print("No information!")
                return
            }
            for document in snapshot.keys {
                print("\(document) => \(snapshot[document])")
          }
        } catch {
          print("Error getting documents: \(error)")
        }
    }
    
    func addRecord() async {
        do {
          let ref = try await db?.collection("game_server").addDocument(data: [
            "first": "Alan",
            "middle": "Mathison",
            "last": "Turing",
            "born": 1912
          ])
          print("Document added with ID: \(ref?.documentID)")
        } catch {
          print("Error adding document: \(error)")
        }
    }
    
    func uploadFile(userId: String, data: Data, progress:  ((StorageTaskSnapshot) -> ())? = nil ) {
        guard let storage else {
            print("Missing storage")
            return
        }
        let storageRef = storage.reference()
        
        let avatarRef = storageRef.child("users/\(userId)/avatar.png")

        // Create file metadata including the content type
        let metadata = StorageMetadata()
        metadata.contentType = "image/png"

        
        uploadTask = avatarRef.putData(data, metadata: metadata) { (metadata, error) in
            print(error)
          guard let metadata = metadata else {
            // Uh-oh, an error occurred!
              print("what???")
            return
          }
          // Metadata contains file metadata such as size, content-type.
          let size = metadata.size
          // You can also access to download URL after upload.
            avatarRef.downloadURL { (url, error) in
            guard let downloadURL = url else {
              // Uh-oh, an error occurred!
              return
            }
                print("DL", downloadURL)
          }
        }
        
        let observer = uploadTask?.observe(.progress) { snapshot in
          // A progress event occured
            progress?(snapshot)
        }
    }
}

extension String: @retroactive Identifiable {
    public var id: String {
        self
    }
}
