require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77652Trigger = class("Q77652Trigger", GadgetActorProxy)
Q77652Trigger.defaultAlias = "Q77652Trigger"
local Q77652ClientConfig = require("Quest/Client/Q77652ClientConfig")

local this
local subIDs = Q77652ClientConfig.SubIDs
local npcs = Q77652ClientConfig.Npcs
local points = Q77652ClientConfig.Points

function Q77652Trigger:OnPostDataPrepare()
    print("Q77652Trigger - OnPostDataPrepare")
    this = self
end

function Q77652Trigger:OnPostComponentPrepare()
    print("Q77652Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77652)
end

function Q77652Trigger:TriggerIn()
    print("Q77652Trigger - TriggerIn")
    actorMgr:GetActor("77652"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("77652"):CreateQuestNpcById(7765201, npcs.Npc17287.id, 0, false, 0)
        actorMgr:GetActor("77652"):RequestInteraction(npcs.Npc17287.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q77652Trigger:PreTriggerIn()
    print("Q77652Trigger - PreTriggerIn")
end

function Q77652Trigger:LightUpTriggerIn()
    print("Q77652Trigger - LightUpTriggerIn")
end

function Q77652Trigger:TriggerOut()
    print("Q77652Trigger - TriggerOut")
end

return Q77652Trigger
