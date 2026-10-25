require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20015trigger01 = class("Q20015trigger01", GadgetActorProxy)
Q20015trigger01.defaultAlias = "Q20015trigger01"
local Q20015ClientConfig = require("Quest/Client/Q20015ClientConfig")

local actor = actorMgr:GetActor(Q20015ClientConfig.ActorAlias)
function Q20015trigger01:OnPostDataPrepare() end

function Q20015trigger01:OnPostComponentPrepare()
    self:AddComponentTrigger(75, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q20015trigger01:TriggerIn()
    print("In Q20015trigger01")
end

function Q20015trigger01:TriggerOut()
    print("Out Q20015trigger01")
    local actor = actorMgr:GetActor(Q20015ClientConfig.ActorAlias)
    if actor:GetSubQuestState(2001502) == 2 then
        actor:FinishQuestID(true, 2001502)
        print("let 2001502 fail")
    end

    self:DestroySelf()
end

return Q20015trigger01
