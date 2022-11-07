import React from "react";
const ReadOnlyRow =({product}) => {

  


  const ObjecValues = (Object.values(product))
  let conditionalBodyRendering;  


  conditionalBodyRendering = ObjecValues.map((item) =>{  
    if (typeof item==="object"){  
      let stringfy = JSON.stringify(item)
      return <td><div style={{height:40, overFlow:"hidden"}}> {stringfy}</div></td>     
    } else{
      return <td> <div style={{height:40, overFlow:"hidden"}}>{item}</div></td>
    }
  }) 



  return (
   
     <tr>
          {conditionalBodyRendering} 
    <td>
      <button
        type="button"
        onClick={()=>{}}
      >
        Editar
      </button>
      <button type="button" onClick={()=>{}}>
        Deletar
      </button>
    </td>

  </tr>  


     
 /*  <tr>
        <td>{product.id}</td>
      
      <td>{product.status}</td>
      <td>{product.payment_mode}</td>
      <td>{product.final_value}</td> 
        <td>
          <div>
          <h6>{product.items.name}</h6>|
          {product.items.id}
          </div>

        </td>
      <td>{product.created_at}</td>      
      <td>
        <button
          type="button"
          onClick={()=>{}}
        >
          Editar
        </button>
        <button type="button" onClick={()=>{}}>
          Deletar
        </button>
      </td> 
    </tr>  */
  );
};




export default ReadOnlyRow;
