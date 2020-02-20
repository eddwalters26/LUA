-- return string of random characters for use as a password

function evaluate(passwordLength)
local passwordString=''
local randomNum=0
        if passwordLength <= 50 then
                for i=1,passwordLength
                do
                        repeat
                                randomNum = math.random(33,123)
                        until ((randomNum > 47 and randomNum < 58) or (randomNum > 64 and randomNum < 91) or (randomNum > 96 and randomNum < 123))

                        passwordString = passwordString || chr(randomNum)
                end

        else error("Requested password length is too long! Must be less than 51 characters")
        end
        return passwordString
end

function getType()
        return udf
end

function getName()
        return "generate_password"
end

function getArgs()
        local args={}
        args[1] = {"passwordLength", integer}
        args[2] = {"eval", integer}
        return args
end

function getResult()
        return varchar(50)
end
