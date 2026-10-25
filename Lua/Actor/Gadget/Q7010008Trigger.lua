require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7010008Trigger = class("Q7010008Trigger", GadgetActorProxy)
Q7010008Trigger.defaultAlias = "Q7010008Trigger"
local Q70100ClientConfig = require("Quest/Client/Q70100ClientConfig")

local this
local subIDs = Q70100ClientConfig.SubIDs
local datas = Q70100ClientConfig.Datas
local npcs = Q70100ClientConfig.Npcs
local points = Q70100ClientConfig.Points

function Q7010008Trigger:OnPostDataPrepare()
    print("Q7010008Trigger - OnPostDataPrepare")
    this = self
end

function Q7010008Trigger:OnPostComponentPrepare()
    print("Q7010008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70100)
end

function Q7010008Trigger:TriggerIn()
    print("Q7010008Trigger - TriggerIn")
    actorMgr:GetActor("70100"):QuestNarratorTask(datas.NarratorWithId_7010030, nil)
    this:DestroySelf()
end

function Q7010008Trigger:PreTriggerIn()
    print("Q7010008Trigger - PreTriggerIn")
end

function Q7010008Trigger:LightUpTriggerIn()
    print("Q7010008Trigger - LightUpTriggerIn")
end

function Q7010008Trigger:TriggerOut()
    print("Q7010008Trigger - TriggerOut")
end

return Q7010008Trigger
