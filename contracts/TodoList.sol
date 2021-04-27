pragma solidity ^0.5.16;

contract TodoList{
	uint public taskCount = 0;

	struct Task{
	  uint id;
	  string content;
	  bool completed;
  }

  mapping(uint => Task) public tasks;

  constructor() public{
  	createTasks("Check out the task List");
}

  function createTasks(string memory _content) public{
  	taskCount ++;
  	tasks[taskCount] = Task(taskCount, _content, false);
   }

}