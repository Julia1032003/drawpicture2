import UIKit
import PlaygroundSupport
let rect = CGRect(x: 0, y: 0, width: 1000, height: 1000)
let backgroundView = UIView(frame: rect)
backgroundView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)

//最外邊輪廓形狀-白色
let bigPath = UIBezierPath()
bigPath.move(to: CGPoint(x: 90, y: 178))
bigPath.addLine(to: CGPoint(x: 300, y: 530))
bigPath.addLine(to: CGPoint(x: 160, y: 530))
bigPath.addLine(to: CGPoint(x: 115, y: 620))
bigPath.addLine(to: CGPoint(x: 350, y: 620))
bigPath.addLine(to: CGPoint(x: 440, y: 770))
bigPath.addLine(to: CGPoint(x: 780, y: 178))
bigPath.addLine(to: CGPoint(x: 580, y: 178))
//半圓形的部分
bigPath.move(to: CGPoint(x: 580, y: 178))
bigPath.addCurve(to: CGPoint(x: 290, y: 178),
                  controlPoint1: CGPoint(x: 550, y: 5),
                  controlPoint2: CGPoint(x: 320, y: 5))
bigPath.close()

let bigShapeLayer = CAShapeLayer()
bigShapeLayer.path = bigPath.cgPath
let bigView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
bigView.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 1)
bigView.layer.mask = bigShapeLayer


//第二個三角形-黑色
let secondPath = UIBezierPath()
secondPath.move(to: CGPoint(x: 120, y: 195))
secondPath.addLine(to: CGPoint(x: 755, y: 195))
secondPath.addLine(to: CGPoint(x: 440, y: 740))
secondPath.close()

let secondShapeLayer = CAShapeLayer()
secondShapeLayer.path = secondPath.cgPath
let secondView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
secondView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue:0/255, alpha: 1)
secondView.layer.mask = secondShapeLayer


//第三個三角形-黃色
let thirdPath = UIBezierPath()
thirdPath.move(to: CGPoint(x: 135, y: 205))
thirdPath.addLine(to: CGPoint(x: 735, y: 205))
thirdPath.addLine(to: CGPoint(x: 440, y: 720))
thirdPath.close()

let thirdShapeLayer = CAShapeLayer()
thirdShapeLayer.path = thirdPath.cgPath
let thirdView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
thirdView.backgroundColor = UIColor(red: 255/255, green: 191/255, blue:0/255, alpha: 1)
thirdView.layer.mask = thirdShapeLayer

//身體
let bodyPath = UIBezierPath()
bodyPath.move(to: CGPoint(x: 370, y: 250))
bodyPath.addCurve(to: CGPoint(x: 500, y: 250),
                  controlPoint1: CGPoint(x: 130, y: 640),
                  controlPoint2: CGPoint(x: 750, y: 640))
bodyPath.close()
let bodyShapeLayer = CAShapeLayer()
bodyShapeLayer.path = bodyPath.cgPath
let bodyView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
bodyView.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
bodyView.layer.mask = bodyShapeLayer

let outlinebodyPath = UIBezierPath()
outlinebodyPath.move(to: CGPoint(x: 360, y: 250))
outlinebodyPath.addCurve(to: CGPoint(x: 510, y: 250),
                  controlPoint1: CGPoint(x: 130, y: 650),
                  controlPoint2: CGPoint(x: 750, y: 650))
outlinebodyPath.close()
let outlinebodyShapeLayer = CAShapeLayer()
outlinebodyShapeLayer.path = outlinebodyPath.cgPath
let outlinebodyView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
outlinebodyView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
outlinebodyView.layer.mask = outlinebodyShapeLayer

//左手
let lhandPath = UIBezierPath()
lhandPath.move(to: CGPoint(x: 330, y: 250))
lhandPath.addCurve(to: CGPoint(x: 360, y: 250),
                  controlPoint1: CGPoint(x: 200, y: 550),
                  controlPoint2: CGPoint(x: 300, y: 550))

lhandPath.close()
let lhandShapeLayer = CAShapeLayer()
lhandShapeLayer.path = lhandPath.cgPath
let lhandView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
lhandView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
lhandView.layer.mask = lhandShapeLayer

