abstract class Multimedia {}

// on Multimedia untuk membatasi / hanya boleh digunakan pada turunan dari Multimedia
mixin Playable on Multimedia {
  String? name;

  void play() {
    print('Play $name');
  }
}

mixin Stoppable on Multimedia {
  String? name;

  void stop() {
    print('Stop $name');
  }
}

class Video extends Multimedia with Playable, Stoppable {

}

void main() {
  Video video = Video();
  video.name = 'Dart Guide';
  video.play();
  video.stop();
}