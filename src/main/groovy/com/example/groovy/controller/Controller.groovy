package com.example.groovy.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class Controller {

    @GetMapping
    String get() {
        return "show my more info"
    }
}
