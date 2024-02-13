import 'package:flutter/material.dart';
import '../model/mex_model.dart';
import '../reuseable/text_constraint.dart';

class DetailPageWl extends StatelessWidget {
  final WLEX wlex;

  DetailPageWl(this.wlex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                FirstContainer(wlex),
                const SizedBox(
                  height: 20,
                ),
                SecondContainer(wlex),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  late final wlex;

  FirstContainer(this.wlex);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
              wlex.picture1 ?? '',
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
            'Excercise: ${wlex.exname1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Minimum time: ${wlex.mintime1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Maximum time: ${wlex.maxtime1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Repetitions: ${wlex.reps1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Sets: ${wlex.set1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          const EXHText(
            'INSTRUCTIONS:',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              children: [
                if (wlex.ins11!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wlex.ins11!.isNotEmpty)
                  TextSpan(
                    text: '${wlex.ins11}',
                  ),
                if (wlex.ins12!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wlex.ins12!.isNotEmpty)
                  TextSpan(
                    text: '${wlex.ins12}',
                  ),
                if (wlex.ins13!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wlex.ins13!.isNotEmpty)
                  TextSpan(
                    text: '${wlex.ins13}',
                  ),
                if (wlex.ins14!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wlex.ins14!.isNotEmpty)
                  TextSpan(
                    text: '${wlex.ins14}',
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
  late final wlex;

  SecondContainer(this.wlex);

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
              wlex.picture2 ?? '',
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
            'Excercise: ${wlex.exname2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Minimum time: ${wlex.mintime2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Maximum time: ${wlex.maxtime2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Repetitions: ${wlex.reps2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Sets: ${wlex.set2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          const EXHText(
            'INSTRUCTIONS:',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              children: [
                if (wlex.ins21!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wlex.ins21!.isNotEmpty)
                  TextSpan(
                    text: '${wlex.ins21}',
                  ),
                if (wlex.ins22!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wlex.ins22!.isNotEmpty)
                  TextSpan(
                    text: '${wlex.ins22}',
                  ),
                if (wlex.ins23!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wlex.ins23!.isNotEmpty)
                  TextSpan(
                    text: '${wlex.ins23}',
                  ),
                if (wlex.ins24!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (wlex.ins24!.isNotEmpty)
                  TextSpan(
                    text: '${wlex.ins24}',
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
