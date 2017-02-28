package ISAProject.model;

import ISAProject.model.users.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

/**
 * Created by Nole on 12/18/2016.
 */

@Service
public class MailManager {

    private JavaMailSender javaMailSender;

    @Autowired
    public MailManager(JavaMailSender javaMailSender){
        this.javaMailSender = javaMailSender;
    }

    @Async
    public void sendMail(User user) throws MailException{
        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
        simpleMailMessage.setTo(user.getEmail());
        simpleMailMessage.setFrom("restaurantscheduler2016@gmail.com");
        simpleMailMessage.setSubject("Registration");

        String mailContent = "Thank You for using our service! Please follow this link to confirm your registration : localhost:9000/#/confirm \n\n";
        mailContent += "Best regards, \n";
        mailContent += "Marko Vjestica \n";
        mailContent += "Ivan Vrsajkov \n";
        mailContent += "Novica Sarenac \n";

        simpleMailMessage.setText(mailContent);
        javaMailSender.send(simpleMailMessage);
    }

    @Async
    public void sendInvitationMail(Long id, User user) throws  MailException{
        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
        simpleMailMessage.setTo(user.getEmail());
        simpleMailMessage.setFrom("restaurantscheduler2016@gmail.com");
        simpleMailMessage.setSubject("Invite");

        String mailContent = "You are invited to event! To confirm or refuse follow this link:  localhost:9000/#/invite/" + id.toString() +"/" + user.getId();
        simpleMailMessage.setText(mailContent);
        javaMailSender.send(simpleMailMessage);
    }
}
