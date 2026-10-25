require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77656Trigger = class("Q77656Trigger", GadgetActorProxy)
Q77656Trigger.defaultAlias = "Q77656Trigger"
local Q77656ClientConfig = require("Quest/Client/Q77656ClientConfig")

local this
local subIDs = Q77656ClientConfig.SubIDs
local datas = Q77656ClientConfig.Datas
local npcs = Q77656ClientConfig.Npcs
local points = Q77656ClientConfig.Points

function Q77656Trigger:OnPostDataPrepare()
    print("Q77656Trigger - OnPostDataPrepare")
    this = self
end

function Q77656Trigger:OnPostComponentPrepare()
    print("Q77656Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77656)
end

function Q77656Trigger:TriggerIn()
    print("Q77656Trigger - TriggerIn")
    actorMgr:GetActor("77656"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("77656"):CancelStoryByQuest(147765601)
        actorMgr:GetActor("77656"):RequestInteraction(npcs.Npc1335.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q77656Trigger:PreTriggerIn()
    print("Q77656Trigger - PreTriggerIn")
end

function Q77656Trigger:LightUpTriggerIn()
    print("Q77656Trigger - LightUpTriggerIn")
end

function Q77656Trigger:TriggerOut()
    print("Q77656Trigger - TriggerOut")
end

return Q77656Trigger
