package dev.chainguard.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
    @GetMapping("/")
    public @ResponseBody ResponseEntity<String> root() {
        return ResponseEntity.status(HttpStatus.OK)
                .body("");
    }

    @GetMapping("/hello")
    public @ResponseBody ResponseEntity<String> hello() {
        return ResponseEntity.status(HttpStatus.OK)
                .body("Hello, Learning Labs!");
    }
}
