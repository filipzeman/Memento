import SwiftUI

struct AgendaView: View {
    @State private var showSheet = false
    //        var  agendaEvents = DataHelper.getAgendaEvents()
    
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
                .frame(height: UIScreen.main.bounds.height*0.4)
                .background(Color.green)
                
                ZStack {
                    ScrollView {
                        VStack {
                            ForEach(eventsData, id: \.id) { event in
                                EventRow(event: event)
                            }
//                            .onDelete(perform: deleteEvent(id))
                        }
                    }.padding(.bottom, 16)
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "plus")
                                    .font(.largeTitle)
                                    .frame(width: 70, height: 70)
                                    .background(Color("Primary"))
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .onTapGesture {
                                        showSheet = true
                                    }
                            }
                        }
                        .padding(.horizontal, 25)
                        .padding(.vertical, 30)
                    }
                }
                .frame(height: UIScreen.main.bounds.height*0.6)
                Spacer()
            }
            .ignoresSafeArea()
            .sheet(isPresented: $showSheet, content: {
                AddNewItemView()
            })
    }
}

struct AgendaView_Previews: PreviewProvider {
    static var previews: some View {
        AgendaView()
    }
}
