import 'package:flutter/material.dart';
import '../model/mex_model.dart';
import '../reuseable/text_constraint.dart';

class DetailPageWg extends StatelessWidget {
  final WGEX wgex;

  DetailPageWg(this.wgex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                FirstContainer(wgex),
                SizedBox(
                  height: 20,
                ),
                SecondContainer(wgex),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  late final WGEX wgex;

  FirstContainer(this.wgex);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border:
            Border.all(color: Colors.black, style: BorderStyle.solid, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              wgex.picture1 ?? '',
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.saturation,
              errorBuilder: (context, error, stackTrace) {
                return const Text('No image');
              },
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          EXHText(
            'Excercise: ${wgex.exname1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Minimum time: ${wgex.mintime1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Maximum time: ${wgex.maxtime1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Repetitions: ${wgex.reps1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Sets: ${wgex.set1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'INSTRUCTIONS:',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              children: [
                if (wgex.ins11!.isNotEmpty)
                  WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wgex.ins11!.isNotEmpty)
                  TextSpan(
                    text: '${wgex.ins11}',
                  ),
                if (wgex.ins12!.isNotEmpty)
                  WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wgex.ins12!.isNotEmpty)
                  TextSpan(
                    text: '${wgex.ins12}',
                  ),
                if (wgex.ins13!.isNotEmpty)
                  WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wgex.ins13!.isNotEmpty)
                  TextSpan(
                    text: '${wgex.ins13}',
                  ),
                if (wgex.ins14!.isNotEmpty)
                  WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wgex.ins14!.isNotEmpty)
                  TextSpan(
                    text: '${wgex.ins14}',
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondContainer extends StatelessWidget {
  late final WGEX wgex;

  SecondContainer(this.wgex);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border:
            Border.all(color: Colors.black, style: BorderStyle.solid, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              wgex.picture2 ?? '',
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.saturation,
              errorBuilder: (context, error, stackTrace) {
                return const Text('No image');
              },
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          EXHText(
            'Excercise: ${wgex.exname2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Minimum time: ${wgex.mintime2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Maximum time: ${wgex.maxtime2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Repetitions: ${wgex.reps2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Sets: ${wgex.set2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'INSTRUCTIONS:',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              children: [
                if (wgex.ins21!.isNotEmpty)
                  WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wgex.ins21!.isNotEmpty)
                  TextSpan(
                    text: '${wgex.ins21}',
                  ),
                if (wgex.ins22!.isNotEmpty)
                  WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wgex.ins22!.isNotEmpty)
                  TextSpan(
                    text: '${wgex.ins22}',
                  ),
                if (wgex.ins23!.isNotEmpty)
                  WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wgex.ins23!.isNotEmpty)
                  TextSpan(
                    text: '${wgex.ins23}',
                  ),
                if (wgex.ins24!.isNotEmpty)
                  WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wgex.ins24!.isNotEmpty)
                  TextSpan(
                    text: '${wgex.ins24}',
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
