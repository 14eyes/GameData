require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600202Trigger = class("Q7600202Trigger", GadgetActorProxy)
Q7600202Trigger.defaultAlias = "Q7600202Trigger"
local Q76002ClientConfig = require("Quest/Client/Q76002ClientConfig")

local this
local subIDs = Q76002ClientConfig.SubIDs
local datas = Q76002ClientConfig.Datas
local npcs = Q76002ClientConfig.Npcs
local points = Q76002ClientConfig.Points

function Q7600202Trigger:OnPostDataPrepare()
    print("Q7600202Trigger - OnPostDataPrepare")
    this = self
end

function Q7600202Trigger:OnPostComponentPrepare()
    print("Q7600202Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76002)
end

function Q7600202Trigger:TriggerIn()
    print("Q7600202Trigger - TriggerIn")
    actorMgr:GetActor("76002"):QuestNarratorTask(datas.NarratorWithId_7600202, nil)
    this:DestroySelf()
end

function Q7600202Trigger:PreTriggerIn()
    print("Q7600202Trigger - PreTriggerIn")
end

function Q7600202Trigger:LightUpTriggerIn()
    print("Q7600202Trigger - LightUpTriggerIn")
end

function Q7600202Trigger:TriggerOut()
    print("Q7600202Trigger - TriggerOut")
end

return Q7600202Trigger
