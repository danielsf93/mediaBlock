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
                {translate key="Adicione os links das redes sociais de sua organização."}
            </div>
        </div>
		{fbvFormSection title="Título"}
        <p>Coloque algo como "Acesse nossas redes:", ou se desejar, deixe em branco.</p>
			{fbvElement type="text" id="titulo" value=$titulo}
		{/fbvFormSection}
        {fbvFormSection title="Link do Twitter:"}
			{fbvElement type="text" id="link01" value=$link01}
		{/fbvFormSection}
		{fbvFormSection title="Link do Facebook:"}
			{fbvElement type="text" id="link02" value=$link02}
            
		{/fbvFormSection}
		{fbvFormSection title="Link do Instagram:"}
			{fbvElement type="text" id="link03" value=$link03}
		{/fbvFormSection}
    {/fbvFormArea}
    {fbvFormButtons submitText="common.save"}
</form>
