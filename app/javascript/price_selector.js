const priceSelector = () => {
  const sub_category = document.getElementById('sub_service_id');
  if (sub_category) {
    sub_category.addEventListener("input", (event) => {
      const sub_serviceId = event.currentTarget.value
      console.log(sub_serviceId)
      // fetch usando el id del servicio seleccionado para obtener el precio del servicio seleccion
      fetch(`/sub_services/${sub_serviceId}`, { headers: { accept: 'application/json' } })
      .then(response => response.json())
      .then((data) => {
        console.log(data.sub_service.price)
        document.getElementById("card-price").innerHTML = `<span>VALOR DEL SERVICIO: </span><span>$ ${data.sub_service.price}</span>`;
      });
    });
  }
};

export { priceSelector };
