

import SwiftUI

struct ContentView: View {
    var body: some View {
        //상단에 VStack을 하나더 쌓는다.
        VStack {
            ARCLView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage()
                .offset(y: -110)
                //offset의 y값을 준만큼 패딩도 할당해줘야함
                .padding(.bottom, -110)
            
            VStack(alignment: .leading){
                HStack {
                    Text("경복궁")
                        .font(.title)
                        .padding(.bottom, 10)
                    
                    Text("서울")
                        .font(.caption)
                    
                }
                VStack {
                    Text("161 Sajik-ro, Sejongno, Jongno-gu, 서울특별시 South Korea")
                        .font(.footnote)
                        //폰트 색상 변경
                        .foregroundColor(.secondary)
                }
                //구분선 및 텍스트 추가
                Divider()
                    .padding()
                
                    Text("경북궁에 관하여")
                        .font(.title2)
                        .padding(.bottom, 10)
                Text("Gyeongbok Palace, was the main royal palace of the Joseon dynasty.")
            }

            .padding()
            //뷰를 상단으로 배치
            Spacer()
            
            MapView()
                .overlay(Circle().stroke(Color.red, lineWidth: 3))
                .padding(.bottom, -250)
                .ignoresSafeArea(edges: .all)
                .frame(width: 600.0)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
