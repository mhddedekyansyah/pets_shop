part of 'widgets.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black12
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 10,),
              Text('Search for pets', style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),)
            ],
          ), 
          Icon(Icons.filter_list_outlined)
        ],
      ),
    );
  }
}