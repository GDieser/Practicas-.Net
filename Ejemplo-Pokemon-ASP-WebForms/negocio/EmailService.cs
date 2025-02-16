using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;


namespace negocio
{
    public class EmailService
    {
        private MailMessage email;
        private SmtpClient server;

        public EmailService()
        {
            server = new SmtpClient();
            server.Credentials = new NetworkCredential("d40bac5f1f013f", "ca12f9bb6f39c9");
            server.EnableSsl = true;
            server.Port = 587;
            server.Host = "sandbox.smtp.mailtrap.io";
            //server.UseDefaultCredentials = false;

        }

        public void armarCorreo(string emailDestino, string asunto, string cuerpo)
        {
            email = new MailMessage();
            email.From = new MailAddress("from@example.com");
            email.To.Add(emailDestino);
            email.Subject = asunto;
            email.IsBodyHtml = true;
            //email.Body = "<h1>Reporte de materias a las que se ha inscripto</h1> <br>Hola, te inscribiste.... bla bla";
            email.Body = cuerpo;

        }

        public void enviarEmail()
        {
            if (email == null)
                throw new InvalidOperationException("El email no ha sido inicializado. Llama a armarCorreo() antes.");

            try
            {
                server.Send(email);
            }
            catch (SmtpException smtpEx)
            {
                throw new Exception("Error al enviar el correo: " + smtpEx.Message, smtpEx);
            }
        }

    }

}
