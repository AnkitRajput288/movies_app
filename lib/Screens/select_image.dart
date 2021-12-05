import '../Constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../Utils/list_of_objects_utils.dart';

class SelectImage extends StatefulWidget {
  const SelectImage({Key? key}) : super(key: key);

  @override
  _SelectImageState createState() => _SelectImageState();
}

class _SelectImageState extends State<SelectImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        automaticallyImplyLeading: true,
        leading: Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios,)),
        ),
        title: const Text("Select Banner",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),),
      ),
      body: Container(
        padding: EdgeInsets.all(Constant.instance.appDefaultSpacing),
        child: _buildImageGridWidget(),
      ),
    );
  }

  Widget _buildImageGridWidget(){
    var imageList = ListOfObjectsUtils.instance.getImageList();
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 12,
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        var imageAsset = imageList[index];
        return _buildImageView(imageAsset);
      }, staggeredTileBuilder: (int index) {
        return StaggeredTile.count(1, index.isEven ? 1.2 : 1.5);
    },
    );
  }

  Widget _buildImageView(String imageAsset){
    return GestureDetector(
      child:  Image.asset(imageAsset, fit: BoxFit.contain,),
      onTap: (){
        Navigator.pop(context,imageAsset);
      },
    );
  }
}
