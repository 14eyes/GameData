require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701612Trigger = class("Q701612Trigger", GadgetActorProxy)
Q701612Trigger.defaultAlias = "Q701612Trigger"
local Q7016ClientConfig = require("Quest/Client/Q7016ClientConfig")

local this
local subIDs = Q7016ClientConfig.SubIDs
local datas = Q7016ClientConfig.Datas
local npcs = Q7016ClientConfig.Npcs
local points = Q7016ClientConfig.Points

function Q701612Trigger:OnPostDataPrepare()
    print("Q701612Trigger - OnPostDataPrepare")
    this = self
end

function Q701612Trigger:OnPostComponentPrepare()
    print("Q701612Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7016)
end

function Q701612Trigger:TriggerIn()
    print("Q701612Trigger - TriggerIn")
    actorMgr:GetActor("7016"):QuestNarratorTask(datas.NarratorWithId_701612, nil)
    this:DestroySelf()
end

function Q701612Trigger:PreTriggerIn()
    print("Q701612Trigger - PreTriggerIn")
end

function Q701612Trigger:LightUpTriggerIn()
    print("Q701612Trigger - LightUpTriggerIn")
end

function Q701612Trigger:TriggerOut()
    print("Q701612Trigger - TriggerOut")
end

return Q701612Trigger
