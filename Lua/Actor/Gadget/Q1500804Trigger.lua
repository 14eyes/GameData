require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500804Trigger = class("Q1500804Trigger", GadgetActorProxy)
Q1500804Trigger.defaultAlias = "Q1500804Trigger"
local Q15008ClientConfig = require("Quest/Client/Q15008ClientConfig")

local this
local subIDs = Q15008ClientConfig.SubIDs
local datas = Q15008ClientConfig.Datas
local npcs = Q15008ClientConfig.Npcs
local points = Q15008ClientConfig.Points

function Q1500804Trigger:OnPostDataPrepare()
    print("Q1500804Trigger - OnPostDataPrepare")
    this = self
end

function Q1500804Trigger:OnPostComponentPrepare()
    print("Q1500804Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15008)
end

function Q1500804Trigger:TriggerIn()
    print("Q1500804Trigger - TriggerIn")
    actorMgr:GetActor("15008"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("15008"):RequestInteraction(npcs.Npc14227.alias, "", true)
    end, nil, nil, 0, false, true)

    actorMgr:GetActor("15008"):EnablePlayerInputByQuest(true)
    this:DestroySelf()
end

function Q1500804Trigger:PreTriggerIn()
    print("Q1500804Trigger - PreTriggerIn")
end

function Q1500804Trigger:LightUpTriggerIn()
    print("Q1500804Trigger - LightUpTriggerIn")
end

function Q1500804Trigger:TriggerOut()
    print("Q1500804Trigger - TriggerOut")
end

return Q1500804Trigger
