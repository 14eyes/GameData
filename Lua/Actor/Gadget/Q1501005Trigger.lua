require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501005Trigger = class("Q1501005Trigger", GadgetActorProxy)
Q1501005Trigger.defaultAlias = "Q1501005Trigger"
local Q15010ClientConfig = require("Quest/Client/Q15010ClientConfig")

local this
local subIDs = Q15010ClientConfig.SubIDs
local datas = Q15010ClientConfig.Datas
local npcs = Q15010ClientConfig.Npcs
local points = Q15010ClientConfig.Points

function Q1501005Trigger:OnPostDataPrepare()
    print("Q1501005Trigger - OnPostDataPrepare")
    this = self
end

function Q1501005Trigger:OnPostComponentPrepare()
    print("Q1501005Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15010)
end

function Q1501005Trigger:TriggerIn()
    print("Q1501005Trigger - TriggerIn")
    actorMgr:GetActor("15010"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("15010"):CreateQuestNpcById(1501005, npcs.Npc1087.id, 0, false, 0)
        actorMgr:GetActor("15010"):RequestInteraction(npcs.Npc1087.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1501005Trigger:PreTriggerIn()
    print("Q1501005Trigger - PreTriggerIn")
end

function Q1501005Trigger:LightUpTriggerIn()
    print("Q1501005Trigger - LightUpTriggerIn")
end

function Q1501005Trigger:TriggerOut()
    print("Q1501005Trigger - TriggerOut")
end

return Q1501005Trigger
