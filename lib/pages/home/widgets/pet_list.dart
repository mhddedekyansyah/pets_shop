part of 'widgets.dart';

class PetList extends StatelessWidget {
final List<PetModel> petList = PetModel.generatedPet();
  @override
  Widget build(BuildContext context) {
 
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Adopt', style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 18
                )
              ),
              InkWell(
                onTap: (){},
                child: Text('See All', style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  color: Colors.cyan
                )),
              )
            ],
          ),
        ),
        Column(
        children : petList.map((e) => Container(
          margin: EdgeInsets.only(top: 20, left: 25, right: 25),
          height: 150,
          decoration: BoxDecoration(  
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 8
                      )
                    ]
          ),
          child: Row(
            children: [
              Container(
                 width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(e.urlPath.toString()),
                      fit: BoxFit.cover
                    ),
                  ),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.name, style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Row(
                    children: [
                      Text('Sex :', style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                )),
                      SizedBox(width: 10,),
                      Text(e.sex, style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                )),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Age :', style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
             
                )),
                      SizedBox(width: 10,),
                      Text(e.age.toString(), style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                )),
                    ],
                  ),
                  Row(
                    children: [
                       Text('Weight :', style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
          
                )),
                      SizedBox(width: 10,),
                      Text(e.weight.toString(), style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
           
                )),
                    ],
                  ),
                SizedBox(height: 14,),
                ElevatedButton(
                  onPressed: (){}, child: Text('Adopt', style: GoogleFonts.poppins(),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    elevation: 10,
                    padding: EdgeInsets.symmetric(horizontal: 35)
                  ),
                  )
                ],
              )
            ],
          ),
        )).toList()
      ),
      ]
    );
  }
}