import com.intuit.karate.Results;
import com.intuit.karate.junit5.Karate;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Runner {
    @Karate.Test
    void testsRunner() {
        Results results = com.intuit.karate.Runner.path("classpath:*").outputCucumberJson(true).tags("~@disabled")
                .outputJunitXml(true).parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}

