require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40189Trigger = class("Q40189Trigger", GadgetActorProxy)
Q40189Trigger.defaultAlias = "Q40189Trigger"
local Q40189ClientConfig = require("Quest/Client/Q40189ClientConfig")

local this
local subIDs = Q40189ClientConfig.SubIDs
local datas = Q40189ClientConfig.Datas
local npcs = Q40189ClientConfig.Npcs
local points = Q40189ClientConfig.Points

function Q40189Trigger:OnPostDataPrepare()
    print("Q40189Trigger - OnPostDataPrepare")
    this = self
end

function Q40189Trigger:OnPostComponentPrepare()
    print("Q40189Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40189)
end

function Q40189Trigger:TriggerIn()
    print("Q40189Trigger - TriggerIn")
    actorMgr:GetActor("40189"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("40189"):RequestInteraction(npcs.Npc1075.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40189Trigger:PreTriggerIn()
    print("Q40189Trigger - PreTriggerIn")
end

function Q40189Trigger:LightUpTriggerIn()
    print("Q40189Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40189"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q40189Trigger:TriggerOut()
    print("Q40189Trigger - TriggerOut")
end

return Q40189Trigger
