Object Oriented Code 1, Encapsulation & Cohesion
================================================
Makers week 2 skills challenge to be completed solo. 

## Learning goals

* Encapsulate program behaviour into cohesive classes.

## Introduction

Aim for "low coupling and high cohesion". 

### Cohesion

Each class should have one purpose or job, sometimes referred to as its responsibility.

A class has high cohesion when everything inside of it relates to that purpose, without anything extraneous. Perfection is achieved when there is nothing left to take away.

### Secret Diary Challenge

**Test-drive** the secret diary example:
Uses TDD and teh red-green-refactor process.

```
SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user calls `lock` again they throw errors again.
```

**First** organise it into one class only.
Solution [here](https://github.com/Whatapalaver/secret_diary/blob/master/lib/secret_diary.rb)

**Then**, when all your tests are green, reorganise it into classes with high cohesion.
Solution [here](https://github.com/Whatapalaver/secret_diary/blob/master/lib/secret_diary_encap.rb)