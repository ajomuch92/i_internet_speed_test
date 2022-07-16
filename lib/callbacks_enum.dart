library i_internet_speed_test;

enum CallbacksEnum {
  START_DOWNLOAD_TESTING,
  START_UPLOAD_TESTING,
}

enum ListenerEnum {
  COMPLETE,
  ERROR,
  PROGRESS,
}

enum SpeedUnit {
  Kbps,
  Mbps,
}
