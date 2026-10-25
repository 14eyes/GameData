require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500904Trigger = class("Q1500904Trigger", GadgetActorProxy)
Q1500904Trigger.defaultAlias = "Q1500904Trigger"
local Q15009ClientConfig = require("Quest/Client/Q15009ClientConfig")

local this
local subIDs = Q15009ClientConfig.SubIDs
local datas = Q15009ClientConfig.Datas
local npcs = Q15009ClientConfig.Npcs
local points = Q15009ClientConfig.Points

function Q1500904Trigger:OnPostDataPrepare()
    print("Q1500904Trigger - OnPostDataPrepare")
    this = self
end

function Q1500904Trigger:OnPostComponentPrepare()
    print("Q1500904Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15009)
end

function Q1500904Trigger:TriggerIn()
    print("Q1500904Trigger - TriggerIn")
end

function Q1500904Trigger:PreTriggerIn()
    print("Q1500904Trigger - PreTriggerIn")
end

function Q1500904Trigger:LightUpTriggerIn()
    print("Q1500904Trigger - LightUpTriggerIn")
    actorMgr:GetActor("15009"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("15009"):CreateQuestNpcById(1500904, npcs.Npc1087.id, 0, false, 0)
        actorMgr:GetActor("15009"):RequestInteraction(npcs.Npc1087.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q1500904Trigger:TriggerOut()
    print("Q1500904Trigger - TriggerOut")
end

return Q1500904Trigger
