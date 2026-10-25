require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019001Trigger = class("Q4019001Trigger", GadgetActorProxy)
Q4019001Trigger.defaultAlias = "Q4019001Trigger"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019001Trigger:OnPostDataPrepare()
    print("Q4019001Trigger - OnPostDataPrepare")
    this = self
end

function Q4019001Trigger:OnPostComponentPrepare()
    print("Q4019001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019001Trigger:TriggerIn()
    print("Q4019001Trigger - TriggerIn")
end

function Q4019001Trigger:PreTriggerIn()
    print("Q4019001Trigger - PreTriggerIn")
end

function Q4019001Trigger:LightUpTriggerIn()
    print("Q4019001Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40190"):ShowBlackScreenWithDialogText(0, 2, 0.5, function(arg1)
        actorMgr:GetActor("40190"):RequestInteraction(npcs.Npc1034.alias, "", true)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q4019001Trigger:TriggerOut()
    print("Q4019001Trigger - TriggerOut")
end

return Q4019001Trigger
