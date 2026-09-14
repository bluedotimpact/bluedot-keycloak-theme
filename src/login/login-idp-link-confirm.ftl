<#import "template.ftl" as layout>
<#import "components/atoms/button.ftl" as button>
<#import "components/atoms/form.ftl" as form>

<@layout.registrationLayout; section>
  <#if section="title">
    ${msg("confirmLinkIdpTitle")}
  <#elseif section="form">
    <p id="instruction1" class="instruction text-pretty">
      ${msg("confirmLinkIdpRevokePasswordNote1", idpDisplayName)}
    </p>
    <p id="instruction2" class="instruction text-pretty">
      ${msg("confirmLinkIdpRevokePasswordNote2")}
    </p>
    <@form.kw action=url.loginAction method="post">
      <#--
      <@button.kw variant="primary" name="submitAction" type="submit" value="updateProfile">
        ${msg("confirmLinkIdpReviewProfile")}
      </@button.kw>
      -->
      <@button.kw variant="primary" name="submitAction" type="submit" value="linkAccount">
        ${msg("confirmLinkIdpContinue", idpDisplayName)}
      </@button.kw>
    </@form.kw>
  </#if>
</@layout.registrationLayout>