//右手
let rhandPath = UIBezierPath()
rhandPath.move(to: CGPoint(x: 545, y: 250))
rhandPath.addCurve(to: CGPoint(x: 520, y: 250),
                  controlPoint1: CGPoint(x: 670, y: 550),
                  controlPoint2: CGPoint(x: 550, y: 550))

rhandPath.close()
let rhandShapeLayer = CAShapeLayer()
rhandShapeLayer.path = rhandPath.cgPath
let rhandView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
rhandView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
rhandView.layer.mask = rhandShapeLayer


//頭-黑色
let headPath = UIBezierPath()
headPath.move(to: CGPoint(x: 565, y: 195))
headPath.addCurve(to: CGPoint(x: 305, y: 195),
                  controlPoint1: CGPoint(x: 550, y: 20),
                  controlPoint2: CGPoint(x: 320, y: 20))
headPath.move(to: CGPoint(x: 305, y: 195))
headPath.addLine(to: CGPoint(x: 290, y: 270))//1
headPath.addLine(to: CGPoint(x: 300, y: 270))//2
headPath.addLine(to: CGPoint(x: 310, y: 283))//3
headPath.addLine(to: CGPoint(x: 325, y: 270))//4
headPath.addLine(to: CGPoint(x: 330, y: 285))//5
headPath.addLine(to: CGPoint(x: 340, y: 280))//6
headPath.addLine(to: CGPoint(x: 345, y: 290))//7
headPath.addLine(to: CGPoint(x: 360, y: 280))//8
headPath.addLine(to: CGPoint(x: 370, y: 295))//9
headPath.addLine(to: CGPoint(x: 385, y: 287))//10
headPath.addLine(to: CGPoint(x: 400, y: 300))//11
headPath.addLine(to: CGPoint(x: 415, y: 280))//12
headPath.addLine(to: CGPoint(x: 435, y: 305))//13
headPath.addLine(to: CGPoint(x: 455, y: 280))//14
headPath.addLine(to: CGPoint(x: 470, y: 300))//15
headPath.addLine(to: CGPoint(x: 490, y: 285))//16
headPath.addLine(to: CGPoint(x: 500, y: 298))//17
headPath.addLine(to: CGPoint(x: 515, y: 285))//18
headPath.addLine(to: CGPoint(x: 528, y: 290))//19
headPath.addLine(to: CGPoint(x: 538, y: 275))//20
headPath.addLine(to: CGPoint(x: 550, y: 290))//21
headPath.addLine(to: CGPoint(x: 558, y: 278))//22
headPath.addLine(to: CGPoint(x: 565, y: 285))//23
headPath.addLine(to: CGPoint(x: 575, y: 270))//24
headPath.addLine(to: CGPoint(x: 585, y: 265))//25
headPath.addLine(to: CGPoint(x: 565, y: 195))//26

headPath.close()

let headShapeLayer = CAShapeLayer()
headShapeLayer.path = headPath.cgPath
let headView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
headView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue:0/255, alpha: 1)
headView.layer.mask = headShapeLayer

//臉-白色
let facePath = UIBezierPath()
facePath.move(to: CGPoint(x: 515, y: 140))
facePath.addCurve(to: CGPoint(x: 355, y: 140),
                  controlPoint1: CGPoint(x: 480, y: 60),
                  controlPoint2: CGPoint(x: 400, y: 60))
