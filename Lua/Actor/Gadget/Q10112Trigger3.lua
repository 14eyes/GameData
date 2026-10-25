require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10112Trigger3 = class("Q10112Trigger3", GadgetActorProxy)
Q10112Trigger3.defaultAlias = "Q10112Trigger3"
local Q10112ClientConfig = require("Quest/Client/Q10112ClientConfig")

function Q10112Trigger3:OnPostDataPrepare() end

function Q10112Trigger3:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10112Trigger3:TriggerIn()
    print("In Q10112Trigger3")
    local actor = actorMgr:GetActor(Q10112ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1011201)
        actor:FinishQuestID(true, 1011200)
    end

    self:DestroySelf()
end

function Q10112Trigger3:TriggerOut() end
return Q10112Trigger3
