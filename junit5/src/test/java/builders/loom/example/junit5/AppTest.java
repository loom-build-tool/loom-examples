package builders.loom.example.junit5;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assumptions.assumeTrue;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

public class AppTest {

    @Test
    public void simple() {
        assertEquals(8, new App().sum(3, 5));
    }

    @Test
    @Disabled
    public void disabled() {
        assertEquals(2, new App().sum(2, 2));
    }

    @Test
    public void aborted() {
        assumeTrue(false);
        assertEquals(2, new App().sum(2, 2));
    }

}
