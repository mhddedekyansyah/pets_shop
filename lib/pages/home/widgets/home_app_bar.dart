part of 'widgets.dart';


class HomeAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Good Evening', style: GoogleFonts.poppins(
                color: Colors.cyan,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
              Text('Are you ready to find a new friends?', style: GoogleFonts.poppins(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.normal
              ),
            )
            ]
          ),
          Icon(Icons.menu)
        ],
      ),
    );
  }
}