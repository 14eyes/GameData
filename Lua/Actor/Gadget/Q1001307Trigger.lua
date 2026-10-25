require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001307Trigger = class("Q1001307Trigger", GadgetActorProxy)
Q1001307Trigger.defaultAlias = "Q1001307Trigger"
local Q10013ClientConfig = require("Quest/Client/Q10013ClientConfig")

local this
local subIDs = Q10013ClientConfig.SubIDs
local datas = Q10013ClientConfig.Datas
local npcs = Q10013ClientConfig.Npcs
local points = Q10013ClientConfig.Points

function Q1001307Trigger:OnPostDataPrepare()
    print("Q1001307Trigger - OnPostDataPrepare")
    this = self
end

function Q1001307Trigger:OnPostComponentPrepare()
    print("Q1001307Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10013)
end

function Q1001307Trigger:TriggerIn()
    print("Q1001307Trigger - TriggerIn")
    actorMgr:GetActor("10013"):QuestNarratorTask(datas.NarratorWithId_1001307, nil)
    this:DestroySelf()
end

function Q1001307Trigger:PreTriggerIn()
    print("Q1001307Trigger - PreTriggerIn")
end

function Q1001307Trigger:LightUpTriggerIn()
    print("Q1001307Trigger - LightUpTriggerIn")
end

function Q1001307Trigger:TriggerOut()
    print("Q1001307Trigger - TriggerOut")
end

return Q1001307Trigger
