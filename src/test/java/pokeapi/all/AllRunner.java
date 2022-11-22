package pokeapi.all;

import com.intuit.karate.junit5.Karate;

class AllRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("all").relativeTo(getClass());
    }    

}
