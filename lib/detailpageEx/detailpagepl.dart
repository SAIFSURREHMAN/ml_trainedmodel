import 'package:flutter/material.dart';
import '../model/mex_model.dart';
import '../reuseable/text_constraint.dart';

class DetailPagePl extends StatelessWidget {
  final PLEX plex;

  const DetailPagePl(this.plex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                FirstContainer(plex),
                const SizedBox(
                  height: 20,
                ),
                SecondContainer(plex),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  late final plex;

  FirstContainer(this.plex);

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
              plex.picture1 ?? '',
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.saturation,
              errorBuilder: (context, error, stackTrace) {
                return const Text('No image');
              },
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          EXHText(
            'Excercise: ${plex.exname1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Minimum time: ${plex.mintime1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Maximum time: ${plex.maxtime1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Repetitions: ${plex.reps1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Sets: ${plex.set1}',
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
                if (plex.ins11!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (plex.ins11!.isNotEmpty)
                  TextSpan(
                    text: '${plex.ins11}',
                  ),
                if (plex.ins12!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (plex.ins12!.isNotEmpty)
                  TextSpan(
                    text: '${plex.ins12}',
                  ),
                if (plex.ins13!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (plex.ins13!.isNotEmpty)
                  TextSpan(
                    text: '${plex.ins13}',
                  ),
                if (plex.ins14!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (plex.ins14!.isNotEmpty)
                  TextSpan(
                    text: '${plex.ins14}',
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
  late final plex;

  SecondContainer(this.plex);

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
              plex.picture2 ?? '',
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
            'Excercise: ${plex.exname2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Minimum time: ${plex.mintime2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Maximum time: ${plex.maxtime2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Repetitions: ${plex.reps2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Sets: ${plex.set2}',
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
                if (plex.ins21!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (plex.ins21!.isNotEmpty)
                  TextSpan(
                    text: '${plex.ins21}',
                  ),
                if (plex.ins22!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (plex.ins22!.isNotEmpty)
                  TextSpan(
                    text: '${plex.ins22}',
                  ),
                if (plex.ins23!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (plex.ins23!.isNotEmpty)
                  TextSpan(
                    text: '${plex.ins23}',
                  ),
                if (plex.ins24!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (plex.ins24!.isNotEmpty)
                  TextSpan(
                    text: '${plex.ins24}',
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
