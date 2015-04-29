var formActions = {

    changeForm: function(referenceType) {
        $('div[id^=form_]').hide();
        switch (referenceType){
            case 'Book':
                $('#form_author').show();
                $('#form_title').show();
                $('#form_year').show();
                $('#form_publisher').show();
                break;
            case 'Article':
                $('#form_author').show();
                $('#form_title').show();
                $('#form_journal').show();
                $('#form_year').show();
                $('#form_volume').show();
                break; 
            case 'Inproceedings':
                $('#form_author').show();
                $('#form_title').show();
                $('#form_booktitle').show();
                $('#form_year').show();
        }
    },

    onReady: function(){
        formActions.changeForm('Book')
        $('#reference_reference_type').change(function() {
            var val = $(this).val();
            formActions.changeForm(val);
        });
    }
};

$(document).ready(formActions.onReady());
