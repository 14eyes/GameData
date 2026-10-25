require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q464Trigger1 = class("Q464Trigger1", GadgetActorProxy)
Q464Trigger1.defaultAlias = "Q464Trigger1"
local Q464ClientConfig = require("Quest/Client/Q464ClientConfig")

function Q464Trigger1:OnPostDataPrepare() end

function Q464Trigger1:OnPostComponentPrepare()
    self:AddComponentTrigger(60, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q464Trigger1:TriggerIn() end

function Q464Trigger1:TriggerOut()
    print("Out Q464Trigger1")
    local actor = actorMgr:GetActor(Q464ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(true, nil)
    end

    self:DestroySelf()
end

return Q464Trigger1
