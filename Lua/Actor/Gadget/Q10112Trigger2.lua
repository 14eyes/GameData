require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10112Trigger2 = class("Q10112Trigger2", GadgetActorProxy)
Q10112Trigger2.defaultAlias = "Q10112Trigger2"
local Q10112ClientConfig = require("Quest/Client/Q10112ClientConfig")

function Q10112Trigger2:OnPostDataPrepare() end

function Q10112Trigger2:OnPostComponentPrepare()
    self:AddComponentTrigger(15, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10112Trigger2:TriggerIn()
    local actor = actorMgr:GetActor(Q10112ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1011205)
    end

    self:DestroySelf()
end

function Q10112Trigger2:TriggerOut() end
return Q10112Trigger2
