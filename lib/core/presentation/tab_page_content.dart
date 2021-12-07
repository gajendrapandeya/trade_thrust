import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsPageContent extends StatefulWidget {
  const TabsPageContent({Key? key}) : super(key: key);

  @override
  _TabsPageContentState createState() => _TabsPageContentState();
}

class _TabsPageContentState extends State<TabsPageContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 24.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _buildTopContainer('0 TASKS ASSIGNED', '0 COMPLETED', '0 BITS'),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: _buildTopContainer('0 UNIQUE VISITS', '0 CLOSED', '0 NO DEAL'),
              ),
            ],
          ),
          const SizedBox(
            height: 32.0,
          ),
          _buildContainer('ORDER COLLECTED', 'NRS 0'),
          const SizedBox(
            height: 4.0,
          ),
          _buildContainer('CASH COLLECTED', 'NRS 0'),
          const SizedBox(
            height: 4.0,
          ),
          _buildContainer('CHEQUE COLLECTED', 'NRS 0'),
          const SizedBox(
            height: 4.0,
          ),
          _buildContainer('CREDIT SOLD', 'NRS 0'),
        ],
      ),
    );
  }

  Widget _buildContainer(String leadingText, String trailingText) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.shade800, width: 0.3),
      ),
      child: Row(
        children: [
          Text(
            leadingText,
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 16.0),
          ),
          const Spacer(),
          Text(
            trailingText,
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 16.0),
          ),
        ],
      ),
    );
  }

  Widget _buildTopContainer(
      String mainTitle, String leadingSubTitle, String trailingSubTitle) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade800, width: 0.5),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mainTitle,
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 16.0),
          ),
          Row(
            children: [
              Text(
                leadingSubTitle,
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade500, fontSize: 12.0),
              ),
              const Spacer(),
              Text(
                trailingSubTitle,
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade500, fontSize: 12.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
