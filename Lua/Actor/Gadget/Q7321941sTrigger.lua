require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321941sTrigger = class("Q7321941sTrigger", GadgetActorProxy)
Q7321941sTrigger.defaultAlias = "Q7321941sTrigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321941sTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321941sTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321941sTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73219"):NarratorOnlyTaskByData(datas.Narrator_7321904)
    this:DestroySelf()
end

function Q7321941sTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7321941sTrigger
