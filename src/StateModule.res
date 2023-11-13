module StateModule = {
  type state = {
    counter: int,
    userName: string,
  }

  let initialState = {
    counter: 0,
    userName: "John Doe",
  }

  let getState = () => initialState

  let incrementCounter = (currentState: state) => {
    ...currentState,
    counter: currentState.counter + 1,
  }

  let decrementCounter = (currentState: state) => {
    ...currentState,
    counter: currentState.counter - 1,
  }

  let setUserName = (currentState: state, newName: string) => {...currentState, userName: newName}
}
