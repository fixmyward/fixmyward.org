$(function() {
    $('#container-425-0').change(function() {
        var checked = this.checked;
        $('input[name|=container][type=checkbox]').not("#container-425-0").each(function() {
            this.disabled = checked;
            if (checked) {
                this.checked = false;
            }
            $(this).change();
        });
    });
});
