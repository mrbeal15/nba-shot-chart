import React        from 'react';
import GameInfo from './game-info.jsx';
import BoxScoreTable from './box-score-table.jsx';

export default (props) => {
  return <div>
    <GameInfo {...props} />
    <BoxScoreTable {...props} />
  </div>
}
