import React from "react";
const ReadOnlyRow =({product}) => { 



 
  return (
   /*  <tr>
    <td>{product.id}</td>
    <td>{product.name}</td>    
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
  </tr> */







    <tr>
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
    </tr> 
  );
};




export default ReadOnlyRow;
