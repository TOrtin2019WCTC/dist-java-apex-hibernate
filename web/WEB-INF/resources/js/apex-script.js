$(document).ready(function(){

    $('#newsletter').on('submit', function(e){
        e.preventDefault();

        $('#newsletter').validate({
            rules: {
                fName: {
                    required: true,
                    minlength: 2

                },
                lName: {
                    required: true,
                    minlength: 2
                },
                email: {
                    required: true,
                    email: true

                }
            },
            messages: {
                fName: {
                    required: "Please enter your first name",
                    minlength: "Enter a valid first name"
                },
                lName: {
                    required: "Please enter your last name",
                    minlength: "Enter a valid last name"
                },
                email: {
                    required: "Please enter an email",
                    email: "Please enter a valid email"
                }
            }

        })


        if($('#newsletter').valid()){
            let firstName = $('#fName').val();
            $('#confirmation').html('Success, ' + firstName.charAt(0).toUpperCase() + firstName.substring(1,firstName.length) + '!' +
                ' Your info has been saved.<br><br>' +
                'When a new Legend becomes playing in Apex Legends, you will receive an email detailing their abilities.');
            $('#confirmation').show();
            $('#form1').hide();
        }


});
});