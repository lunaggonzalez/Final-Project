//
//  Stigma.swift
//  Final Project
//
//  Created by Luna Gonzalez on 7/16/24.
//

import SwiftUI

struct Stigma: View {
    var body: some View {
        ZStack{
            Color(red: 247/255, green: 184/255, blue: 210/255)
                .ignoresSafeArea()
            ScrollView{
                VStack(alignment: .center){
                    Image("TitleSym")
                        .resizable()
                        .frame(width: 350.0, height: 50.0)
                    
                    Text("Period poverty refers to the inaccessibility and inability to afford menstrual products, as well as the lack of sanitation and hygiene facilities and education about the menstrual cycle. Over two billion people around the globe menstruate, and yet, in a survey done by Thinx and Period, 79% of teens feel they lack proper menstrual education. According to the UN, 1 in 10 menstruators in rural areas across 12 countries did not have a private place to wash or change their menstrual products.")
                        .multilineTextAlignment(.center)
                        .padding(.all, 20.0)
                    
                    Image("PeriodPov")
                        .resizable()
                        .frame(width:350, height: 260)
                    
                    Text("In developing countries, many people who menstruate do not have access to menstrual products like tampons and pads and are forced to use whatever cotton and paper they can find. Menstrual product companies are often criticized for adding 'pink tax' and 'tampon tax' to their products, making them even less accessible to those in need. In the US, 1 in 4 teens and 1 in 3 adults struggle to pay for period products.The lack of awareness, education, and accessibility of period products is a global issue that society must address.")
                        .multilineTextAlignment(.center)
                        .padding(.all, 20.0)
                    
                    Text("Period stigma is heavily prevalent in society, especially in conservative countries. In Afghanistan, women are told not to shower during their periods because they are not 'sterile.' Stigma and period poverty are heightened in areas with harsh cultural and societal norms against periods. In society, we tend to refer to periods using code names like 'Aunt Flo' or 'Code Red,' as if periods are a shunned topic that should not be mentioned. These facts highlight that not enough is done to stop period poverty globally, but one thing we all can do is educate and raise awareness.")
                        .multilineTextAlignment(.center)
                        .padding(.all, 20.0)
                    
                    Text("What can be done to stop this?")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .background(Rectangle().foregroundColor(.white))
                            .cornerRadius(15)
                            .padding(.all, 35.0)
                    
                    Text("A stop to period poverty and stigma against menstruation starts from educating everyone about periods, whether or not one menstruates, as it is important to end the taboo. Globally, measures can be taken to ensure cleaner sanitation facilities and access to menstrual products in rural areas. In 2020, Scotland became the first country to make all period products completely free of cost. Other countries like Australia, Kenya, Canada, Colombia, India, and others have also lowered or scrapped taxes on menstrual products. There are ways you can be involved to end the stigma in your community by funding and supporting organizations that are working to end period poverty. Some of these organizations include PERIOD, Days for Girls, The Pad Project, Bloody Good Period, and Freedom4Girls. ")
                        .multilineTextAlignment(.center)
                        .padding(.all, 20.0)
                    
                    VStack{
                        Text("Together, we must break the silence, challenge stigmas, and take decisive action to ensure that menstrual health and dignity become universal rights, not privileges, for every single person who menstruates.")
                            .multilineTextAlignment(.center)
                            .padding(.all, 20.0)
                    }
                    .background(Rectangle().foregroundColor(.white))
                        .cornerRadius(15)
                        .padding(.all, 20.0)
                    
                }
                
            }
        }
    }
}

#Preview {
    Stigma()
}
