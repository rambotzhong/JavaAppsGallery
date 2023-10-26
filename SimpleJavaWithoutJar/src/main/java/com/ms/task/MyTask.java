package com.ms.task;

import java.util.Date;
import java.util.TimerTask;

public class MyTask extends TimerTask {

    private String taskName;

    public MyTask(String taskName) {
        this.taskName = taskName;
    }

    @Override
    public void run() {
        System.out.println(new Date() + " : my task is executing.");
    }
}
