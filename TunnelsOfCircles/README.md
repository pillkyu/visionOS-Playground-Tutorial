# 🧠 visionOS Playground Tutorials

![Platform](https://img.shields.io/badge/platform-visionOS-blue)
![Language](https://img.shields.io/badge/language-Swift-orange)
![Framework](https://img.shields.io/badge/framework-SwiftUI-green)
---

# Chapter 1 - Add depth to your app

## 📌 Summary (요약)

- visionOS의 시뮬레이터의 조작법에 대해 익히고, 2D 이미지에 깊이감을 주는 코드 구현을 통해 공간컴퓨팅의 기초를 학습한다.  

## 🧠 What I Learned (배운 점)

- Grid와 Stack의 차이
- ZStack을 통한 원의 중첩 표현 방식
- padding3D로 입체감을 표현하는 방식

## 🔍 Key Concepts (핵심 개념)

- 시뮬레이터의 조작법
- Depth를 조절함에 따라 원의 깊이감을 조절해보며 공간 컴퓨팅 내 3D형태의 이미지가 어떤식으로 표현되는지를 확인하는 것

## 💡 What Was Interesting (흥미로웠던 점)

- 생각보다 시뮬레이터에서 볼 수 있는 화면의 퀄리티가 좋아서 실 기기 없이도 어느정도의 개발은 충분히 가능할 것 같다
- State를 활용하여 화면을 이런식으로 조절하는 것이 가능하다는 것을 알 수 있었다

## ❗ Difficulties (어려웠던 점)

- 해당 코드에서는 크게 어려운 점은 존재하지 않았다.

## ❓ Questions (궁금한 점)

- 왜 Stack구조 대신 Grid, GridRow를 사용하여 코드를 작성했을까? 그 차이는 무엇일까?

> Grid를 사용하게 되면 내부 셀의 너비와 높이를 가장 높은 셀의 너비와 높이로 자동으로 맞추는 기능이 존재.
> 따라서 격자판과 같은 동일한 셀의 반복이 필요하다면 Grid로 짜는 것이 더 편리함.

- 왜 TunnelOfCirclesApp.swift 파일에서 windowResizablility를 사용하였을까?

> 이것을 사용하지 않으면 화면에서 윈도우 사이즈를 줄였을 때 내부 컨텐츠가 잘려서 나오게 됨. 하지만 윈도우 사이즈가 콘텐츠에 맞게
> 재설정이 되어 크기 조절이 불가능해짐. 따라서 컨텐츠 내부의 크기도 가변적으로 조정할 수 있어야 함

## 🚀 Next Step (다음 단계)

- 윈도우 내 다중 컨텐츠를 띄울 때와 컨텐츠간의 이동은 어떤식으로 표현해야할지 알아본다
- 윈도우의 화면에 따라 컨텐츠도 조절이 가능하도록 코드 설계해보기
