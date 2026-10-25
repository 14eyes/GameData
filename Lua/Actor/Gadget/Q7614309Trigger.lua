require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614309Trigger = class("Q7614309Trigger", GadgetActorProxy)
Q7614309Trigger.defaultAlias = "Q7614309Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614309Trigger:OnPostDataPrepare()
    print("Q7614309Trigger - OnPostDataPrepare")
    this = self
end

function Q7614309Trigger:OnPostComponentPrepare()
    print("Q7614309Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614309Trigger:TriggerIn()
    print("Q7614309Trigger - TriggerIn")
    actorMgr:GetActor("76143"):QuestNarratorTask(datas.RMD09, function(arg1)
        this:DestroySelf()
    end)
end

function Q7614309Trigger:PreTriggerIn()
    print("Q7614309Trigger - PreTriggerIn")
end

function Q7614309Trigger:LightUpTriggerIn()
    print("Q7614309Trigger - LightUpTriggerIn")
end

function Q7614309Trigger:TriggerOut()
    print("Q7614309Trigger - TriggerOut")
end

return Q7614309Trigger
