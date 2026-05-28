# 🧠 visionOS Playground Tutorials

![Platform](https://img.shields.io/badge/platform-visionOS-blue)
![Language](https://img.shields.io/badge/language-Swift-orange)
![Framework](https://img.shields.io/badge/framework-SwiftUI-green)
---

# Chapter 2 - Present common controls in an ornament

## 📌 Summary (요약)

- oranment를 사용하여 메인 창 외의 창을 만들어보고 이를 활용하여 화면을 다채롭게 꾸며본다

## 🧠 What I Learned (배운 점)

- oranment의 사용법과 기능
- 각 기능별 코드를 어떻게 분리하고 구성하는지
- Environment property의 기능

## 🔍 Key Concepts (핵심 개념)

- 메인창 외의 메뉴 바를 만드는 방법
- Environment property를 활용하여 윈도우 화면과 각 화면의 상태를 구현하는 방법

## 💡 What Was Interesting (흥미로웠던 점)

- 메인 윈도우에서 새로운 윈도우를 사용하는 방법을 알게 된 점이 가장 흥미로웠음
- @Environment, @previewable과 같은 property wrapper가 어떤식으로 뷰의 상태를 조정하는지를 확인할 수 있어 좋았다

## ❗ Difficulties (어려웠던 점)

- 코드가 각 기능마다 구조화되어있는 점이 이해하기에는 매우 좋았지만 따라 치면서도 어디에 종속되어있는 코드인지를 찾아보고 하는 점이 조금 어렵게 다가왔다.
- 새로운 코드들이 많은 편이라 해당 부분을 이해하는 점이 어려웠다.

## ❓ Questions (궁금한 점)

- @Environment(\.isEnabled)는 무엇이고 어떠한 기능을 하는가

> 상위 뷰에서 해당하는 뷰를 활성화 상태로 하였는지 아닌지를 판단하는 프로퍼티. 만약 텍스트를 입력중일 경우 isEnabled가 True기 때문에 텍스트의 길이에 따라 유동적으로 높이가 변하게 되고 입력을 마친 후에는 disabled가 True가 되면서 뷰의 높이가 고정된 상태로 콘텐츠가 만들어지게 되는 구조

- @Previewable은 왜 사용한건가?

> 미리보기를 확인하기 위해선 별도의 구조체가 또 필요하지만 해당 프로퍼티로 따로 구조체를 만들지 않고 미리보기에서 내용을 확인이 가능

- Hashable, Codable의 의미는 무엇인가?

> 현재 코드에선 윈도우를 만들 때 해당하는 데이터를 넘겨주어야 함. 이 때 codable을 붙여주면 해당 데이터를 자동으로 json형태의 데이터로 인코딩했다가 사용 시 다시 데이터 형태로 디코딩을 자동으로 할 수 있게 해줌. hashable은 데이터의 고유성을 위해 사용되는 것으로 내용에 따라 고유 해쉬값을 부여하여 구분이 가능하도록 해주는 형태

## 🚀 Next Step (다음 단계)

- 각 다중 윈도우가 다른 작업을 진행할 수 있도록 여러 개를 구현해보기
- 각 윈도우의 기능을 구현할 때 이벤트를 어떻게 전달해야하는지 알아보기
- 다중 윈도우의 상태를 메인 윈도우에서 관리하는 방법 알아보기
