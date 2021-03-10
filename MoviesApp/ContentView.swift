import SwiftUI

struct ContentView: View {
    
    @State var genre = 0
    @State var tabBar = 0
    @State var searcher = ""
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.7), Color.red.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            
            VStack {
                //.....Headline.......
                HStack {
                    Text("Movies")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                        .padding(.leading)
                    Spacer()
                    TextField("Search", text: $searcher)
                        .frame(width: UIScreen.main.bounds.width - 230, height: 45)
                        .padding(.leading, 15)
                        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.9))
                        .cornerRadius(20)
                    
//                    Spacer()
                    Button(action: {
                        
                    },
                    label: {
                        ZStack{
                            Circle()
                                .frame(width: 45, height: 45)
                                .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                                .shadow(radius: 10)
                                .padding(5)
                                .padding(.trailing,5)
                            
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                        }
                    })
                    
                }
                
                //......Sections......
                HStack(alignment: .center, spacing: 0){
                    Spacer()
                    Button(action: {
                        self.genre = 0
                    },
                    label: {
                        if self.genre == 0 {
                            VStack(spacing: 3) {
                                Text("Latest")
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                                    .font(.headline)
                                Rectangle()
                                    .frame(width: 40, height: 3, alignment: .center)
                            }
                        }else {
                            Text("Latest")
                                .fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                .font(.headline)
                        }
                    })
                    Spacer()
                    Button(action: {
                        self.genre = 1
                    },
                    label: {
                        if self.genre == 1 {
                            VStack(spacing: 3) {
                                Text("Action")
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                                    .font(.headline)
                                Rectangle()
                                    .frame(width: 40, height: 3, alignment: .center)
                            }
                        }else {
                            Text("Action")
                                .fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                .font(.headline)
                        }
                    })
                    Spacer()
                    Button(action: {
                        self.genre = 2
                    },
                    label: {
                        if self.genre == 2 {
                            VStack(spacing: 3) {
                                Text("Drama")
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                                    .font(.headline)
                                Rectangle()
                                    .frame(width: 40, height: 3, alignment: .center)
                            }
                        }else {
                            Text("Drama")
                                .fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                .font(.headline)
                        }
                    })
                    Spacer()
                    Group {
                        Button(action: {
                            self.genre = 3
                        },
                        label: {
                            if self.genre == 3 {
                                VStack(spacing: 3) {
                                    Text("Fiction")
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                        .font(.headline)
                                    Rectangle()
                                        .frame(width: 40, height: 3, alignment: .center)
                                }
                            }else {
                                Text("Fiction")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                    .font(.headline)
                            }
                        })
                        Spacer()
                        Button(action: {
                            self.genre = 4
                        },
                        label: {
                            if self.genre == 4 {
                                VStack(spacing: 3) {
                                    Text("Camedy")
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                        .font(.headline)
                                    Rectangle()
                                        .frame(width: 45, height: 3, alignment: .center)
                                }
                            }else {
                                Text("Camedy")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                    .font(.headline)
                            }
                    })
                    }
                    Spacer()
                    
                    
                    
                    
                }.animation(.default).padding(.all,5)
                Spacer()
                //....Movies...
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    
                    HStack {
                        Image("mov_0")
                            .resizable()
                            .frame(width: 320, height: 550, alignment: .leading)
                            .scaledToFit()
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 12, y: 15)
                            .padding()
                        Image("mov_1")
                            .resizable()
                            .frame(width: 320, height: 550, alignment: .leading)
                            .scaledToFit()
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 12, y: 15)
                            .padding()
                        Image("mov_2")
                            .resizable()
                            .frame(width: 320, height: 550, alignment: .leading)
                            .scaledToFit()
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 12, y: 15)
                            .padding()
                        Image("mov_3")
                            .resizable()
                            .frame(width: 320, height: 550, alignment: .leading)
                            .scaledToFit()
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 12, y: 15)
                            .padding()
                        Image("mov_4")
                            .resizable()
                            .frame(width: 320, height: 550, alignment: .leading)
                            .scaledToFit()
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 12, y: 15)
                            .padding()
                        Image("mov_5")
                            .resizable()
                            .frame(width: 320, height: 550, alignment: .leading)
                            .scaledToFit()
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 12, y: 15)
                            .padding()
                    }
                    
                    
                    Spacer()
                }
                
                //....Bar_Row...
                ZStack{
                    Capsule()
                        .frame(width: UIScreen.main.bounds.width - 50, height: 60, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.8))
                        .shadow(radius: 10)
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            self.tabBar = 0
                        },
                        label: {
                            if self.tabBar == 0 {
                                ZStack {
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                                    Image(systemName: "house")
                                        .resizable()
                                        .frame(width: 23, height: 23)
                                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                }
                            }else {
                                ZStack {
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.8))
                                        .shadow(radius: 5)
                                    Image(systemName: "house")
                                        .resizable()
                                        .frame(width: 23, height: 23)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                                }
                            }
                    })
                        Spacer()
                        Button(action: {
                            self.tabBar = 1
                        },
                        label: {
                            if self.tabBar == 1 {
                                ZStack {
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 23, height: 23)
                                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                }
                            }else {
                                ZStack {
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.8))
                                        .shadow(radius: 5)
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 23, height: 23)
                                        .foregroundColor(Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
                                }
                            }
                    })
                        Spacer()
                        Button(action: {
                            self.tabBar = 2
                        },
                        label: {
                            if self.tabBar == 2 {
                                ZStack {
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(Color(#colorLiteral(red: 0.04534740723, green: 0.4286349414, blue: 0.722648276, alpha: 1)))
                                    Image(systemName: "person")
                                        .resizable()
                                        .frame(width: 23, height: 23)
                                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                }
                            }else {
                                ZStack {
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.8))
                                        .shadow(radius: 5)
                                    Image(systemName: "person")
                                        .resizable()
                                        .frame(width: 23, height: 23)
                                        .foregroundColor(Color(#colorLiteral(red: 0.04534740723, green: 0.4286349414, blue: 0.722648276, alpha: 1)))
                                }
                            }
                    })
                        Spacer()
                    }.animation(.default)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
