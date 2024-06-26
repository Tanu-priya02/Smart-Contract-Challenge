// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ToDoList {
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    uint public taskCount;

    event TaskCreated(uint id, string content, bool completed);

    event TaskCompleted(uint id, bool completed);

    function addTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }

    function completeTask(uint _taskId) public {
        Task storage task = tasks[_taskId];
        require(task.id != 0, "Task does not exist.");
        task.completed = true;
        emit TaskCompleted(_taskId, true);
    }

    function getTask(uint _taskId) public view returns (uint, string memory, bool) {
        Task storage task = tasks[_taskId];
        require(task.id != 0, "Task does not exist.");
        return (task.id, task.content, task.completed);
    }

    function getTaskCount() public view returns (uint) {
        return taskCount;
    }
}
