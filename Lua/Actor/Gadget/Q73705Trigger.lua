require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73705Trigger = class("Q73705Trigger", GadgetActorProxy)
Q73705Trigger.defaultAlias = "Q73705Trigger"
local Q73705ClientConfig = require("Quest/Client/Q73705ClientConfig")

local this
local subIDs = Q73705ClientConfig.SubIDs
local npcs = Q73705ClientConfig.Npcs
local points = Q73705ClientConfig.Points

function Q73705Trigger:OnPostDataPrepare()
    print("Q73705Trigger - OnPostDataPrepare")
    this = self
end

function Q73705Trigger:OnPostComponentPrepare()
    print("Q73705Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73705)
end

function Q73705Trigger:TriggerIn()
    print("Q73705Trigger - TriggerIn")
    actorMgr:GetActor("73705"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("73705"):CreateQuestNpcById(7370503, npcs.Npc1052.id, 0, false, 0)
        actorMgr:GetActor("73705"):RequestInteraction(npcs.Npc1052.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q73705Trigger:PreTriggerIn()
    print("Q73705Trigger - PreTriggerIn")
end

function Q73705Trigger:LightUpTriggerIn()
    print("Q73705Trigger - LightUpTriggerIn")
end

function Q73705Trigger:TriggerOut()
    print("Q73705Trigger - TriggerOut")
end

return Q73705Trigger
