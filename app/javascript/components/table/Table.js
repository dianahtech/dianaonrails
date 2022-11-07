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
        
        const ObjectKeys = (Object.keys(this.state.productList[0]))
        let conditionalHeaderRendering;
        if (ObjectKeys.length) {
            conditionalHeaderRendering = ObjectKeys.map((item, i) =>{return <th>{item}</th>})
        } else {
            conditionalHeaderRendering = <th>item</th>
        }  
        
        return (
        <React.Fragment> 
            <div className="container">          
                <table>
                      <thead>
                      <tr> 
                        {conditionalHeaderRendering} 
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







