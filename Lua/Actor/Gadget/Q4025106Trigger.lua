require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4025106Trigger = class("Q4025106Trigger", GadgetActorProxy)
Q4025106Trigger.defaultAlias = "Q4025106Trigger"
local Q40251ClientConfig = require("Quest/Client/Q40251ClientConfig")

local this
local subIDs = Q40251ClientConfig.SubIDs
local datas = Q40251ClientConfig.Datas
local npcs = Q40251ClientConfig.Npcs
local points = Q40251ClientConfig.Points

function Q4025106Trigger:OnPostDataPrepare()
    print("Q4025106Trigger - OnPostDataPrepare")
    this = self
end

function Q4025106Trigger:OnPostComponentPrepare()
    print("Q4025106Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40251)
end

function Q4025106Trigger:TriggerIn()
    print("Q4025106Trigger - TriggerIn")
end

function Q4025106Trigger:PreTriggerIn()
    print("Q4025106Trigger - PreTriggerIn")
end

function Q4025106Trigger:LightUpTriggerIn()
    print("Q4025106Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40251"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40251"):RequestInteraction(npcs.Npc17131.alias, "", true)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q4025106Trigger:TriggerOut()
    print("Q4025106Trigger - TriggerOut")
end

return Q4025106Trigger