facePath.move(to: CGPoint(x: 355, y: 140))
facePath.addLine(to: CGPoint(x: 305, y: 235))//左鬚
facePath.addLine(to: CGPoint(x: 326, y: 215))//1
facePath.addLine(to: CGPoint(x: 305, y: 260))//2
facePath.addLine(to: CGPoint(x: 310, y: 277))//3
facePath.addLine(to: CGPoint(x: 325, y: 264))//4
facePath.addLine(to: CGPoint(x: 330, y: 278))//5
facePath.addLine(to: CGPoint(x: 340, y: 274))//6
facePath.addLine(to: CGPoint(x: 345, y: 284))//7
facePath.addLine(to: CGPoint(x: 360, y: 274))//8
facePath.addLine(to: CGPoint(x: 370, y: 289))//9
facePath.addLine(to: CGPoint(x: 385, y: 281))//10
facePath.addLine(to: CGPoint(x: 400, y: 294))//11
facePath.addLine(to: CGPoint(x: 415, y: 274))//12
facePath.addLine(to: CGPoint(x: 435, y: 299))//13
facePath.addLine(to: CGPoint(x: 455, y: 274))//14
facePath.addLine(to: CGPoint(x: 470, y: 294))//15
facePath.addLine(to: CGPoint(x: 490, y: 279))//16
facePath.addLine(to: CGPoint(x: 500, y: 292))//17
facePath.addLine(to: CGPoint(x: 515, y: 279))//18
facePath.addLine(to: CGPoint(x: 525, y: 284))//19
facePath.addLine(to: CGPoint(x: 538, y: 269))//20
facePath.addLine(to: CGPoint(x: 550, y: 284))//21
facePath.addLine(to: CGPoint(x: 555, y: 269))//22
facePath.addLine(to: CGPoint(x: 565, y: 279))//23
facePath.addLine(to: CGPoint(x: 570, y: 264))//24
facePath.addLine(to: CGPoint(x: 546, y: 211))//25
facePath.addLine(to: CGPoint(x: 566, y: 236))//右鬚1
facePath.addLine(to: CGPoint(x: 515, y: 140))//右鬚2


facePath.close()

let faceShapeLayer = CAShapeLayer()
faceShapeLayer.path = facePath.cgPath
let faceView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
faceView.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 1)
faceView.layer.mask = faceShapeLayer


//眼框
let eyesPath = UIBezierPath()
//右眼框
eyesPath.move(to: CGPoint(x: 515, y: 140))
eyesPath.addQuadCurve(to: CGPoint(x: 450, y: 90), controlPoint: CGPoint(x: 525, y: 70))
eyesPath.close()
//左眼框
eyesPath.move(to: CGPoint(x: 355, y: 140))
eyesPath.addQuadCurve(to: CGPoint(x: 420, y: 90), controlPoint: CGPoint(x: 355, y: 70))
eyesPath.close()

let eyesShapeLayer = CAShapeLayer()
eyesShapeLayer.path = eyesPath.cgPath
let eyesView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
eyesView.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
eyesView.layer.mask = eyesShapeLayer

//眼球
//右眼球
let eyeballrPath = UIBezierPath(ovalIn: CGRect(x: 465, y: 95, width: 45, height: 50))
let eyeballrShapeLayer = CAShapeLayer()
eyeballrShapeLayer.path = eyeballrPath.cgPath
let eyeballrView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
eyeballrView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
eyeballrView.layer.mask = eyeballrShapeLayer
//左眼球
let eyeballlPath = UIBezierPath(ovalIn: CGRect(x: 365, y: 95, width: 45, height: 50))
let eyeballlShapeLayer = CAShapeLayer()
eyeballlShapeLayer.path = eyeballlPath.cgPath
let eyeballlView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
eyeballlView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
eyeballlView.layer.mask = eyeballlShapeLayer

//瞳孔
//右瞳孔
let pupilrPath = UIBezierPath(ovalIn: CGRect(x: 480, y: 100, width: 10, height: 10))
let pupilrShapeLayer = CAShapeLayer()
pupilrShapeLayer.path = pupilrPath.cgPath
let pupilrView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
pupilrView.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
pupilrView.layer.mask = pupilrShapeLayer
//左曈孔
let pupillPath = UIBezierPath(ovalIn: CGRect(x: 380, y: 100, width: 10, height: 10))
let pupillShapeLayer = CAShapeLayer()
pupillShapeLayer.path = pupillPath.cgPath
let pupillView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
pupillView.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
pupillView.layer.mask = pupillShapeLayer


//嘴巴
let mouthPath = UIBezierPath()
mouthPath.move(to: CGPoint(x: 470, y: 170))
mouthPath.addQuadCurve(to: CGPoint(x: 400, y: 170), controlPoint: CGPoint(x: 435, y: 120))
mouthPath.addQuadCurve(to: CGPoint(x: 470, y: 170), controlPoint: CGPoint(x: 435, y: 130))
mouthPath.close()

