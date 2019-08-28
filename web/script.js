/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var fname = document.getElementById('fname');
var lname = document.getElementById('lname');
var uname = document.getElementById('uname');
var email = document.getElementById('email');
var password = document.getElementById('password');
var city = document.getElementById('city');
var address = document.getElementById('address');
var contactno = document.getElementById('contactno');

// selecting all error display elements

var fname_error = document.getElementById(fname_error);
var lname_error = document.getElementById(lname_error);
var uname_error = document.getElementById(uname_error);
var email_error = document.getElementById(email_error);
var contactno_error = document.getElementById(contactno_error);
var password_error = document.getElementById(password_error);
var city_error = document.getElementById(city_error);
var address_error = document.getElementById(address_error);

//setting event listners

fname.addEventListner('blur',fnameVerify,true);
lname.addEventListner('blur',lnameVerify,true);
uname.addEventListner('blur',unameVerify,true);
email.addEventListner('blur',emailVerify,true);
password.addEventListner('blur',passwordVerify,true);
city.addEventListner('blur',cityVerify,true);
contactno.addEventListner('blur',contactnoVerify,true);
address.addEventListner('blur',addressVerify,true);

// validate function body

function validate()
{
    if(fname.value==="")
    {
        //alert('plese enter first name');
        fname.style.border='1 px solid red';
        document.getElementById('fname_error').style.color="red";
        fname_error.textContent="First name is required";
        fname.focus();
        return false;
    }

    if(lname.value==="")
    {
        lname.style.border='1 px solid red';
        document.getElementById('lname_error').style.color="red";
        lname_error.textContent="Last name is required";
        lname.focus();
        return false;
    }
    
    if(uname.value==="")
    {
        uname.style.border='1 px solid red';
        document.getElementById('uname_error').style.color="red";
        uname_error.textContent="User name is required";
        uname.focus();
        return false;
    }
    
    if(email.value==="")
    {
        email.style.border='1 px solid red';
        document.getElementById('email_error').style.color="red";
        email_error.textContent="Email is required";
        email.focus();
        return false;
    }
    
    if(password.value==="")
    {
        password.style.border='1 px solid red';
        document.getElementById('password_error').style.color="red";
        password_error.textContent="Password is required";
        password.focus();
        return false;
    }
    
    if(contactno.value==="")
    {
        contactno.style.border='1 px solid red';
        contactno.getElementById('contactno_error').style.color="red";
        contactno_error.textContent="phone no is required";
        contactno.focus();
        return false;
    }
    
    if(city.value==="")
    {
        city.style.border='1 px solid red';
        document.getElementById('city_error').style.color="red";
        city_error.textContent="City name is required";
        city.focus();
        return false;
    }
    
    if(address.value==="")
    {
        address.style.border='1 px solid red';
        document.getElementById('address_error').style.color="red";
        address_error.textContent="Address is required";
        address.focus();
        return false;
    }
}

// event handler functions

function fnameVerify()
{
    if(fname.value!=="")
    {
        fname.style.border = "1 px solid #5e6e66";
        document.getElementById('fname_error').style.color = '#5e6e66';
        fname_error.innerHTML="";
        return true;
    }
}

function lnameVerify()
{
    if(lname.value!=="")
    {
        lname.style.border = "1 px solid #5e6e66";
        document.getElementById('lname_error').style.color = '#5e6e66';
        lname_error.innerHTML="";
        return true;
    }
}

function unameVerify()
{
    if(uname.value!=="")
    {
        uname.style.border = "1 px solid #5e6e66";
        document.getElementById('uname_error').style.color = '#5e6e66';
        uname_error.innerHTML="";
        return true;
    }
}

function emailVerify()
{
    if(email.value!=="")
    {
        email.style.border = "1 px solid #5e6e66";
        document.getElementById('email_error').style.color = '#5e6e66';
        email_error.innerHTML="";
        return true;
    }
}

function passwordVerify()
{
    if(password.value!=="")
    {
        password.style.border = "1 px solid #5e6e66";
        document.getElementById('password_error').style.color = '#5e6e66';
        password_error.innerHTML="";
        return true;
    }
}

function contactnoVerify()
{
    if(contactno.value!=="")
    {
        contactno.style.border = "1 px solid #5e6e66";
        document.getElementById('contactno_error').style.color = '#5e6e66';
        contactno_error.innerHTML="";
        return true;
    }
}

function cityVerify()
{
    if(city.value!=="")
    {
        city.style.border = "1 px solid #5e6e66";
        document.getElementById('city_error').style.color = '#5e6e66';
        city_error.innerHTML="";
        return true;
    }
}

function addressVerify()
{
    if(address.value!=="")
    {
        address.style.border = "1 px solid #5e6e66";
        document.getElementById('address_error').style.color = '#5e6e66';
        address_error.innerHTML="";
        return true;
    }

}