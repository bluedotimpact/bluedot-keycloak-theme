<#macro kw color="" component="button" size="" rest...>
  <#switch size>
    <#case "medium">
      <#assign sizeClass="px-3 py-1.5 text-sm">
      <#break>
    <#case "small">
      <#assign sizeClass="px-2 py-1 text-xs">
      <#break>
    <#default>
      <#assign sizeClass="leading-4 py-1.5 px-3 text-base">
  </#switch>

  <${component}
    class="${sizeClass} border-black text-black hover:border-bluedot-normal hover:bg-bluedot-lighter focus-visible:border-bluedot-normal focus-visible:bg-bluedot-lighter focus-visible:outline-bluedot-normal active:border-bluedot-normal active:bg-bluedot-normal active:text-white font-normal border rounded-[20px] transition-all duration-200 inline-block cursor-pointer focus-visible:outline-1 outline-none outline-offset-0"

    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>
