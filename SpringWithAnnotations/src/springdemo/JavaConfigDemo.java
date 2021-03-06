package springdemo;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * Created by drake on 18/02/18.
 *
 * @author P.Pridorozhny
 */
public class JavaConfigDemo {

    public static void main(String[] args) {

        AnnotationConfigApplicationContext context =
                new AnnotationConfigApplicationContext(SportConfig.class);

        Coach coach = context.getBean("swimmingCoach", Coach.class);

        System.out.println(coach.getDailyWorkout());
        System.out.println(coach);

        context.close();
    }
}
