
import SwiftUI

struct AgendaRow: View {
    var image: String = "profile"
    var title: String = "Filip's Birthday"
    var date: String = "17.7."
    
    var body: some View {
        HStack {
            Image("profile")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding(20)
            VStack(alignment: .leading) {
                Text("Filip Birthday's")
                Text("13.7.")
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

struct AgendaRow_Previews: PreviewProvider {
    static var previews: some View {
        AgendaRow()
    }
}
