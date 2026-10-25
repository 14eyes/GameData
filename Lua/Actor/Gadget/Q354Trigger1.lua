require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q354Trigger1 = class("Q354Trigger1", GadgetActorProxy)
Q354Trigger1.defaultAlias = "Q354Trigger1"
local Q354ClientConfig = require("Quest/Client/Q354ClientConfig")

function Q354Trigger1:OnPostDataPrepare() end

function Q354Trigger1:OnPostComponentPrepare()
    self:AddComponentTrigger(2, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q354Trigger1:TriggerIn() end

function Q354Trigger1:TriggerOut()
    print("Exit " .. tostring(outCnt))
    print("Out Q354Trigger1")
    local actor = actorMgr:GetActor(Q354ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 35405)
    end

    self:DestroySelf()
end

return Q354Trigger1
