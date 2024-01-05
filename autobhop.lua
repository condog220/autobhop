local jumped = 0

hook.Add("Tick", "autobhop", function()
    if input.IsKeyDown(KEY_SPACE) then
        if LocalPlayer():IsOnGround() then
            RunConsoleCommand("+jump")
            jumped = 1
        else
            RunConsoleCommand("-jump")
            jumped = 0
        end
    elseif LocalPlayer():IsOnGround() then
        if jumped == 1 then
            RunConsoleCommand("-jump")
            jumped = 0
        end
    end
end)
