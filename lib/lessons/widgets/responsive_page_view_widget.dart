import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Adds a responsive page view widget
// This widget is used to display a list of pages in a responsive way
// It uses a PageView to display the pages, adds arrows to navigate between pages
// and listens to keyboard events to navigate between pages
class ResponsivePageViewWidget extends StatefulWidget {
  const ResponsivePageViewWidget({
    required this.pages,
    this.initialPage = 0,
    this.pageController,
    this.onPageChanged,
    super.key,
  });

  final List<Widget> pages;
  final int initialPage;
  final PageController? pageController;
  final ValueChanged<int>? onPageChanged;

  @override
  State<ResponsivePageViewWidget> createState() =>
      _ResponsivePageViewWidgetState();
}

class _ResponsivePageViewWidgetState extends State<ResponsivePageViewWidget> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = widget.pageController ??
        PageController(initialPage: widget.initialPage);
  }

  @override
  void dispose() {
    if (widget.pageController == null) {
      _pageController.dispose();
    }
    super.dispose();
  }

  void _handleKeyEvent(KeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
      _goToPreviousPage();
    } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
      _goToNextPage();
    }
  }

  void _goToPreviousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _goToNextPage() {
    if (_pageController.page! < widget.pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onKeyEvent: (_, event) {
        _handleKeyEvent(event);
        return KeyEventResult.ignored;
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          //TODO replace with ResponsiveValue
          final showArrows = constraints.maxWidth >= 800;

          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (showArrows)
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: _goToPreviousPage,
                  ),
                ),
              Expanded(
                flex: 9,
                child: ExpandablePageView.builder(
                  controller: _pageController,
                  itemCount: widget.pages.length,
                  onPageChanged: widget.onPageChanged,
                  itemBuilder: (context, index) {
                    return Center(child: widget.pages[index]);
                  },
                ),
              ),
              if (showArrows)
                Expanded(
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: _goToNextPage,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

