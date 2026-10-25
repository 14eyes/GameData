require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q384Trigger = class("Q384Trigger", GadgetActorProxy)
Q384Trigger.defaultAlias = "Q384Trigger"
local Q384ClientConfig = require("Quest/Client/Q384ClientConfig")

function Q384Trigger:OnPostDataPrepare() end

function Q384Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q384Trigger:TriggerIn()
    print("Out Q384Trigger")
    local actor = actorMgr:GetActor(Q384ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q384Trigger:TriggerOut() end
return Q384Trigger
