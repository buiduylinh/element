import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';


Widget PageBannerView() {
  final _items = [
    "banner1.png",
    "banner2.png",
    "banner3.png",
    "banner4.png"
  ];

  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final _boxHeight = 215.0;

  _buildPageView() {
    return Container(
      color: Colors.white,
      height: _boxHeight,
      width: double.infinity,
      child: PageView.builder(
          itemCount: _items.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Image( image: AssetImage('${_items[index]}'),),
            );
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }),
    );
  }

  _buildCircleIndicator() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: _items.length,
          dotColor: Color(0xFFF1E2CF),
          selectedDotColor: Color(0xFFAB3611),
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }

  return Column(
    children: [
      _buildPageView(),
      _buildCircleIndicator(),
    ],
  );
}
