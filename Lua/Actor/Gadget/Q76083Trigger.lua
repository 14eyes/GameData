require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76083Trigger = class("Q76083Trigger", GadgetActorProxy)
Q76083Trigger.defaultAlias = "Q76083Trigger"
local Q76083ClientConfig = require("Quest/Client/Q76083ClientConfig")

local this
local subIDs = Q76083ClientConfig.SubIDs
local datas = Q76083ClientConfig.Datas
local npcs = Q76083ClientConfig.Npcs
local points = Q76083ClientConfig.Points

function Q76083Trigger:OnPostDataPrepare()
    print("Q76083Trigger - OnPostDataPrepare")
    this = self
end

function Q76083Trigger:OnPostComponentPrepare()
    print("Q76083Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76083)
end

function Q76083Trigger:TriggerIn()
    print("Q76083Trigger - TriggerIn")
    actorMgr:GetActor("76083"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("76083"):RequestInteraction(npcs.Npc1318.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q76083Trigger:PreTriggerIn()
    print("Q76083Trigger - PreTriggerIn")
end

function Q76083Trigger:LightUpTriggerIn()
    print("Q76083Trigger - LightUpTriggerIn")
end

function Q76083Trigger:TriggerOut()
    print("Q76083Trigger - TriggerOut")
end

return Q76083Trigger
