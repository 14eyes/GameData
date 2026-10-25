require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20009trigger01 = class("Q20009trigger01", GadgetActorProxy)
Q20009trigger01.defaultAlias = "Q20009trigger01"
local Q20009ClientConfig = require("Quest/Client/Q20009ClientConfig")

local actor = actorMgr:GetActor(Q20009ClientConfig.ActorAlias)
function Q20009trigger01:OnPostDataPrepare() end

function Q20009trigger01:OnPostComponentPrepare()
    print("Q20009Trigger created")
    self:AddComponentTrigger(75, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q20009trigger01:TriggerIn()
    print("In Q20009trigger01")
end

function Q20009trigger01:TriggerOut()
    print("Out Q20009trigger01")
    local actor = actorMgr:GetActor(Q20009ClientConfig.ActorAlias)
    if actor:GetSubQuestState(2000902) == 2 then
        actor:FinishQuestID(true, 2000902)
        print("let 2000902 fail")
    end

    self:DestroySelf()
end

return Q20009trigger01
