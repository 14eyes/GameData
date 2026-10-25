require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q378Trigger = class("Q378Trigger", GadgetActorProxy)
Q378Trigger.defaultAlias = "Q378Trigger"
local Q378ClientConfig = require("Quest/Client/Q378ClientConfig")

function Q378Trigger:OnPostDataPrepare() end

function Q378Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q378Trigger:TriggerIn()
    print("Out Q378Trigger")
    local actor = actorMgr:GetActor(Q378ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q378Trigger:TriggerOut() end
return Q378Trigger