let mouthShapeLayer = CAShapeLayer()
mouthShapeLayer.path = mouthPath.cgPath
let mouthView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
mouthView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue:0/255, alpha: 1)
mouthView.layer.mask = mouthShapeLayer

//鼻子
let nosePath = UIBezierPath()
//右鼻孔
nosePath.move(to: CGPoint(x: 460, y: 140))
nosePath.addQuadCurve(to: CGPoint(x: 440, y: 142), controlPoint: CGPoint(x: 450, y: 130))
nosePath.addQuadCurve(to: CGPoint(x: 460, y: 140), controlPoint: CGPoint(x: 450, y: 140))
nosePath.close()
//左鼻孔
nosePath.move(to: CGPoint(x: 410, y: 140))
nosePath.addQuadCurve(to: CGPoint(x: 430, y: 142), controlPoint: CGPoint(x: 420, y: 130))
nosePath.addQuadCurve(to: CGPoint(x: 410, y: 140), controlPoint: CGPoint(x: 420, y: 140))
nosePath.close()

let noseShapeLayer = CAShapeLayer()
noseShapeLayer.path = nosePath.cgPath
let noseView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
noseView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue:0/255, alpha: 1)
noseView.layer.mask = noseShapeLayer

//左腳
let lfootPath = UIBezierPath()
lfootPath.move(to: CGPoint(x: 375, y: 520))
lfootPath.addLine(to: CGPoint(x: 365, y: 565))
lfootPath.addLine(to: CGPoint(x: 300, y: 565))
lfootPath.addLine(to: CGPoint(x: 290, y: 580))
lfootPath.addLine(to: CGPoint(x: 405, y: 580))
lfootPath.addLine(to: CGPoint(x: 395, y: 565))
lfootPath.addLine(to: CGPoint(x: 405, y: 520))
lfootPath.close()

let lfootShapeLayer = CAShapeLayer()
lfootShapeLayer.path = lfootPath.cgPath
let lfootView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
lfootView.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
lfootView.layer.mask = lfootShapeLayer

let linelfootPath = UIBezierPath()
linelfootPath.move(to: CGPoint(x: 370, y: 520))
linelfootPath.addLine(to: CGPoint(x: 360, y: 560))
linelfootPath.addLine(to: CGPoint(x: 300, y: 560))
linelfootPath.addLine(to: CGPoint(x: 285, y: 585))
linelfootPath.addLine(to: CGPoint(x: 415, y: 585))
linelfootPath.addLine(to: CGPoint(x: 400, y: 565))
linelfootPath.addLine(to: CGPoint(x: 410, y: 520))
linelfootPath.close()

let linelfootShapeLayer = CAShapeLayer()
linelfootShapeLayer.path = linelfootPath.cgPath
let linelfootView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
linelfootView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
linelfootView.layer.mask = linelfootShapeLayer

//右腳
let rfootPath = UIBezierPath()
rfootPath.move(to: CGPoint(x: 485, y: 520))
rfootPath.addLine(to: CGPoint(x: 495, y: 565))
rfootPath.addLine(to: CGPoint(x: 550, y: 565))
rfootPath.addLine(to: CGPoint(x: 560, y: 580))
rfootPath.addLine(to: CGPoint(x: 465, y: 580))
rfootPath.addLine(to: CGPoint(x: 470, y: 565))
rfootPath.addLine(to: CGPoint(x: 460, y: 520))
rfootPath.close()

let rfootShapeLayer = CAShapeLayer()
rfootShapeLayer.path = rfootPath.cgPath
let rfootView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
rfootView.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
rfootView.layer.mask = rfootShapeLayer

let linerfootPath = UIBezierPath()
linerfootPath.move(to: CGPoint(x: 490, y: 520))
linerfootPath.addLine(to: CGPoint(x: 500, y: 560))
linerfootPath.addLine(to: CGPoint(x: 555, y: 560))
linerfootPath.addLine(to: CGPoint(x: 570, y: 585))
linerfootPath.addLine(to: CGPoint(x: 455, y: 585))
linerfootPath.addLine(to: CGPoint(x: 465, y: 565))
linerfootPath.addLine(to: CGPoint(x: 455, y: 520))
linerfootPath.close()

