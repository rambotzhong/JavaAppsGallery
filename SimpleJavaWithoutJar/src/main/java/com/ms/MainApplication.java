package com.ms;

import com.ms.task.MyTask;

import java.util.Timer;

public class MainApplication {

    public static void main(String[] args) {
        var timer = new Timer();
        timer.schedule(new MyTask("PeriodDemo"),2000L,1000L);
    }
}
