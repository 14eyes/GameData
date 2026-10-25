require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019014Trigger = class("Q4019014Trigger", GadgetActorProxy)
Q4019014Trigger.defaultAlias = "Q4019014Trigger"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019014Trigger:OnPostDataPrepare()
    print("Q4019014Trigger - OnPostDataPrepare")
    this = self
end

function Q4019014Trigger:OnPostComponentPrepare()
    print("Q4019014Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019014Trigger:TriggerIn()
    print("Q4019014Trigger - TriggerIn")
end

function Q4019014Trigger:PreTriggerIn()
    print("Q4019014Trigger - PreTriggerIn")
end

function Q4019014Trigger:LightUpTriggerIn()
    print("Q4019014Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40190"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("40190"):RequestInteraction(npcs.Npc15017.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q4019014Trigger:TriggerOut()
    print("Q4019014Trigger - TriggerOut")
end

return Q4019014Trigger
