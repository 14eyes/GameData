require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019302Trigger = class("Q4019302Trigger", GadgetActorProxy)
Q4019302Trigger.defaultAlias = "Q4019302Trigger"
local Q40193ClientConfig = require("Quest/Client/Q40193ClientConfig")

local this
local subIDs = Q40193ClientConfig.SubIDs
local npcs = Q40193ClientConfig.Npcs
local points = Q40193ClientConfig.Points

function Q4019302Trigger:OnPostDataPrepare()
    print("Q4019302Trigger - OnPostDataPrepare")
    this = self
end

function Q4019302Trigger:OnPostComponentPrepare()
    print("Q4019302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40193)
end

function Q4019302Trigger:TriggerIn()
    print("Q4019302Trigger - TriggerIn")
end

function Q4019302Trigger:PreTriggerIn()
    print("Q4019302Trigger - PreTriggerIn")
end

function Q4019302Trigger:LightUpTriggerIn()
    print("Q4019302Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40193"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40193"):CreateQuestNpcById(4019302, npcs.Npc1044.id, 0, false, 0)
        actorMgr:GetActor("40193"):RequestInteraction(npcs.Npc1044.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4019302Trigger:TriggerOut()
    print("Q4019302Trigger - TriggerOut")
end

return Q4019302Trigger
