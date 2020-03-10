import React from 'react'
import { Route, Switch, } from 'react-router-dom'
import Home from './components/Home'
import Customers from './components/Customers'
import About from './components/About'
import NoMatch from './components/NoMatch.js'
import Navbar from './components/Navbar'
import { Container, } from "semantic-ui-react"

const App = () => (
  
  <>
  <Navbar />
    <Container>
      <Switch>
        <Route exact path="/" component={Home} />
        <Route path="/about" component={About} />
        <Route path="/Customers" component={Customers} />
        <Route component={NoMatch} />
      </Switch>
    </Container>
  </>
);

export default App;

