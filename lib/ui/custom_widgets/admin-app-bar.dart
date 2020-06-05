import 'package:flutter/material.dart';
import 'package:masjid_finder/providers/auth-provider.dart';
import 'package:masjid_finder/ui/pages/prompt-screen.dart';
import 'package:provider/provider.dart';

class AdminAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(21, 16, 21, 16),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/static_assets/drawer-icon.png"),
                ),
              ),
            ),
            onPressed: () {
              Provider.of<AuthProvider>(context, listen: false).logout();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PromptScreen()));
            },
          ),
          Spacer(),
          Container(
            height: 24,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage("assets/static_assets/masjid-finder-black.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
