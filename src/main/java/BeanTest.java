import java.util.ArrayList;
import java.util.List;

public class BeanTest {

    public static void main(String[] args) {


        Album bts = new Album(1, "BTS", "Be", 2020, "K-pop" ,2.69f);

        Album ten = new Album(2, "Pearl Jam", "Ten", 1991, "rock", 30.0f);

        Author shrek = new Author(1, "Shrek", "An Orge");

        Quote quote = new Quote(1, "Better out than in", shrek);

        List<Album> collectionOfAlbums = new ArrayList<>();
        collectionOfAlbums.add(bts);
        collectionOfAlbums.add(ten);

        for( Album album: collectionOfAlbums) {
            System.out.printf("One of David's favorite albums is %s by the music act %s, which has sold %.2f million copies. \n", album.getName(), album.getArtist(), album.getSales());
        }

        System.out.printf("The wise philospher %s %s once said: %s", quote.getAuthor().getFirstName(), quote.getAuthor().getLastName(), quote.getContent());



    }

}
