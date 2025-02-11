class InformationModel
{
  InformationModel({
    
    required this.image,
    required this.title,
    required this.description,
    required this.id,
    });

  final String image;
  final String title;
  final String description;
  final int id;

  @override
  bool operator ==(Object other)
  {
    if (identical(this, other)) return true;
    return other is InformationModel &&
        other.image == image &&
        other.title == title &&
        other.description == description &&
        other.id == id;
  }

  @override
  int get hashCode
  {
    return image.hashCode ^ title.hashCode ^ description.hashCode ^ id.hashCode;
  }
}