## Exercise 1

SecretDiary     ------> read -------> Diary -----> read
- unlocked         |
  |     /\         |
  |      \         |
  |        \       |
  \/         \     \/
lock/unlock     unlocked?


## Exercise 2

PasswordUser ---> profile -----> User ----->profile
- password         |             -name  
        /\         |             -bio
         \         |             -age
           \       |              
            \     \/
            authenticate

## Exercise 3

equal  ------ >   pass/fail

include  ------ >   pass/fail

respond_to  ------ >   pass/fail

becomes----------

equal    \
          \
include  ------ >   pass/fail
            /
respond_to /


## Exercise 4

scramble_by   ---> advancing_chars  

unscramble_by  ---> advancing_chars

scramble_by -----> reverse

unscramble_by  -----> reverse

equal

unscramble_by  ----->    advancing_chars
              \   /
                \
              /    \
scramble_by   -----> reverse
