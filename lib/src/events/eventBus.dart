typedef void EventCallback(arg);

class EventBus {
  EventBus._internal(); //私有构造函数

  static EventBus _singleton = EventBus._internal();

  factory EventBus() => _singleton;

  var _emap = new Map<Object, List<EventCallback>>();

  // 添加订阅者
  void on(eventName, EventCallback f) {
    if (eventName == null || f == null) return;
    _emap[eventName] ??= new List<EventCallback>();
    _emap[eventName].add(f);
  }

  void off(eventName, EventCallback f) {
    var eventList = _emap[eventName];
    if (eventName == null || eventList == null) return;
    if (f == null) {
      _emap[eventName] = null;
    } else {
      eventList.remove(f);
    }
  }

  void emit(eventName, [args]) {
    var eventList = _emap[eventName];
    if (eventList == null) return;
    for (int i = eventList.length; i > 0; i--) {
      eventList[i](args);
    }
  }
}

var bus = new EventBus();