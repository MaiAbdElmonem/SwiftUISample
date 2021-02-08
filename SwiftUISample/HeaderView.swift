//
//  HeaderView.swift
//  SwiftUISample
//
//  Created by Mai Abd Elmonem on 08/02/2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
      ZStack(alignment: .top) {
        Image("Mask").resizable().frame(maxWidth: .infinity, maxHeight: 220).ignoresSafeArea()
        Spacer()
        VStack {
           HStack {
           Button(action: {
            print("button pressed")
           }) {
            Image("ic_edit")
           }.frame(width: 22, height: 23)
          .padding(.leading, 20)
            
          Spacer()
            
          Button(action: {
            print("button pressed")
          }) {
            Image("ic_back")
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
        }
      }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
