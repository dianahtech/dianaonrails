import React from "react"
import PropTypes from "prop-types"
import ReadOnlyRow from "./CompForm/ReadOnlyRow"
import './Table.css';

class Table extends React.Component { 

        constructor(props) {
          super(props)
          this.state = {            
              productList:props.products,          
          } 
        }

        render () {
        const produtos=[
        {
        "id": 1,
        "nome": "Jenny Chan",
        "quantidade": 100,
        "valor": "50",
        "descricao": "jenny.chan@email.com"
        },{
        "id": 2,
        "nome": "carlins",
        "quantidade": 2,
        "valor": "0",
        "descricao": "seinaomano"
        },{
        "id": 3,
        "nome": "feijao",
        "quantidade": 100,
        "valor": "9",
        "descricao": "jenny.chan@email.com"
        },{
        "id": 4,
        "nome": "Jenny Chan",
        "quantidade": 100,
        "valor": "5",
        "descricao": "jenny.chan@email.com"
        },
        {
        "id": 5,
        "nome": "Jorge",
        "quantidade": 200,
        "valor": "564",
        "descricao": "seinao"
        }
        ] 
        console.log(`Este é o this.state.props${JSON.stringify(this.state.productList)}`)     
        
        return (
        <React.Fragment> 
            <div class="container">          
                <table>
                      <thead>
                      <tr> 
                      <th>Id</th>
                      <th>Status</th>
                      <th>Pagamento</th>
                      <th>Valor</th>
                      <th>Produtos</th>
                      <th>Data</th>
                      <th>Ações</th>
                      </tr>
                      </thead>
                      <tbody>
                      {this.state.productList && this.state.productList.map((product, i) => 
                      <ReadOnlyRow key={i} product={product} /> 
                      )}
                      </tbody>
                </table>   
            </div>             
        </React.Fragment>
        );
        }
}

Table.propTypes = {
products: PropTypes.array
};

export default Table;                        







