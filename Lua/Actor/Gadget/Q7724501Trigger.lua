require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7724501Trigger = class("Q7724501Trigger", GadgetActorProxy)
Q7724501Trigger.defaultAlias = "Q7724501Trigger"
local Q77245ClientConfig = require("Quest/Client/Q77245ClientConfig")

local this
local subIDs = Q77245ClientConfig.SubIDs
local npcs = Q77245ClientConfig.Npcs
local points = Q77245ClientConfig.Points

function Q7724501Trigger:NpcDestroyWithDither(arg1, arg2)
    local actor = actorMgr:GetActor("77245")
    actor.GetQuestNpcActor(actor, arg2, 0):DestroyWithDitherEx(1)
    actor.CallDelay(actor, 1, function(arg1_2)
        actor:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Q7724501Trigger:OnPostDataPrepare()
    print("Q7724501Trigger - OnPostDataPrepare")
    this = self
end

function Q7724501Trigger:OnPostComponentPrepare()
    print("Q7724501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77245)
end

function Q7724501Trigger:TriggerIn()
    print("Q7724501Trigger - TriggerIn")
    this:NpcDestroyWithDither(3, npcs.Npc17111.alias)
    actorMgr:GetActor("77245"):CallDelayByQuest("", 2, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7724501})
        this:DestroySelf()
    end)
end

function Q7724501Trigger:PreTriggerIn()
    print("Q7724501Trigger - PreTriggerIn")
end

function Q7724501Trigger:LightUpTriggerIn()
    print("Q7724501Trigger - LightUpTriggerIn")
end

function Q7724501Trigger:TriggerOut()
    print("Q7724501Trigger - TriggerOut")
end

return Q7724501Trigger
