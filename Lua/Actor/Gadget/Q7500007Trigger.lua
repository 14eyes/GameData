require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500007Trigger = class("Q7500007Trigger", GadgetActorProxy)
Q7500007Trigger.defaultAlias = "Q7500007Trigger"
local Q75000ClientConfig = require("Quest/Client/Q75000ClientConfig")

local this
local subIDs = Q75000ClientConfig.SubIDs
local datas = Q75000ClientConfig.Datas
local npcs = Q75000ClientConfig.Npcs
local points = Q75000ClientConfig.Points

function Q7500007Trigger:OnPostDataPrepare()
    print("Q7500007Trigger - OnPostDataPrepare")
    this = self
end

function Q7500007Trigger:OnPostComponentPrepare()
    print("Q7500007Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75000)
end

function Q7500007Trigger:TriggerIn()
    print("Q7500007Trigger - TriggerIn")
    actorMgr:GetActor("75000"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("75000"):RequestInteraction(npcs.Npc21460.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q7500007Trigger:PreTriggerIn()
    print("Q7500007Trigger - PreTriggerIn")
end

function Q7500007Trigger:LightUpTriggerIn()
    print("Q7500007Trigger - LightUpTriggerIn")
end

function Q7500007Trigger:TriggerOut()
    print("Q7500007Trigger - TriggerOut")
end

return Q7500007Trigger
