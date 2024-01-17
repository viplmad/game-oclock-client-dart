part of n2t.game_oclock.client;

class PageResultDTO<T extends Object> {
  PageResultDTO({
    this.data = const [],
    this.page = 0,
    this.size = 0,
  });

  List<T> data;

  int page;

  int size;
}
