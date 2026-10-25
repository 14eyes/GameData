require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321915s1Trigger = class("Q7321915s1Trigger", GadgetActorProxy)
Q7321915s1Trigger.defaultAlias = "Q7321915s1Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321915s1Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321915s1Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321915s1Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73219"):NarratorOnlyTaskByData(datas.Narrator_7321906)
    this:DestroySelf()
end

function Q7321915s1Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321915s1Trigger
