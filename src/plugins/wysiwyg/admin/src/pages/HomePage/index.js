/*
 *
 * HomePage
 *
 */

import React, { memo } from 'react';
// import PropTypes from 'prop-types';
import pluginId from '../../pluginId';

const HomePage = () => {
  return (
    <div>
      <h1>{pluginId}&apos;s Página inicial</h1>
      <p>Arizas Home page.</p>
    </div>
  );
};

export default memo(HomePage);
