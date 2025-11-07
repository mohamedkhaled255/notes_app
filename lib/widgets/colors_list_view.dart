import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
 final bool isActive;
 final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    ) :CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff7776bc),
    Color(0xffcdc7e5),
    Color(0xfffffbdb),
    Color(0xffffec51),
    Color(0xffff674d),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: (){
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = kColors [index];
              setState(() {

              });
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: kColors[index],
            ),
          ),
        );
      }),
    );
  }
}

