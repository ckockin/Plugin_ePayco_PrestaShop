{if $status == 'ok'}
<div style="width: 74px; margin: auto auto;">
  <img src="{$this_path_bw}preload.gif"><br/>
</div>
<div style="text-align: center;">
  Enviando a transacción de pago..., si el pedido no se envia automaticamente de click en el botón "Pagar Pedido"
</div>
<form action="https://secure.payco.co/checkout.php"
      method="post"
      enctype="application/x-www-form-urlencoded"
      name="paymentForm">
    <input type="hidden" name="p_cust_id_cliente" type="text" value="{$merchantid}" />
    <input type="hidden" name="p_key" type="text" value="{$p_key}" />
    <input type="hidden" name="p_id_invoice" type="text" value="{$refVenta}" />
    <input type="hidden" name="p_currency_code" type="text" value="{$currency}" />
    <input type="hidden" name="p_amount" type="text" value="{$total}" />
    <input type="hidden" name="p_description" type="text" value="ORDEN DE COMPRA # {$refVenta}" />
    <input type="hidden" name="p_email" type="text" value="{$custemail}" />
    <input type="hidden" name="p_url_respuesta" type="text" value="{$returnurl}" />
    <input type="hidden" name="p_url_confirmation" type="text" value="{$returnurl}" />
    <input type="hidden" name="p_tax" type="text" value="0" />
    <input type="hidden" name="p_amount_base" type="text" value="0" />
    <input type="hidden" name="p_test_request" type="text" value="{$merchanttest}" />
    <input type="hidden" name="p_extra1" type="text" value="{$extra1}" />
    <input type="hidden" name="p_extra2" type="text" value="{$extra2}" />
    <input type="hidden" name="p_signature" type="text" value="{$p_signature}" />

    <input name="p_billing_email" value="{$p_billing_email}" type="hidden" />
    <input name="p_billing_name" value="{$p_billing_name}" type="hidden" />
    <input name="p_billing_lastname" value="{$p_billing_lastname}" type="hidden" />

   <input type="submit" id="submit"
          style="background: #F0943E; color: #FFFFFF; font-size: 16px;"
          value="{l s='Pagar Pedido' mod='payco'}"
          class="button btn btn-default pull-right"/>

</form>
<!-- Auto ejecute el boton de pagos, redireccionando a la pasarela -->
<script>
 var submit = document.getElementById("submit");
 submit.click();
  /*cont=0;
  $(document).ready(function() {
    
   
    console.log(submit);
    if(submit != null) {
     
    }
  })*/
 
</script>
{else}
	<p class="warning">
		{l s='Hemos notado un problema con tu orden, si crees que es un error puedes contactar a nuestro' mod='ev1enlinea'}
		<a href="{$base_dir_ssl}contact-form.php">{l s='Departamento De Soporte' mod='ev1enlinea'}</a>.
	</p>
{/if}
