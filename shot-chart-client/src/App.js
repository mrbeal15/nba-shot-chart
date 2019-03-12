import axios from 'axios';
import React, { Component } from 'react';
import Game from './components/Game';

const styles = {
  backgroundColor: 'red'
}

class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      gameData: null,
      loading: false
    };
  }

  componentWillMount() {
    this.setState({ loading: true });

    axios({
      method:'get',
      url:'http://localhost:3001/games',
      responseType: 'json'
    })
    .then(data => {
      this.setState({ gameData: data, loading: false })
    });
  }

  render() {
    if (this.state.loading) {
      return <p>loading</p>
    }

    return (
      <div className="App">
        <header className="App-header">
          <Game {...this.state} />
        </header>
      </div>
    );
  }
}

export default App;
