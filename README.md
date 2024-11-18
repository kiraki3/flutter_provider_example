# flutter_provider_example

## ChangeNotifierProvider를 통한 상태 관리

### 개요
`Provider`는 Flutter에서 상태 관리 라이브러리로, `ChangeNotifier`와 함께 사용하여 앱의 상태를 관리하고 UI에 변화를 반영할 수 있게 도와줍니다. `ChangeNotifier`는 상태 변화 시 이를 구독하는 위젯들에 알림을 보내는 역할을 합니다.

#### 사용법
##### ChangeNotifierProvider
ChangeNotifierProvider를 사용하여 상태 관리 객체를 앱에 제공하고, 자식 위젯들이 상태를 구독할 수 있게 합니다.

##### ChangeNotifier
ChangeNotifier를 상속받은 클래스에서 상태를 관리하고, 상태 변화 시 notifyListeners()를 호출하여 구독 중인 위젯들에게 알림을 보냅니다.

##### Consumer
Consumer 위젯을 사용하여 상태가 변경되면 UI를 자동으로 업데이트하도록 설정합니다.

#### 핵심 개념
ChangeNotifierProvider: 상태 관리 객체를 하위 위젯에 제공.
ChangeNotifier: 상태를 관리하고, notifyListeners()로 상태 변화를 알림.
Consumer: 상태 변화를 구독하고 UI를 업데이트하는 위젯.
