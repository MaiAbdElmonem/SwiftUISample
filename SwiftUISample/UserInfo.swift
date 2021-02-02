//
//  UserInfo.swift
//  SwiftUISample
//
//  Created by Mai Abd Elmonem on 02/02/2021.
//

import SwiftUI

struct UserInfo: View {
//  let title: String
//  let subTitle: String
//
//  init(title: String, subTitle: String) {
//      self.title = title
//      self.subTitle = subTitle
//  }
  var body: some View {
    
    HStack(alignment: .center, spacing: 28) {
      VStack(alignment: .trailing, spacing: 30) {
        Text("محمد أحمد")
        Text("فكرة")
        Text("التقنية")
        Text("تطبيقات الجوال")
        Text("٢٠١٩")
      }.foregroundColor(Color.init("SteelBlue"))
      
      VStack(alignment: .trailing, spacing: 30) {
        Text("صاحب المنشأة")
        Text("نوع المنشأة")
        Text("القطاع")
        Text("تخصص المنشأة")
        Text("تاريخ التأسيس")
      }.foregroundColor(Color.init("DarkSlateGray"))
     }
    
     .padding(.top, 112)
    .padding(.leading, 15)
    .padding(.trailing, 15)
  }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo()
    }
}
