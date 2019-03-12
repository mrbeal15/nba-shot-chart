import React       from 'react';
import ScatterPlot from './scatter-plot';

const styles = {
  width   : 500,
  height  : 940,
  padding : 30
};

export default (props) => {
  return <div>
    <ScatterPlot {...props[21700001]} {...styles} />
  </div>
}
