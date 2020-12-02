import 'package:flutter_learning/Screen2/Model/CategoryBottomModel.dart';
import 'package:flutter_learning/Screen2/Model/ItemStoryModel.dart';
import 'package:flutter_learning/Screen2/Model/HeadlineModel.dart';
import 'package:flutter_learning/Screen2/Model/ViewMoreModel.dart';

List addDataFake() {
  List list = List();

  HeadlineModel title1 = HeadlineModel(title: "Truyện nổi bật");
  ItemStoryModel story = ItemStoryModel(
      stt: 1,
      title: "Thánh Gióng - Truyện cổ tích chưa kể cho bé",
      viewCount: 1511,
      category: "Truyện cổ tích",
      imageStar: "istop.png");
  ItemStoryModel story1 = ItemStoryModel(
      stt: 2,
      title: "Truyện Kiều",
      viewCount: 1511,
      category: "Truyện cổ tích");
  ItemStoryModel story2 = ItemStoryModel(
      stt: 3,
      title: "Lục Vân Tiên",
      viewCount: 1511,
      category: "Truyện cổ tích");
  ViewMoreModel viewMoreModel = ViewMoreModel(title: "Xem thêm");
  HeadlineModel title2 = HeadlineModel(title: "Truyện mới nhất");
  ItemStoryModel story4 = ItemStoryModel(
      stt: 1, title: "Lọ Lem", viewCount: 1511, category: "Truyện cổ tích",
      imageStar: "istop.png");
  ItemStoryModel story5 = ItemStoryModel(
      stt: 2,
      title: "Bạch Tuyết và bảy chú lùn",
      viewCount: 1511,
      category: "Truyện cổ tích");
  ItemStoryModel story6 = ItemStoryModel(
      stt: 3,
      title: "Cô bé bán diêm",
      viewCount: 1511,
      category: "Truyện cổ tích");
  HeadlineModel title3 = HeadlineModel(title: "Thể loại truyện");
  CategoryBottomModel cate1 =
      CategoryBottomModel(title: "Truyện cổ tích Việt Nam");
  CategoryBottomModel cate2 =
      CategoryBottomModel(title: "Truyện cổ tích thế giới");
  CategoryBottomModel cate3 =
      CategoryBottomModel(title: "Truyện cổ tích Việt Nam");
  CategoryBottomModel cate4 =
      CategoryBottomModel(title: "Truyện cổ tích thế giới");
  list.add(title1);
  list.add(story);
  list.add(story1);
  list.add(story2);
  list.add(viewMoreModel);
  list.add(title2);
  list.add(story4);
  list.add(story5);
  list.add(story6);
  list.add(viewMoreModel);
  list.add(title3);
  list.add(cate1);
  list.add(cate2);
  list.add(cate3);
  list.add(cate4);
  return list;
}
