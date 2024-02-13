import 'package:flutter/material.dart';
import '../model/mex_model.dart';
import '../reuseable/text_constraint.dart';

class DetailPageYg extends StatelessWidget {
  final YGEX ygex;

  const DetailPageYg(this.ygex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                FirstContainer(ygex),
                const SizedBox(
                  height: 20,
                ),
                SecondContainer(ygex)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  late final ygex;

  FirstContainer(this.ygex);

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
              ygex.picture1 ?? '',
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
            'Excercise: ${ygex.exname1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Minimum time: ${ygex.mintime1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Maximum time: ${ygex.maxtime1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Repetitions: ${ygex.reps1}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Sets: ${ygex.set1}',
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
                if (ygex.ins11!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (ygex.ins11!.isNotEmpty)
                  TextSpan(
                    text: '${ygex.ins11}',
                  ),
                if (ygex.ins12!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (ygex.ins12!.isNotEmpty)
                  TextSpan(
                    text: '${ygex.ins12}',
                  ),
                if (ygex.ins13!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (ygex.ins13!.isNotEmpty)
                  TextSpan(
                    text: '${ygex.ins13}',
                  ),
                if (ygex.ins14!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (ygex.ins14!.isNotEmpty)
                  TextSpan(
                    text: '${ygex.ins14}',
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
  late final ygex;

  SecondContainer(this.ygex);

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
              ygex.picture2 ?? '',
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
            'Excercise: ${ygex.exname2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Minimum time: ${ygex.mintime2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Maximum time: ${ygex.maxtime2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Repetitions: ${ygex.reps2}',
            fontSize: 18,
            color: Colors.black,
            weight: FontWeight.w400,
          ),
          EXHText(
            'Sets: ${ygex.set2}',
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
                if (ygex.ins21!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (ygex.ins21!.isNotEmpty)
                  TextSpan(
                    text: '${ygex.ins21}',
                  ),
                if (ygex.ins22!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (ygex.ins22!.isNotEmpty)
                  TextSpan(
                    text: '${ygex.ins22}',
                  ),
                if (ygex.ins23!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (ygex.ins23!.isNotEmpty)
                  TextSpan(
                    text: '${ygex.ins23}',
                  ),
                if (ygex.ins24!.isNotEmpty)
                  const WidgetSpan(
                    child: Icon(Icons.arrow_forward,
                        size: 12, color: Colors.black),
                  ),
                if (ygex.ins24!.isNotEmpty)
                  TextSpan(
                    text: '${ygex.ins24}',
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
