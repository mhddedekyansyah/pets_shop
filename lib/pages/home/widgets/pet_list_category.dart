part of 'widgets.dart';

class PetListCategory extends StatelessWidget {
 final List<PetCategoryModel> petListCategory = PetCategoryModel.generatedPetCategory();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (context, index){
          return Container(
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                  image: NetworkImage(petListCategory[index].urlPath.toString()),
                  fit: BoxFit.cover
                  ),
                )
                ),
                Text(petListCategory[index].name, style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 12
                ),
              )
              ],
            ),
          );
        }, 
        separatorBuilder: (_, index) => SizedBox(width: 24,), 
        itemCount: petListCategory.length),
    );
  }
}