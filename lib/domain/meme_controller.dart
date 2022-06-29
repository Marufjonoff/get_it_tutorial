import 'package:get_it_tutorial/locator.dart';
import 'package:get_it_tutorial/repository/meme_repo.dart';

class MemeDomainController {
  getNextMeme() async {
    // TODO 6 : Call the Repository and receive a meme
    return locator.get<MemeRepo>().getMeme();
  }
}