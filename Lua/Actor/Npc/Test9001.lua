require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Test9001 = class("Test9001", NpcActorProxy)
Test9001.defaultAlias = "Test9001"

function Test9001:GetCustomFreeStyleList()
    return {3}
end

function Test9001:Start()
    print("###################_________________")
    self:RunTo(M.Pos(22.0, 0.0, 43.0))
    self:CallOnCollisionEnter(self.OnCollisionEnter)
end

function Test9001:OnCollisionEnter(arg1)
    print("Enter Collision")
    print(arg1.isSprint)
    if arg1.isSprint then
        self:DoOnCollisionEnter()
    end
end

function Test9001:DoOnCollisionEnter()
    if not self:DoingFreeStyle() then
        self:CallDelay(5, self.GoOn)
        self:DoFreeStyleTask(3, true, self.Walk)
    end
end

function Test9001:GoOn(arg1)
    print("Go on")
    self:DoFreeStateTrigger()
end

function Test9001:Walk(arg1)
    print("Walk To")
    self:WalkTo(M.Pos(22.0, 0.0, 43.0))
end

return Test9001
