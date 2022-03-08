//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by chamuel castillo on 2/17/22.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - PROPERTIES
    
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                    
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        
    }
}
    
    struct RipeningStagesView_Previews: PreviewProvider {
        static var previews: some View {
            RipeningStagesView(ripeningStages: ripeningData)
        }
    }
