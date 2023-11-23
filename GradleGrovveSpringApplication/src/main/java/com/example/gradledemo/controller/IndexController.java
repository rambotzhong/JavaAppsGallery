package com.example.gradledemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;

@RestController
@RequestMapping(value = "/")
public class IndexController {
    @GetMapping("")
    public Flux<String> hello() {
        return Flux.just("Hell world, this is greeting from webflux.");
    }
}