let linerfootShapeLayer = CAShapeLayer()
linerfootShapeLayer.path = linerfootPath.cgPath
let linerfootView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
linerfootView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
linerfootView.layer.mask = linerfootShapeLayer


//球棒
let stickPath = UIBezierPath()
stickPath.move(to: CGPoint(x: 320, y: 560))
stickPath.addLine(to: CGPoint(x: 330, y: 560))
stickPath.addLine(to: CGPoint(x: 693, y: 188))
stickPath.addLine(to: CGPoint(x: 700, y: 200))
stickPath.addLine(to: CGPoint(x: 330, y: 590))
stickPath.addLine(to: CGPoint(x: 300, y: 590))
stickPath.close()

let stickShapeLayer = CAShapeLayer()
stickShapeLayer.path = stickPath.cgPath
let stickView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
stickView.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
stickView.layer.mask = stickShapeLayer

let linestickShapeLayer = CAShapeLayer()
linestickShapeLayer.path = stickPath.cgPath
linestickShapeLayer.strokeColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
linestickShapeLayer.lineWidth = 10
linestickShapeLayer.fillColor = UIColor.clear.cgColor
stickView.layer.addSublayer(linestickShapeLayer)

//let linestickPath = UIBezierPath()
//linestickPath.move(to: CGPoint(x: 320, y: 557))
//linestickPath.addLine(to: CGPoint(x: 330, y: 557))
//linestickPath.addLine(to: CGPoint(x: 690, y: 185))
//linestickPath.addLine(to: CGPoint(x: 700, y: 190))
//linestickPath.addLine(to: CGPoint(x: 330, y: 595))
//linestickPath.addLine(to: CGPoint(x: 300, y: 595))
//linestickPath.close()

//let linestickShapeLayer = CAShapeLayer()
//linestickShapeLayer.path = linestickPath.cgPath
//let linestickView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
//linestickView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
//linestickView.layer.mask = linestickShapeLayer


//球棒矩形
let plankPath = UIBezierPath()
plankPath.move(to: CGPoint(x: 175, y: 550))
plankPath.addLine(to: CGPoint(x: 325, y: 550))
plankPath.addLine(to: CGPoint(x: 300, y: 600))
plankPath.addLine(to: CGPoint(x: 148, y: 600))
plankPath.close()

let plankShapeLayer = CAShapeLayer()
plankShapeLayer.path = plankPath.cgPath
let plankView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
plankView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
plankView.layer.mask = plankShapeLayer

//擊球處
let splankPath = UIBezierPath()
splankPath.move(to: CGPoint(x: 178, y: 555))
splankPath.addLine(to: CGPoint(x: 202, y: 555))
splankPath.addLine(to: CGPoint(x: 182, y: 595))
splankPath.addLine(to: CGPoint(x: 157, y: 595))
splankPath.close()

let splankShapeLayer = CAShapeLayer()
splankShapeLayer.path = splankPath.cgPath
let splankView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
splankView.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 1)
splankView.layer.mask = splankShapeLayer


//圖層疊圖
backgroundView.addSubview(bigView)
backgroundView.addSubview(secondView)
backgroundView.addSubview(thirdView)
backgroundView.addSubview(linelfootView)
backgroundView.addSubview(lfootView)
backgroundView.addSubview(linerfootView)
backgroundView.addSubview(rfootView)
backgroundView.addSubview(outlinebodyView)
backgroundView.addSubview(bodyView)
backgroundView.addSubview(lhandView)
backgroundView.addSubview(rhandView)
backgroundView.addSubview(headView)
backgroundView.addSubview(faceView)
backgroundView.addSubview(eyesView)
backgroundView.addSubview(eyeballrView)
backgroundView.addSubview(eyeballlView)
backgroundView.addSubview(pupilrView)
backgroundView.addSubview(pupillView)
backgroundView.addSubview(mouthView)
backgroundView.addSubview(noseView)
//backgroundView.addSubview(linestickView)
backgroundView.addSubview(stickView)
backgroundView.addSubview(plankView)
backgroundView.addSubview(splankView)

PlaygroundPage.current.liveView = backgroundView
