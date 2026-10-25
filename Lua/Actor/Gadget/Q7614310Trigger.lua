require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614310Trigger = class("Q7614310Trigger", GadgetActorProxy)
Q7614310Trigger.defaultAlias = "Q7614310Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614310Trigger:OnPostDataPrepare()
    print("Q7614310Trigger - OnPostDataPrepare")
    this = self
end

function Q7614310Trigger:OnPostComponentPrepare()
    print("Q7614310Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(33, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614310Trigger:TriggerIn()
    print("Q7614310Trigger - TriggerIn")
    actorMgr:GetActor("76143"):QuestNarratorTask(datas.RMD10, function(arg1)
        this:DestroySelf()
    end)
end

function Q7614310Trigger:PreTriggerIn()
    print("Q7614310Trigger - PreTriggerIn")
end

function Q7614310Trigger:LightUpTriggerIn()
    print("Q7614310Trigger - LightUpTriggerIn")
end

function Q7614310Trigger:TriggerOut()
    print("Q7614310Trigger - TriggerOut")
end

return Q7614310Trigger
