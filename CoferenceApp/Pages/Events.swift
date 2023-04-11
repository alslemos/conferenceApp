//  Events.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//  Changed by alslemos on 11/04

import SwiftUI

struct Events: View {
    
    let numbers = [1, 2, 3, 4, 5] // importado do eduardo
    
    
    @State private var date = Date()
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2022, month: 6, day: 5)
        let endComponents = DateComponents(year: 2022, month: 6, day: 11)
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
        
        VStack{
            Text("Check the full schedule")
                .font(.title2.bold())

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
                    // acao
                    
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
                    VStack(alignment:.leading, spacing:-10){
                        
                        ForEach(numbers, id: \.self) { number in
                            EventCard()
                        }.padding()
                        
                    }.frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,0)
                }
                .background(Color(UIColor.secondarySystemBackground))
                .padding(.bottom) // mas respeita a área bottom
            }
        }.padding()
            .background(Color(uiColor: .systemGray6))
        
    }
}

struct Events_Previews: PreviewProvider {
    static var previews: some View {
        Events()
    }
}

