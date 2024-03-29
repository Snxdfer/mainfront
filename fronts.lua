repeat task.wait() until game:IsLoaded()

local script_ran = false
for index, actor in next, getactors() do
    if actor.name == "frontlines_client_actor" then
        script_ran = true
        run_on_actor(actor, game:HttpGet("https://api.luarmor.net/files/v3/loaders/b79c4c85d8a01dab17afb3cc50f3f725.lua"))
        break
    end
end

if not script_ran then
    warn("Couldn't find the 'frontlines_client_actor' actor!")
end
