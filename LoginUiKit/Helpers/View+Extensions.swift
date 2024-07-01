

import SwiftUI

// custom extensions

extension View {
    
    @ViewBuilder
    func hSpacing(_ alignment:Alignment) -> some View{
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    @ViewBuilder
    func vSpacing(_ alignment:Alignment) -> some View{
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
    
    //Disable with Opacity
    @ViewBuilder
    func disableWithOpacity(_ condition:Bool) -> some View{
        self
            .disabled(condition)
            .opacity(condition ? 0.5 : 1.0)
        
    }
    
}
