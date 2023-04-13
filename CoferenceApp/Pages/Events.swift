//  Events.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//  Changed by alslemos on 11/04

import SwiftUI

struct Events: View {
    
    let numbers = [1, 2, 3, 4, 5] // importado do eduardo
    @EnvironmentObject var viewModel: ViewModel
    
    var wwdcDate: Date {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = 2023
        dateComponents.month = 6
        dateComponents.day = 6
        return calendar.date(from: dateComponents)!
    }
    
    @State private var date = Date()
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2023, month: 6, day: 6)
        let endComponents = DateComponents(year: 2023, month: 10, day: 10)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var body: some View {
        NavigationView() {
            
            VStack{
                
                HStack(alignment: .top){
                    Image(systemName: "apple.logo").font(.title2)
                    Text("WWDC23").font(.title2).bold()
                    
                }
                
                Spacer(minLength: 15)
                
                Text("Check the full schedule")
                    .font(.title3.bold())
                
                DatePicker(
                    "Select a date",
                    selection: $date,
                    in: dateRange,
                    displayedComponents: [.date]
                )
                
                .datePickerStyle(.graphical)
                .labelsHidden()
                .accentColor(Color.red)
                .frame(height: 170, alignment: .top)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                
                
                VStack{
                    // so a flecinha eh botao
                    Button {
                        
                        date = date.addingOneDay()
                        
                    } label: {
                        Text(dateFormatter.string(from: date).description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.black)
                            .font(.title.bold())
                        Image(systemName: "chevron.forward")
                            .font(.title)
                            .foregroundColor(.red)
                        
                    }.padding()
                    
                    
                    Spacer()
                    
                    ScrollView{
                        VStack(alignment:.leading, spacing: 0){
                            
                            
                            ForEach(viewModel.events.filter({ event in
                                event.date.isSameDay(as: date)
                            }), id: \.self) { event in
                                NavigationLink(
                                    destination: About(event: event).environmentObject(viewModel)
                                ){
                                                    CurrentEventCardItem(event: event).environmentObject(viewModel)
                                }.buttonStyle(PlainButtonStyle())
                                // mandando para about
                            }
                        }
                        
                    }.frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,0)
                }
                .background(Color(UIColor.secondarySystemBackground))
                .padding(.bottom) // mas respeita a área bottom
                
            }.background(Color(uiColor: .systemGray6))
            
        }.padding()
            .background(Color(uiColor: .systemGray6))
            .onAppear {
                date = wwdcDate
            }
        
    }
    
    func cardItem(speakerName: String,imageName: String,description: String, localization: String, width: Double, isFavorite: Bool) -> some View {
        HStack(spacing: 15) {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 46, height: 46)
                    Text(speakerName)
                }
                Text(description)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(3)
                Text(localization)
                    .font(.caption)
                    .padding(.bottom, 4)
                
            }
            
            
            VStack(spacing: 25) {
                HStack {
                    Image(systemName: "map")
                        .foregroundColor(.white)
                    Button {
                        print("Favoritou")
                        
                    } label: {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                        
                    }
                }
                .foregroundColor(.white)
                
                Text("1:30pm")
                    .font(.caption)
                    .padding(.vertical, 3)
                    .background(Color.white)
                    .foregroundColor(ThemeManager.shared.colorTheme.color)
                    .cornerRadius(27)
            }
        }
        .frame(width: UIScreen.main.bounds.width * width)
        .background(ThemeManager.shared.colorTheme.color)
        .cornerRadius(16)
        .foregroundColor(.white)
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0 , y: 4)
        .padding(0)
        .padding(.vertical, 12)

    }
}

struct Events_Previews: PreviewProvider {
    static var previews: some View {
        Events()
    }
}

extension Date {
    func isSameDay(as date: Date) -> Bool {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        let otherComponents = calendar.dateComponents([.year, .month, .day], from: date)
        return components.year == otherComponents.year &&
               components.month == otherComponents.month &&
               components.day == otherComponents.day
    }
}
extension Date {
    func addingOneDay() -> Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .day, value: 1, to: self) ?? self
    }
}
