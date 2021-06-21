import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:mobile/src/actions/location_weather/index.dart';
import 'package:mobile/src/containers/index.dart';
import 'package:mobile/src/presentation/mixins/store_mixin.dart';
import 'package:mobile/src/presentation/saved_locations_page.dart';
import 'package:mobile/src/presentation/search/search_page.dart';
import 'package:mobile/src/presentation/theme.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key, required this.showSearch}) : super(key: key);

  final bool showSearch;

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> with StoreMixin<MenuPage> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _showSearch = false;

  @override
  Widget build(BuildContext context) {
    return IsGettingWeatherDataContainer(
      builder: (BuildContext context, bool isLoading) {
        return LoadingOverlay(
          isLoading: isLoading,
          opacity: 0.1,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: IsSearchingLocationContainer(
                builder: (BuildContext context, bool isLoading) {
                  return TextFormField(
                    focusNode: _focusNode,
                    controller: _controller,
                    autofocus: widget.showSearch,
                    style: const TextStyle(
                      color: AppColors.primary,
                    ),
                    cursorColor: AppColors.primary,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.withOpacity(0.3),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.3),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.3),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.3),
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          if (!_focusNode.hasFocus) {
                            _focusNode.requestFocus();
                          } else {
                            dispatch(SearchLocationQuery$(query: _controller.text));
                          }
                        },
                        icon: isLoading
                            ? const SizedBox(
                                height: 16.0,
                                width: 16.0,
                                child: CircularProgressIndicator(),
                              )
                            : const Icon(
                                Icons.search,
                                size: 24.0,
                                color: AppColors.primary,
                              ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _showSearch = true;
                      });
                    },
                    onChanged: (String value) {
                      dispatch(SearchLocationQuery$(query: _controller.text));
                    },
                    onFieldSubmitted: (String value) {
                      dispatch(SearchLocationQuery$(query: _controller.text));
                    },
                  );
                },
              ),
            ),
            body: Builder(
              builder: (BuildContext context) {
                if (widget.showSearch || _showSearch) {
                  return const SearchPage();
                }
                return const SavedLocationsPage();
              },
            ),
          ),
        );
      },
    );
  }
}
