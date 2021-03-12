import SwiftUI

struct Practice_1: View {
    
    let students = ["A", "B", "C"]
    @State private var selectedOne = 2
    @State private var showingAlert = false
    
    var body: some View {
        
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(.all)
            
            VStack {
                Section(header: Text("Choose one of them pls^^")) {
                    Picker("Studests", selection: $selectedOne){
                        ForEach(0 ..< students.count){
                            Text(self.students[$0])
                        }.cornerRadius(20)
                    }.pickerStyle(SegmentedPickerStyle()).background(Color.yellow)
                    
                    
                }
                Button("Show Alert") {
                            self.showingAlert = true
                        }
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("Hello SwiftUI!"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))
                        }
            }
        }
    }
}

struct Practice_1_Previews: PreviewProvider {
    static var previews: some View {
        Practice_1()
    }
}
