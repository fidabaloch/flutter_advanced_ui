import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced UI'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // For smaller screens
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your name',
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your Father Name',
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your Address',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit Form'),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Heading',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text('Body', style: Theme.of(context).textTheme.bodySmall),
              ],
            );
          } else {
            // For larger screens
            return Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your name',
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Your Father Name',
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Your Address',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit Form'),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Heading',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text('Body', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                )
              ],
            );
          }
        },
      ),
    );
  }
}
