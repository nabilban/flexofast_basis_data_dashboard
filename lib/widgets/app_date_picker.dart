// ignore_for_file: unnecessary_null_comparison

import 'package:flexofast_basis_data_dashboard/entity/date_range_entity.dart';
import 'package:flutter/material.dart';

class AppDatePicker extends StatefulWidget {
  const AppDatePicker({super.key});

  @override
  State<AppDatePicker> createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(const Duration(days: 1));

  Future<void> _selectDate(
      BuildContext context, bool isStart, DateTime initialDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    // kalau user memilih tanggal
    if (picked != null && picked != (isStart ? _startDate : _endDate)) {
      setState(() {
        if (isStart) {
          _startDate = DateTime(
            picked.year,
            picked.month,
            picked.day,
          );
        } else {
          _endDate = DateTime(
            picked.year,
            picked.month,
            picked.day,
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Select Date Range',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text('Tanggal Mulai:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      _startDate != null
                          ? _startDate.toLocal().toString().split(' ')[0]
                          : 'Not selected',
                    ),
                    TextButton(
                      onPressed: () => _selectDate(context, true, _startDate),
                      child: const Icon(Icons.calendar_month_outlined),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Tanggal Akhir:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      _endDate != null
                          ? _endDate.toLocal().toString().split(' ')[0]
                          : 'Not selected',
                    ),
                    TextButton(
                      onPressed: () => _selectDate(context, false, _endDate),
                      child: const Icon(Icons.calendar_month_outlined),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(
                  DateRangeEntity(
                    start: _startDate,
                    end: _endDate,
                  ),
                );
              },
              child: const Text('Ganti Tanggal'),
            ),
          ],
        ),
      ),
    );
  }
}
