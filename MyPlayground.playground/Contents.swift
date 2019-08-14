import UIKit

//課題1-1  〜型〜

//1000と表示する
let itemA: Int = 1000

//こんにちはと表示する
let itemB: String = "こんにちは"

//42.195と表示する
let itemC: Double = 42.195

//tureと表示する
let itemD: String = "ture"




//課題1-2  〜四則演算〜

//valueAに100を代入
let valueA: Int = 100

//valueBに20を代入
let valueB: Int = 20

print(valueA + valueB)            //足し算
print(valueA - valueB)            //引き算
print(valueA * valueB)            //掛け算
print(valueA / valueB)            //割り算




//課題1-3  〜if文〜

//valueCに値をd代入する
var valueC: Int = 178

if valueC < 10 {
    print("\(valueC)は一桁の値です")       //valueCが〜の時、値は一桁ですと表示
}
else if valueC < 100 {
    print("\(valueC)は二桁の値です")       //valueCが〜の時、値は二桁ですと表示
}
else if valueC < 1000 {
    print("\(valueC)は三桁です")         //valueCが〜の時、値は三桁ですと表示
}
else if valueC < 10000 {
    print("\(valueC)は四桁です")         //valueCが〜の時、値は四桁ですと表示
}




//課題1-4  〜switch文〜
switch valueC
{
//0~9
case 0...9:
    print("\(valueC)は一桁です")
//10~99
case 10...99:
    print("\(valueC)は二桁です")
//100~999
case 100...999:
    print("\(valueC)は三桁です")
//1000以上
default:
    print("\(valueC)は四桁です")
}




//課題1-5  〜関数単一の引数〜

//Int型の引数valueを持つ関数calculationAを作成
func calculationA(value: Int){
    //valueに10をかける
    print(value * 10)
}
//10倍された値を出力
calculationA(value: 10)




//課題1-6  〜関数複数の引数〜

//Int型の引数valueA,valueBを持つ関数calculationBを作成。
//valueAに100,valueBに30を渡し、割り算したあまりを呼び出し。
func calculationB(valueA: Int ,valueB: Int){
    print(valueA % valueB)
}
calculationB(valueA: 100, valueB: 30)




//課題1-7  〜関数の戻り値〜

//Int型の引数valueA,valueBとInt型の戻り値を返す関数calculationCを作成。
//valueAに40,valueBに25を渡し足し算した値を戻り値で返す。
func calculationC(valueA: Int, valueB: Int) -> Int{
    return valueA + valueB
}
calculationC(valueA: 40, valueB: 25)

let sum: Int = calculationC(valueA: 40, valueB: 25)

if (sum % 2) == 0{
    //偶数の場合
    print("結果演算\(sum)は偶数です")
}
else{
    //奇数の場合
    print("結果演算\(sum)は奇数です")
}




//課題1-8  〜クラスのインスタンス〜

//classHogeAを作成
class HogeA{
    //表示する関数putを作成
    func put(){
        print("クラスAインスタンスです")
    }
}
//インスタンスを作る
let insA = HogeA()

//クラスの関数を呼び出し
insA.put()




//課題1-9  〜クラスのインスタンスと関数〜

//classHogeBを作成
class HogeB{
    //表示するString型の引数nameを持つ関数putNameを作成
    func putname(name: String){
        print("私の名前は\(name)です")
    }
}
//インスタンスを作る
let takashi = HogeB()
let ken = HogeB()

takashi.putname(name: "たかし")
ken.putname(name: "けん")




//課題1-10  〜イニシャライザ〜

//class名
class HogeC{
    init(name: String){
        print("私の名前は\(name)です")
    }
}
//定数はyamada,出力は「やまだ」,定数はmiyata出力は「みやた」とする。
let yamada: HogeC = HogeC(name: "やまだ")
let miyata: HogeC = HogeC(name: "みやた")




//課題1-11  〜Enum〜

//EnumをUserという名前で定義
enum User: String {
    case name      = "名前"
    case age       = "年齢"
    case bloodType = "血液型"
}
//nameを持つ定数userを宣言
let user: User = User.name

switch user{
case .name:
    //名前を出力
    print(User.name.rawValue)
case .age:
    //年齢を出力
    print(User.name.rawValue)
case .bloodType:
    //血液型を出力
    print(User.name.rawValue)
}




//課題1-12  〜for文〜

//1〜50までの数値を出力
for i in 1...50 {
    //表示する
    print(i)
}




//課題1-13  〜配列（追加）〜

//Int型配列変数valueEを定義
var valueE: [Int] = [0]
//for文を用いて1〜50の値を代入
for i in 1...50 {
    valueE.append(i)
}
//表示する
print(valueE)




//課題1-14  〜配列（削除）〜

//String型配列変数valueFを定義
var valueF: [String] = ["リュウ","ケン","ナッシュ","ガイル","べガ","フェロイン"]
//ナッシュを配列から削除
valueF.remove(at: 2)
//表示する
print(valueF)




//課題1-15  〜配列（ソート）〜

//Int型配列定数valueGを定義
var valueG: [Int] = [5,4,100,49,30,1,12,0]

//昇順
valueG.sort { $0 < $1 }
print(valueG)

//降順
valueG.sort { $0 > $1 }
//表示する
print(valueG)




//課題1-16  〜配列（要素数）〜

//課題1-15で定義したvalueGの配列の数を出力
print(valueG.count)




//課題1-17  〜辞書型〜

//辞書型の定数valueHを宣言
let valueH = ["a": 1,"b": 2,"c": 3]
//bの値を出力
print(valueH["b"])     //警告は無視しても構わない



//課題1-18  〜Optional〜

//課題1-17で定義したvalueHのbの値をOptional Bindingを用いて出力
if let suji = valueH["b"]{
    //出力
    print(suji)
}



// 課題1-19  〜nil〜

// 課題1-17で定義したvalueHのkの値をOptional Bindingを用いる
if let moji = valueH["k"]{
    print(moji)
} else {
    // g出力
    print("値はnillです")
    
}



// 課題1-20  〜総復習〜

// valueIを宣言
let valueI: [Any?] = [1,"こんにちわ","こんばんわ",nil,3,100,"よろしく",nil,"お願いします。"]

// 配列は0から始まるのでvalueIの数 -1
for i in 0...valueI.count - 1 {
    
    // nilの時の判断
    if valueI[i] == nil {
        print("値はnilです")
    }
    
    // valueIをそれぞれの型にダウンキャスティングできるか確認
    if let value: Int = valueI[i] as? Int {
        print("数値は\(value)です。")
    } else if let string = valueI[i] as? String {
        print(string)
    }
}
