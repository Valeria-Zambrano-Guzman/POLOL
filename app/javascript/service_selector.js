const serviceSelector = () => {  
    const category = document.querySelector("#category");
    category.addEventListener("click", (oEvent) =>{
        // console.log(category.value);
        // const sub_category = document.querySelector("#sub_category");

        // sub_category.options = [];
        // console.log(document.querySelector("#sub_category").value);
    });
};
  
export { serviceSelector };