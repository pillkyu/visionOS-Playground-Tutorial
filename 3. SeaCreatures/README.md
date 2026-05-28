# 🧠 visionOS Playground Tutorials

![Platform](https://img.shields.io/badge/platform-visionOS-blue)
![Language](https://img.shields.io/badge/language-Swift-orange)
![Framework](https://img.shields.io/badge/framework-SwiftUI-green)
---

# Chapter 3 - Create 3D models in the Shared Space

## 📌 Summary (요약)

- 공간상에 3D 객체를 띄우는 것을 실습해본다

## 🧠 What I Learned (배운 점)

- reality composer pro를 사용하여 3D 객체를 생성하는 방법
- 한 윈도우 안에서 객체를 빼내서 다른 윈도우를 생성하는 기능

## 🔍 Key Concepts (핵심 개념)

- 3D 객체를 만들고 이를 새로운 윈도우에 띄워보는 것

## 💡 What Was Interesting (흥미로웠던 점)

- 새로운 윈도우를 만드는 방식에 대해서 배울 수 있어서 좋았고 객체를 공간상에서 회전할 때 해당하는 값을 저장하는 방식이 흥미로웠다.

## ❗ Difficulties (어려웠던 점)

- 아직까지도 xcode상의 좌표값을 해석하는게 어려운 것 같다. x, y, z값이 각각 어디로 향하는 것인지?에 대한 감을 잡기가 어렵다.

## ❓ Questions (궁금한 점)

- 객체를 선택할 때 왜 tabview를 사용하지 않고 navigationsplitview를 사용한것일까?

> 우선 tabview는 탭을 바꿀 때마다 전체 화면이 통째로 랜더링이 다시 되게 되는 반면 navigationsplitview를 사용하게 되면 Detail부분만 부드럽게 업데이트 되기 때문에
> 3D모델을 연속적으로 부드럽게 확인할 수 있다. 아예 페이지 변환을 하는것이 아니기 때문에 더 효과적인 것으로 보인다. 

- CGFloat는 무엇이고 왜 이런 타입을 사용하는가?

> CGFloat는 core graphics float의 약자로 요소의 위치나 크기를 사용할 때 사용하게 됨. 
> 각 기기마다의 픽셀 단위가 다르기 때문에 만약 float값으로 위치값을 정하면 기기에서 값이 다 깨지게 됨
> CGFloat는 이와 관계없이 모든 기기에서 동일한 비율과 크기로 부드럽게 랜더링이 가능함


## 🚀 Next Step (다음 단계)

- 지금까지 배웠던 것을 활용하여 실제 앱을 구현해본다.
- 하지만 지금은 조금 힘들 것 같아서 우선 이런식으로 앱을 만들 수 있구나만 알고 떠나겠습니다.
