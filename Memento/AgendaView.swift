import SwiftUI

struct AgendaView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("root_mountain")
                    .resizable()
                Color("BackgroundOverlay")
                    .opacity(0.7)
                Image("profile")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
            }
            .frame(height: UIScreen.main.bounds.height/2)
            .background(Color.green)
            .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    AgendaRow()
                    AgendaRow()
                    AgendaRow()
                    AgendaRow()
                    AgendaRow()
                }
            }
            Spacer()
        }
    }
}

struct AgendaView_Previews: PreviewProvider {
    static var previews: some View {
        AgendaView()
    }
}
