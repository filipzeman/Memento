
import SwiftUI

struct EventRow: View {
    var event: Event
    
    var body: some View {
        divider
        HStack {
            Image(event.image)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
            VStack(alignment: .leading) {
                Text(event.title)
                    .padding(.bottom, 5)
                    .font(.title3)
                Text(event.date)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

var divider: some View {
    Divider().background(Color.gray.blendMode(.overlay))
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        EventRow(event: eventsData[0])
    }
}
