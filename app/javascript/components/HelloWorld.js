/* 
import component like this:
<%= react_component("HelloWorld", { greeting: "Hello from react-rails." }) %> 
OR
<%= react_component("/Pages/HelloWorld", { greeting: "Hello from react-rails." }) %>
*/

import React from "react"
import PropTypes from "prop-types"
class HelloWorld extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
