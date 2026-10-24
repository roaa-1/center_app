
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CenterPage(),
    );
  }
}

class CenterPage extends StatelessWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Center',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 16),

              // Profile card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  color: const Color(0xFF3478F6),
                  borderRadius: BorderRadius.circular(19),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withValues(alpha: .22),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            'images/ProfilePortrait.png',
                          ),
                        ),

                        const SizedBox(width: 12),

                        const Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mausam Rayamajhi',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'A trendsetter',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 21,
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    const Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileStat(
                          number: '846',
                          label: 'Collect',
                        ),
                        ProfileStat(
                          number: '51',
                          label: 'Attention',
                        ),
                        ProfileStat(
                          number: '267',
                          label: 'Track',
                        ),
                        ProfileStat(
                          number: '39',
                          label: 'Coupons',
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Quick menu
              const Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  QuickMenu(
                    icon: Icons.account_balance_wallet,
                    label: 'Wallet',
                  ),
                  QuickMenu(
                    icon: Icons.local_shipping_outlined,
                    label: 'Delivery',
                  ),
                  QuickMenu(
                    icon: Icons.chat,
                    label: 'Message',
                    badge: true,
                  ),
                  QuickMenu(
                    icon: Icons.volunteer_activism,
                    label: 'Service',
                  ),
                ],
              ),

              const SizedBox(height: 35),

              // Settings cards
              const SettingsCard(
                icon: Icons.location_on,
                title: 'Address',
                subtitle: 'Ensure your harvesting address',
                color: Color(0xFF8975F5),
              ),

              const SizedBox(height: 19),

              const SettingsCard(
                icon: Icons.lock,
                title: 'Privacy',
                subtitle: 'System permission change',
                color: Color(0xFFF252B5),
              ),

              const SizedBox(height: 19),

              const SettingsCard(
                icon: Icons.layers,
                title: 'General',
                subtitle: 'Basic functional settings',
                color: Color(0xFFFFC34D),
              ),

              const SizedBox(height: 19),

              const SettingsCard(
                icon: Icons.notifications,
                title: 'Notification',
                subtitle: 'Take over the news in time',
                color: Color(0xFF50CCCC),
              ),

              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}

// Profile statistics
class ProfileStat extends StatelessWidget {
  final String number;
  final String label;

  const ProfileStat({
    super.key,
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

// Wallet, Delivery, Message, Service
class QuickMenu extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool badge;

  const QuickMenu({
    super.key,
    required this.icon,
    required this.label,
    this.badge = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F7),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: const Color(0xFF252525),
                  size: 22,
                ),
              ),

              if (badge)
                Positioned(
                  right: -3,
                  top: -3,
                  child: Container(
                    width: 17,
                    height: 17,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFF3478F6),
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 8),

          Text(
            label,
            style: const TextStyle(
              fontSize: 11,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

// Settings cards
class SettingsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const SettingsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF668AFF)
                .withValues(alpha: .17),
            blurRadius: 22,
            spreadRadius: 3,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 22,
            ),
          ),

          const SizedBox(width: 13),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFFBFC0C6),
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 5),

          const Icon(
            Icons.chevron_right,
            color: Color(0xFFC4C6CC),
            size: 23,
          ),
        ],
      ),
    );
  }
}


