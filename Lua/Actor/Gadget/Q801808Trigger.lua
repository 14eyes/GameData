require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801808Trigger = class("Q801808Trigger", GadgetActorProxy)
Q801808Trigger.defaultAlias = "Q801808Trigger"
local Q8018ClientConfig = require("Quest/Client/Q8018ClientConfig")

local this
local subIDs = Q8018ClientConfig.SubIDs
local datas = Q8018ClientConfig.Datas
local npcs = Q8018ClientConfig.Npcs
local points = Q8018ClientConfig.Points

function Q801808Trigger:OnPostDataPrepare()
    print("Q801808Trigger - OnPostDataPrepare")
    this = self
end

function Q801808Trigger:OnPostComponentPrepare()
    print("Q801808Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8018)
end

function Q801808Trigger:TriggerIn()
    print("Q801808Trigger - TriggerIn")
    actorMgr:GetActor("8018"):QuestNarratorTask(datas.Q801808Kaiche, nil)
    this:DestroySelf()
end

function Q801808Trigger:PreTriggerIn()
    print("Q801808Trigger - PreTriggerIn")
end

function Q801808Trigger:LightUpTriggerIn()
    print("Q801808Trigger - LightUpTriggerIn")
end

function Q801808Trigger:TriggerOut()
    print("Q801808Trigger - TriggerOut")
end

return Q801808Trigger
