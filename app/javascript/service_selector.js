const serviceSelector = () => {
    const category = document.querySelector("#category");
    category.addEventListener("input", () =>{
      const serviceId = category.value;
      const subCategory = document.querySelector("#sub_category");
      subCategory.innerHTML = ""
      if (serviceId !== "") {
        fetch(`/services/${serviceId}/sub_services`, { headers: { accept: 'application/json' } })
        .then(response => response.json())
        .then((data) => {
          const options = data.sub_services.map((sub_service) => {
            return `<option value="${sub_service.id}">${sub_service.sub_category}</option>`
          }).join("")
          subCategory.innerHTML = `<option value=""></option>${options}`
        });
      }
    });
};

export { serviceSelector };
