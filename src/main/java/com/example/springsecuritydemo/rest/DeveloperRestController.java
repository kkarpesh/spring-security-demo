package com.example.springsecuritydemo.rest;

import com.example.springsecuritydemo.model.Developer;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@RestController
@RequestMapping("/api/v1/developers")
public class DeveloperRestController {

    private List<Developer> developers = Stream.of(
            new Developer(1L, "Mily", "Rain"),
            new Developer(2L, "Polly", "Gatler"),
            new Developer(3L, "Den", "Lost")
    ).collect(Collectors.toList());

    @GetMapping
    @PreAuthorize("hasAuthority('developers:read')")
    public List<Developer> getAll(){
        return developers;
    }

    @GetMapping("/{id}")
    @PreAuthorize("hasAuthority('developers:read')")
    public Developer getById(@PathVariable Long id){
        return developers.stream().filter(developer -> developer.getId().equals(id)).findFirst().orElse(null);
    }

    @PostMapping
    @PreAuthorize("hasAuthority('developers:write')")
    public Developer create(@RequestBody Developer developer){
        developers.add(developer);
        return developer;
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasAuthority('developers:write')")
    public void deleteById(@PathVariable Long id){
        developers.removeIf(developer -> developer.getId().equals(id));
    }
}
