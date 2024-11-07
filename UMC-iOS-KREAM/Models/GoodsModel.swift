import Foundation

struct GoodsModel {
    let goodsImg: String
    let goodsName: String
    let goodsDescription: String
    let goodsPrice: Int
}

final class dummySavedModel {
    static let savedDatas: [GoodsModel] = [
        GoodsModel(goodsImg: "saved1.png", goodsName: "손오공이 잃어버린 머리띠 반쪽", goodsDescription: "손오공이 장난치다가 머리띠 반쪽 잘라서 어딘가 숨겨둔 역사속 물건!!", goodsPrice: 942192000),
        GoodsModel(goodsImg: "saved2.png", goodsName: "골드 반지", goodsDescription: "결혼 준비하는 당신?!\n약혼녀에게 이 반지를 선물하는 건 어때요?", goodsPrice: 12000),
        GoodsModel(goodsImg: "saved3.png", goodsName: "하얀 신발", goodsDescription: "짝퉁 나이키 신발!\n정말 푹신푹신해서 걷다가 졸려서 넘어지...", goodsPrice: 90000),
        GoodsModel(goodsImg: "saved4.png", goodsName: "에베레스트 다이아 반지", goodsDescription: "에베레스트 올라가서 다이아 구하고 만든 반지,,! 과연 이것을 누가 사갈것인가??", goodsPrice: 1292999000),
        GoodsModel(goodsImg: "saved5.png", goodsName: "아디다스다 신발", goodsDescription: "아디다스 처럼 보이지만 아디다스가 아닐지도 모르는 신발 이 신발의 주인은 너야~~", goodsPrice: 120000),
        GoodsModel(goodsImg: "saved7.png", goodsName: "테무 기타", goodsDescription: "그래도 소리는 납니다", goodsPrice: 10000),
        GoodsModel(goodsImg: "saved6.png", goodsName: "황제 잠옷", goodsDescription: "어느 나라의 황제가 입었다던 잠옷\n크리스마스 트리같이 보이는 디자인!", goodsPrice: 120000000),
        GoodsModel(goodsImg: "saved7.png", goodsName: "고장난 기타", goodsDescription: "블라블라블라블라\n블라블라블라블라블라", goodsPrice: 120000),
        GoodsModel(goodsImg: "saved4.png", goodsName: "에베레스트 반지", goodsDescription: "에베레스트 다이아 반지의 테무 버전!", goodsPrice: 12000),
        GoodsModel(goodsImg: "saved8.png", goodsName: "하얀 음료", goodsDescription: "이 음료를 마시면 건강해져요\n근데 어디가 건강해질까요? 한 번 마셔겼.....", goodsPrice: 120000)
    ]
}
