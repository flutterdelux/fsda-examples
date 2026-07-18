import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/city_entity.dart';
import 'parts/city_list_item.dart';

class CityListContent extends StatefulWidget {
  final Future<void> Function() onPullRefresh;
  final bool isLoadingMore;
  final VoidCallback onLoadMore;
  final List<CityEntity> list;
  final void Function(CityEntity item) onItemTap;

  const CityListContent({
    super.key,
    required this.list,
    required this.isLoadingMore,
    required this.onLoadMore,
    required this.onPullRefresh,
    required this.onItemTap,
  });

  @override
  State<CityListContent> createState() => _CityListContentState();
}

class _CityListContentState extends State<CityListContent> {
  static const _thresholdLoadMore = 0.9; // 90% of the scroll extent

  late final ScrollController _scrollController;

  void _onScroll() {
    if (_isReachThreshold) {
      widget.onLoadMore();
    }
  }

  bool get _isReachThreshold {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * _thresholdLoadMore) && maxScroll > 0;
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: widget.onPullRefresh,
      child: ListView.separated(
        controller: _scrollController,
        itemCount: widget.list.length,
        padding: const EdgeInsets.only(bottom: 80),
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final item = widget.list[index];
          final tile = CityListItem(
            city: item,
            number: index + 1,
            onTap: () => widget.onItemTap.call(item),
          );
          if (index == widget.list.length - 1) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [tile, if (widget.isLoadingMore) const AppLoading()],
            );
          }
          return tile;
        },
      ),
    );
  }
}
