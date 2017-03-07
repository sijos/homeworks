import { createStore, applyMiddleware } from 'redux';
import RootReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) => {
  const store = createStore(RootReducer, preloadedState,
    applyMiddleware(addLoggingToDispatch));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
};

export default configureStore;

const addLoggingToDispatch = store => next => action => {
  let dispatch = store.dispatch;
  console.log(store.getState());
  console.log(action);
  next(action);
  console.log(store.getState());
};
