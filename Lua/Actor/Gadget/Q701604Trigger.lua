require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701604Trigger = class("Q701604Trigger", GadgetActorProxy)
Q701604Trigger.defaultAlias = "Q701604Trigger"
local Q7016ClientConfig = require("Quest/Client/Q7016ClientConfig")

local this
local subIDs = Q7016ClientConfig.SubIDs
local datas = Q7016ClientConfig.Datas
local npcs = Q7016ClientConfig.Npcs
local points = Q7016ClientConfig.Points

function Q701604Trigger:OnPostDataPrepare()
    print("Q701604Trigger - OnPostDataPrepare")
    this = self
end

function Q701604Trigger:OnPostComponentPrepare()
    print("Q701604Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7016)
end

function Q701604Trigger:TriggerIn()
    print("Q701604Trigger - TriggerIn")
    actorMgr:GetActor("7016"):QuestNarratorTask(datas.NarratorWithId_701605, nil)
    this:DestroySelf()
end

function Q701604Trigger:PreTriggerIn()
    print("Q701604Trigger - PreTriggerIn")
end

function Q701604Trigger:LightUpTriggerIn()
    print("Q701604Trigger - LightUpTriggerIn")
end

function Q701604Trigger:TriggerOut()
    print("Q701604Trigger - TriggerOut")
end

return Q701604Trigger
