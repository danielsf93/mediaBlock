<script>
    $(function () {ldelim}
        $('#mediaBlockSettings').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
        {rdelim});
</script>

<form
        class="pkp_form"
        id="mediaBlockSettings"
        method="POST"
        action="{url router=$smarty.const.ROUTE_COMPONENT op="manage" category="blocks" plugin=$pluginName verb="settings" save=true}"
>
    <!-- Always add the csrf token to secure your form -->
    {csrf}

    {fbvFormArea}
        <div class="pkp_notification">
            <div class="notifyWarning">
                {translate key="Bem vindo ao plugin FORM."}
            </div>
        </div>
		{fbvFormSection title="Descrição link01:"}
			{fbvElement type="text" id="link01" value=$link01}
		{/fbvFormSection}
		{fbvFormSection title="Descrição link02:"}
			{fbvElement type="text" id="link02" value=$link02}
            
		{/fbvFormSection}
		{fbvFormSection title="Descrição link03:"}
			{fbvElement type="text" id="link03" value=$link03}
		{/fbvFormSection}
    {/fbvFormArea}
    {fbvFormButtons submitText="common.save"}
</form>
