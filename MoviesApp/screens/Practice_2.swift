
import SwiftUI

struct Practice_2: View {
    
    var countries = ["mov_0", "mov_1", "mov_2", "mov_3", "mov_4", "mov_5", "mov_6"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        
        VStack(spacing: 30 ) {
            VStack {
                    Text("Tap the flag of")
                    Text(countries[correctAnswer])
            }
            ForEach(0 ..< 3) { number in
                Button(action: {
                   // flag was tapped
                }) {
                    Image(self.countries[number])
                        .resizable()
                        .frame(width: 200, height: 200)
//                        .renderingMode(.original)
                }
            }
        }
    }
}

struct Practice_2_Previews: PreviewProvider {
    static var previews: some View {
        Practice_2()
    }
}
