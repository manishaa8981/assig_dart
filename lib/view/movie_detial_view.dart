import 'package:flutter/material.dart';

class MovieDetialView extends StatefulWidget {
  const MovieDetialView({super.key});

  @override
  State<MovieDetialView> createState() => _MovieDetialViewState();
}

class _MovieDetialViewState extends State<MovieDetialView> {
  final _gap = const SizedBox(
    height: 8,
  );

  final movies = [
    const DropdownMenuItem(value: "Puspha 2", child: Text("Puspha 2")),
    const DropdownMenuItem(value: "Mona", child: Text("Mona")),
    const DropdownMenuItem(value: "The trunk", child: Text("The trunk")),
  ];

  final date = [
    const DropdownMenuItem(value: '10th DEC', child: Text('10th DEC')),
    const DropdownMenuItem(value: '11th DEC', child: Text('11th DEC')),
    const DropdownMenuItem(value: '12th DEC', child: Text('12th DEC')),
  ];

  final time = [
    const DropdownMenuItem(value: '10pm-12pm', child: Text('12pm-2:30pm')),
    const DropdownMenuItem(value: '12pm-2:30pm', child: Text('12pm-2:30pm')),
    const DropdownMenuItem(value: '3pm-5pm', child: Text('12pm-2:30pm')),
  ];

  String? selectedMovie;
  String? selectedDate;
  String? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Details"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
                child: DropdownButtonFormField(
              items: movies,
              onChanged: (value) {
                setState(() {
                  selectedMovie = value;
                });
              },
              decoration: const InputDecoration(
                  labelText: 'Select Movie', border: OutlineInputBorder()),
            )),
            _gap,
            SizedBox(
                child: DropdownButtonFormField(
              items: date,
              onChanged: (value) {
                setState(() {
                  selectedDate = value;
                });
              },
              decoration: InputDecoration(
                  labelText: 'Select Date', border: OutlineInputBorder()),
            )),
            _gap,
            SizedBox(
              child: DropdownButtonFormField(
                items: time,
                onChanged: (value) {
                  setState(() {
                    selectedTime = value;
                  });
                },
                decoration: InputDecoration(
                    labelText: 'Selected Time', border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Book Ticket') ,)
          ],
        ),
      ),
    );
  }
}
