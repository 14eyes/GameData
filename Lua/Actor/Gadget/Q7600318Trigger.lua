require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600318Trigger = class("Q7600318Trigger", GadgetActorProxy)
Q7600318Trigger.defaultAlias = "Q7600318Trigger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600318Trigger:OnPostDataPrepare()
    print("Q7600318Trigger - OnPostDataPrepare")
    this = self
end

function Q7600318Trigger:OnPostComponentPrepare()
    print("Q7600318Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(25, 25, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600318Trigger:TriggerIn()
    print("Q7600318Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600318)
    this:DestroySelf()
end

function Q7600318Trigger:PreTriggerIn()
    print("Q7600318Trigger - PreTriggerIn")
end

function Q7600318Trigger:LightUpTriggerIn()
    print("Q7600318Trigger - LightUpTriggerIn")
end

function Q7600318Trigger:TriggerOut()
    print("Q7600318Trigger - TriggerOut")
end

return Q7600318Trigger
