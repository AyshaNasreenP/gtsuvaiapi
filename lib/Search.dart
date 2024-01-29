import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:gtsuvai/colors.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    String? userSelected;

    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        toolbarHeight: 120,
        title: SizedBox(
            height: 40,
            width: double.infinity,
            child: TypeAheadField(
              noItemsFoundBuilder: (context) => const SizedBox(
                height: 50,
                child: Center(
                  child: Text('No Item Found'),
                ),
              ),
              suggestionsBoxDecoration: const SuggestionsBoxDecoration(
                  color: Colors.white,
                  elevation: 4.0,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              debounceDuration: const Duration(milliseconds: 200),
              textFieldConfiguration: TextFieldConfiguration(

                  decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          )),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                          borderSide: BorderSide(color: Colors.black)),
                      hintText:"",
                      contentPadding:
                      const EdgeInsets.only(top: 4, left: 10),
                      hintStyle:
                      const TextStyle(color: Colors.grey, fontSize: 14),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon:
                          const Icon(Icons.search, color: Colors.grey)),
                      fillColor: Colors.white,
                      filled: true)),
              suggestionsCallback: (value) {
                return StateService.getSuggestions(value);
              },
              itemBuilder: (context, String suggestion) {
                return Row(
                  children: [
                    const Icon(
                      Icons.refresh,
                      color: Colors.grey,
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          suggestion,
                          maxLines: 1,
                          // style: TextStyle(color: Colors.red),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  ],
                );
              },
              onSuggestionSelected: (String suggestion) {
                setState(() {
                  userSelected = suggestion;
                });
              },
            )),
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [gtgreen,bgclr],
              ),
            ),

          ),
        ),
      ),

    );
  }
}