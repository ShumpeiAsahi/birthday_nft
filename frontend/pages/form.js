import React from "react";

const ContactPage = () => {
 const ContactForm = (
    <form
        name="contact-form"
        method="POST"
        action="../../Python/generate_img.py"
    >
        <label htmlFor="name">Name *</label>
        <input
        id="name"
        name="name"
        required
        type="text"
        />
        <button type="submit">Submit</button>
    </form>
 );
 
 return (
   <div>
     <h1>Contact Us</h1>
     {ContactForm}
   </div>
 );
};
 
export default ContactPage;