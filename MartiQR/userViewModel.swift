import Foundation
import FirebaseFirestore

class UserViewModel: ObservableObject {
    
    @Published var tapIn: String = ""
    @Published var tapOut: String = ""
    
    private var db = Firestore.firestore()
    private var listener: ListenerRegistration?
    
    func fetchData() {
        let documentRef = db.collection("users").document("123456789")
        
        listener = documentRef.addSnapshotListener { [weak self] (documentSnapshot, error) in
            guard let document = documentSnapshot else {
                if let error = error {
                    print("Error fetching data: \(error)")
                }
                return
            }
            
            if document.exists {
                let data = document.data()
                let getTapIn = data?["tapIn"] as? String ?? ""
                let getTapOut = data?["tapOut"] as? String ?? ""
                
                DispatchQueue.main.async {
                    self?.tapIn = getTapIn
                    self?.tapOut = getTapOut
                }
            } else {
                print("Document does not exist")
            }
        }
    }
    
    deinit {
        listener?.remove()
    }
}
