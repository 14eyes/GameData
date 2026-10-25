require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600309Trigger = class("Q7600309Trigger", GadgetActorProxy)
Q7600309Trigger.defaultAlias = "Q7600309Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600309Trigger:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    actorMgr:GetActor("76003"):CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Q7600309Trigger:OnPostDataPrepare()
    print("Q7600309Trigger - OnPostDataPrepare")
    this = self
end

function Q7600309Trigger:OnPostComponentPrepare()
    print("Q7600309Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600309Trigger:TriggerIn()
    print("Q7600309Trigger - TriggerIn")
    this:NpcCreateWithNpcTrigger(1005, 0, 20, 7600309)
    this:DestroySelf()
end

function Q7600309Trigger:PreTriggerIn()
    print("Q7600309Trigger - PreTriggerIn")
end

function Q7600309Trigger:LightUpTriggerIn()
    print("Q7600309Trigger - LightUpTriggerIn")
end

function Q7600309Trigger:TriggerOut()
    print("Q7600309Trigger - TriggerOut")
end

return Q7600309Trigger
