require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q395Trigger = class("Q395Trigger", GadgetActorProxy)
Q395Trigger.defaultAlias = "Q395Trigger"
local Q395ClientConfig = require("Quest/Client/Q395ClientConfig")

function Q395Trigger:OnPostDataPrepare() end

function Q395Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q395Trigger:TriggerIn()
    print("Out Q395Trigger")
    local actor = actorMgr:GetActor(Q395ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q395Trigger:TriggerOut() end
return Q395Trigger
