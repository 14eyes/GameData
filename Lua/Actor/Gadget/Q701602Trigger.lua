require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701602Trigger = class("Q701602Trigger", GadgetActorProxy)
Q701602Trigger.defaultAlias = "Q701602Trigger"
local Q7016ClientConfig = require("Quest/Client/Q7016ClientConfig")

local this
local subIDs = Q7016ClientConfig.SubIDs
local datas = Q7016ClientConfig.Datas
local npcs = Q7016ClientConfig.Npcs
local points = Q7016ClientConfig.Points

function Q701602Trigger:OnPostDataPrepare()
    print("Q701602Trigger - OnPostDataPrepare")
    this = self
end

function Q701602Trigger:OnPostComponentPrepare()
    print("Q701602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7016)
end

function Q701602Trigger:TriggerIn()
    print("Q701602Trigger - TriggerIn")
    actorMgr:GetActor("7016"):QuestNarratorTask(datas.NarratorWithId_701601, nil)
    this:DestroySelf()
end

function Q701602Trigger:PreTriggerIn()
    print("Q701602Trigger - PreTriggerIn")
end

function Q701602Trigger:LightUpTriggerIn()
    print("Q701602Trigger - LightUpTriggerIn")
end

function Q701602Trigger:TriggerOut()
    print("Q701602Trigger - TriggerOut")
end

return Q701602Trigger
