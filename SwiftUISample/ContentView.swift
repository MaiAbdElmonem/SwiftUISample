//
//  ContentView.swift
//  SwiftUISample
//
//  Created by Mai Abd Elmonem on 26/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
      ZStack(alignment: .top) {// ContainerView
        Color("ghostWhite")
        
        ZStack {
        Image("Mask").resizable().frame(maxWidth: .infinity, maxHeight: 220).ignoresSafeArea()
        }
        Spacer().frame(height: 200)
        ScrollView(.vertical, showsIndicators: false) {
        VStack {
           HStack {
           Button(action: {
            print("button pressed")
           }) {
            Image("ic_edit").renderingMode(.original)
           }.frame(width: 22, height: 23)
          .padding(.leading, 20)
            
          Spacer()
            
          Button(action: {
            print("button pressed")
          }) {
            Image("ic_back").renderingMode(.original)
          }.frame(width: 22, height: 23)
            .padding(.trailing, 13)
        }
           .padding(.top, 20)
           
          HStack(spacing: 8) {
          Spacer()
          Text("معلوماتك").foregroundColor(.white)
            Divider().frame(width: 4, height: 23).cornerRadius(2).background(Color.init("divider")).padding(.trailing, 18)
          }.padding(.top, 18)
          
          Spacer().frame(height: 30)
            
//          ScrollView(.vertical, showsIndicators: false) {
            
          VStack(alignment:.center) {
                         
              VStack(alignment: .trailing) {
                UserInfo()
                Divider().frame(height: 0.5).background(Color.init("CadetGrey"))
                  .padding(.horizontal, 14)
                  .padding(.top, 20)
              }
              
              VStack(alignment: .trailing, spacing: 18) {
                Text("نبذة عنك").foregroundColor(Color.init("SteelBlue"))
                Text("هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً")
                  .foregroundColor(Color.init("AuroMetalSaurus"))
                  .multilineTextAlignment(.trailing).lineSpacing(5)
              }
              .padding(.trailing, 12)
              .padding(.top, 14)
              .padding(.leading, 16)
              .padding(.bottom, 15)

            }.background(Color.white).cornerRadius(16)
            .padding(.bottom, 43)
//                          ZStack(alignment: .top) {
//
//                            Image("ic_avatar-bg").resizable().frame(width: 100, height: 100, alignment: .center)
//                          }.offset(y: -684)
          }
          .padding(.horizontal, 15)
        }
        
      }
      
    }
  
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
                     ContentView()
                          .previewDevice(PreviewDevice(rawValue: deviceName))
                          .previewDisplayName(deviceName)
                }
    }
}
#endif
