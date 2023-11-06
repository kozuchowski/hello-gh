package pl.performancemedia.helloworld.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class HelloController {

    @Value("${name}")
    String name;
    @GetMapping("/hello")
    public String hello() {
        return "Hello world " + name;
    }
}
