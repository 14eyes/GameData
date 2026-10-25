require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q353Trigger1 = class("Q353Trigger1", GadgetActorProxy)
Q353Trigger1.defaultAlias = "Q353Trigger1"
local Q353ClientConfig = require("Quest/Client/Q353ClientConfig")

function Q353Trigger1:OnPostDataPrepare() end

function Q353Trigger1:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q353Trigger1:TriggerIn() end

function Q353Trigger1:TriggerOut()
    print("Out Q353Trigger1")
    local actor = actorMgr:GetActor(Q353ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:TransmitPlayerByQuestId(35312, 1)
    end
end

return Q353Trigger1
