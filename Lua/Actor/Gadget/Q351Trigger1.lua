require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q351Trigger1 = class("Q351Trigger1", GadgetActorProxy)
Q351Trigger1.defaultAlias = "Q351Trigger1"
local Q351ClientConfig = require("Quest/Client/Q351ClientConfig")

function Q351Trigger1:OnPostDataPrepare() end

function Q351Trigger1:OnPostComponentPrepare()
    self:AddComponentTrigger(2, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q351Trigger1:TriggerIn() end

function Q351Trigger1:TriggerOut()
    print("Exit " .. tostring(outCnt))
    print("Out Q351Trigger1")
    local actor = actorMgr:GetActor(Q351ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 35100)
    end

    self:DestroySelf()
end

return Q351Trigger1
