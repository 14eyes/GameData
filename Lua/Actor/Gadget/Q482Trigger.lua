require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q482Trigger = class("Q482Trigger", GadgetActorProxy)
Q482Trigger.defaultAlias = "Q482Trigger"
local Q482ClientConfig = require("Quest/Client/Q482ClientConfig")

function Q482Trigger:OnPostDataPrepare() end

function Q482Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q482Trigger:TriggerIn()
    print("In Q482Trigger")
    local actor = actorMgr:GetActor(Q482ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48201)
    end

    self:DestroySelf()
end

function Q482Trigger:TriggerOut() end
return Q482Trigger
