require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q48401Trigger = class("Q48401Trigger", GadgetActorProxy)
Q48401Trigger.defaultAlias = "Q48401Trigger"
local Q484ClientConfig = require("Quest/Client/Q484ClientConfig")

function Q48401Trigger:OnPostDataPrepare() end

function Q48401Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(6, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q48401Trigger:TriggerIn()
    print("In Q48401Trigger")
    local actor = actorMgr:GetActor(Q484ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48401)
    end

    self:DestroySelf()
end

function Q48401Trigger:TriggerOut() end
return Q48401Trigger
