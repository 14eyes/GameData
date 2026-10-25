require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600304Trigger = class("Q7600304Trigger", GadgetActorProxy)
Q7600304Trigger.defaultAlias = "Q7600304Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600304Trigger:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    actorMgr:GetActor("76003"):CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Q7600304Trigger:OnPostDataPrepare()
    print("Q7600304Trigger - OnPostDataPrepare")
    this = self
end

function Q7600304Trigger:OnPostComponentPrepare()
    print("Q7600304Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600304Trigger:TriggerIn()
    print("Q7600304Trigger - TriggerIn")
    this:NpcCreateWithNpcTrigger(1005, 0, 20, 7600304)
    this:DestroySelf()
end

function Q7600304Trigger:PreTriggerIn()
    print("Q7600304Trigger - PreTriggerIn")
end

function Q7600304Trigger:LightUpTriggerIn()
    print("Q7600304Trigger - LightUpTriggerIn")
end

function Q7600304Trigger:TriggerOut()
    print("Q7600304Trigger - TriggerOut")
end

return Q7600304Trigger
