import React       from 'react';
import Chart from './chart';
import BoxScore from './box-score';

const styles = {
  display: "inline",
  height  : 300,
  padding : 30
};

const getShotCoords = shotData => {
  return shotData.map((shot) => [shot.x_coordinate, shot.y_coordinate, shot.result]);
}

export default (props) => {
  return <div style={{ display: 'inline-block' }}>
    <Chart {...props.gameData.data} {...styles}  style={{width: "50%"}}/>
    <BoxScore {...props.gameData} style={{ width: "50%" }} />
  </div>
}
