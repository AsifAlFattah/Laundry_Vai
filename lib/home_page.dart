import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laundry Service'),
        backgroundColor: Colors.black, // Match the black theme
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // Navigate to other pages or open a drawer
            },
          ),
        ],
      ),
      backgroundColor: Colors.black, // Black background to match the theme
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Services',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // Grid of services
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ServiceCard(
                    icon: Icons.local_laundry_service,
                    label: 'Wash & Fold',
                    onTap: () {
                      // Navigate to Wash & Fold details
                    },
                  ),
                  ServiceCard(
                    icon: Icons.iron,
                    label: 'Dry Cleaning',
                    onTap: () {
                      // Navigate to Dry Cleaning details
                    },
                  ),
                  ServiceCard(
                    icon: Icons.iron,
                    label: 'Ironing',
                    onTap: () {
                      // Navigate to Ironing details
                    },
                  ),
                  ServiceCard(
                    icon: Icons.star,
                    label: 'Special Care',
                    onTap: () {
                      // Navigate to Special Care details
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Recent Orders',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            // Recent Orders Section
            Expanded(
              child: ListView(
                children: [
                  OrderCard(
                    orderNumber: '1234',
                    status: 'In Progress',
                    onTap: () {
                      // Navigate to order details
                    },
                  ),
                  OrderCard(
                    orderNumber: '1233',
                    status: 'Completed',
                    onTap: () {
                      // Navigate to order details
                    },
                  ),
                  // Add more OrderCards here as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ServiceCard Widget
class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onTap;

  ServiceCard({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        color: Colors.white12, // Light transparent effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Colors.white),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

// OrderCard Widget
class OrderCard extends StatelessWidget {
  final String orderNumber;
  final String status;
  final Function onTap;

  OrderCard({required this.orderNumber, required this.status, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        color: Colors.white12, // Light transparent effect
        child: ListTile(
          title: Text(
            'Order #$orderNumber',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            status,
            style: TextStyle(color: Colors.white70),
          ),
          trailing: Icon(Icons.chevron_right, color: Colors.white),
        ),
      ),
    );
  }
}
