//
//  FAQ.swift
//  Final Project
//
//  Created by Luna Gonzalez on 7/16/24.
//


import SwiftUI

struct FAQ: View{
    var body: some View {
      //  GeometryReader { geometry in
                ZStack{
                    Color(red: 247/255, green: 184/255, blue: 210/255)
                        .ignoresSafeArea()
                        .overlay(
                    ScrollView {
                        VStack(alignment: .center, spacing: 20) {
                            Text("What do I do if....")
                                .font(.title)
                                .padding(.horizontal)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("FAQ")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                            
                            VStack{
                                DisclosureGroup(
                                    content: {
                                        Text("First off, don’t panic; it is completely normal to have your period. Ask a trusted adult for a pad or tampon. You can follow the links in this FAQ regarding how to wear a tampon/pad. If you stained your clothing, you can try handwashing with cold water and then machine washing (refer to the questions below for more help). Periods tend to last normally for 2-3 days and occur every 3 weeks - 4 weeks. Do not fret if your periods are irregular; our bodies are different so our cycles are different, too.")
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("I just got my period for the first time and I do not know what to do.")
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                    
                                )
                                DisclosureGroup(
                                    content: {
                                        Text("Your school likely has a nurse or an office, drop by the office and ask for any pads or tampons! If you need to, consult an older adult who will help support you if it’s your first period or a painful one.")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("I got my periods in school and do not have a pad or tampon with me? What do I do?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                DisclosureGroup(
                                    content: {
                                        Text("If you stain clothes, handwashing them can get a majority of the stain out, but if you must, you can use lemon juice and baking soda to safely extract the stain. Bleach can also be used, but it is a very harsh chemical and you can get hurt from not using it properly. ")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("What do I do if I stain my clothes?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                DisclosureGroup(
                                    content: {
                                        Text("There are pros and cons to every period product. The common ones include tampons, pads, menstrual cups and discs, and period underwear. For every individual, some products work better than others. The most commonly used are tampons and pads.")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("What are the best menstrual products to use?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                
                                DisclosureGroup(
                                    content: {
                                        Text("Taking ibuprofen or any pain relief medication can help you with the cramps. Having a hot water bag is also helpful, but if the pain stops you from doing daily activities, it might be beneficial to reach out to a medical professional.")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("I have really bad cramps and cannot manage them. What do I do?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                
                                DisclosureGroup(
                                    content: {
                                        Text("Menstruation itself does not cause people pain, but many people who menstruate tend to experience cramps and other symptoms. Cramps and pelvic pain occur when someone experiences heavy flows, blood clots, and fibroids in their uterus. There are solutions to relieve this pain, so do not fret. Periods should not smell! When you are wearing a tampon or a pad, the products absorb the period and therefore there is no smell. Menstrual odor happens if the blood comes in contact with the air. If you are fearful of your periods causing an odor, you can change your pad as regularly as three times a day!")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("Do periods hurt? Do they smell?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                
                                DisclosureGroup(
                                    content: {
                                        Text("Free-bleeding is completely safe to do, but if you are concerned with staining your clothes or accidentally getting blood on things, you should try to go to the store or reach out to any trusted person near you. Typically, other people who go through periods will be willing to give up a pad or tampon to help you!")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("I got my period but have no pads/tampons near, what do I do?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                
                                DisclosureGroup(
                                    content: {
                                        Text("Yes, it is important to stay clean and fresh, especially near your vagina. However, be sure to avoid using antibacterial soaps and scented soaps in that area, as it can irritate that area, cause a change in the pH of the vagina, and may cause vaginal infections. Just use mild soaps and no wash clothes and you are good to go!")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("Can I shower/bathe when I have my period?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                
                                DisclosureGroup(
                                    content: {
                                        Text("Depending on your culture, you can be deemed a little “dirty” on your period. It doesn’t mean you are unhygienic or gross, it probably means you can’t enter certain parts of the house or any religious buildings. It is best to ask a family member about your culture’s significance of menstruation.")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("Am I “dirty” on my period?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                
                                DisclosureGroup(
                                    content: {
                                        Text("YouTube and the internet are amazing resources for ANY question, no matter how crazy it seems. Asking a trusted adult (preferably someone with a uterus) is a great option, and that can be a teacher, an aunt, a friend’s mom, and others.")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("I have a lot of questions regarding periods, but I am unable to talk about it with my mom. What should I do?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                
                                DisclosureGroup(
                                    content: {
                                        Text("You don’t lose enough to create any harm. Most of the “blood” you see is also uterus lining that is shedding and dead cells that were inside your uterus. But in terms of blood, you lose 1-5 tablespoons.")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("How much blood do I lose during my period?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                
                                DisclosureGroup(
                                    content: {
                                        Text("No, only those who were assigned female at birth and have a uterus. Those who approach menopause, had a hysterectomy, or a disease that caused abnormalities in the uterus do not have periods.")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("Does every person menstruate?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                
                                DisclosureGroup(
                                    content: {
                                        Text("Menopause is a natural transition in the lives of people who menstruate, where their bodies gradually stop producing eggs and menstrual cycles come to an end. It typically occurs from the ages of 45-55.")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("What is menopause?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                
                                DisclosureGroup(
                                    content: {
                                        Text("Yes, you can swim, but only if you wear a menstrual cup or tampon. Wearing a pad will not stop the blood flow in the water, and the pressure can cause a sudden heavy flow when you exit the water.")
                                            .padding(.top, 10)
                                            .foregroundColor(.black)
                                    },
                                    label: {
                                        Text("Can you swim if you are on your period?")
                                            .padding(.top, 30)
                                            .font(.headline)
                                            .foregroundColor(.black)
                                    }
                                )
                                Text("Fun Fact: Even dogs and cats get periods! Any mammal with a uterus will have a period! ")
                                    .font(.headline)
                                    .multilineTextAlignment(.center)
                                    .padding(.top,40)
                            }
                            .padding(.all, 30)
                        }
                })
        //    }
            
            
        }
    }
}


#Preview {
    FAQ()
}

