require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612201Trigger = class("Q7612201Trigger", GadgetActorProxy)
Q7612201Trigger.defaultAlias = "Q7612201Trigger"
local Q76122ClientConfig = require("Quest/Client/Q76122ClientConfig")

local this
local subIDs = Q76122ClientConfig.SubIDs
local datas = Q76122ClientConfig.Datas
local npcs = Q76122ClientConfig.Npcs
local points = Q76122ClientConfig.Points

function Q7612201Trigger:OnPostDataPrepare()
    print("Q7612201Trigger - OnPostDataPrepare")
    this = self
end

function Q7612201Trigger:OnPostComponentPrepare()
    print("Q7612201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76122)
end

function Q7612201Trigger:TriggerIn()
    print("Q7612201Trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("76122"):QuestNarratorTask(datas.NarratorWithId, nil)
end

function Q7612201Trigger:PreTriggerIn()
    print("Q7612201Trigger - PreTriggerIn")
end

function Q7612201Trigger:LightUpTriggerIn()
    print("Q7612201Trigger - LightUpTriggerIn")
end

function Q7612201Trigger:TriggerOut()
    print("Q7612201Trigger - TriggerOut")
end

return Q7612201Trigger
