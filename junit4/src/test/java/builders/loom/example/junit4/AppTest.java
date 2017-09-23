package builders.loom.example.junit4;

import static org.junit.Assert.assertEquals;
import static org.junit.Assume.assumeTrue;

import org.junit.Ignore;
import org.junit.Test;

public class AppTest {

    @Test
    public void simple() {
        assertEquals(8, new App().sum(3, 5));
    }

    @Test
    @Ignore
    public void disabled() {
        assertEquals(2, new App().sum(2, 2));
    }

    @Test
    public void aborted() {
        assumeTrue(false);
        assertEquals(2, new App().sum(2, 2));
    }

}
