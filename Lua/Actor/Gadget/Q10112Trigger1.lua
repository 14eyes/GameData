require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10112Trigger1 = class("Q10112Trigger1", GadgetActorProxy)
Q10112Trigger1.defaultAlias = "Q10112Trigger1"
local Q10112ClientConfig = require("Quest/Client/Q10112ClientConfig")

function Q10112Trigger1:OnPostDataPrepare() end

function Q10112Trigger1:OnPostComponentPrepare()
    self:AddComponentTrigger(3, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10112Trigger1:TriggerIn()
    local actor = actorMgr:GetActor(Q10112ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1011200)
    end

    self:DestroySelf()
end

function Q10112Trigger1:TriggerOut() end
return Q10112Trigger1
