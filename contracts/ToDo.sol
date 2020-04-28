pragma solidity ^0.5.16;
 
contract Todo
{
    uint public count = 0;


    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    function createTask(string memory _content) public {
    count = count + 1;
    tasks[count] = Task(count, _content, false);
    emit TaskCreated(count, _content, false);
    }

    event TaskCreated(
    uint id,
    string content,
    bool completed
    );
    event TaskCompleted(
        uint id,
        bool completed
    );

    function checkTask(uint _id) public {
    Task memory _task = tasks[_id];
    _task.completed = !_task.completed;
    tasks[_id] = _task;
    emit TaskCompleted(_id, _task.completed);
    }
}