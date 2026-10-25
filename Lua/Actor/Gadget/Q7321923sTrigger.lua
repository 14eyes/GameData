require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321923sTrigger = class("Q7321923sTrigger", GadgetActorProxy)
Q7321923sTrigger.defaultAlias = "Q7321923sTrigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321923sTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321923sTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321923sTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73219"):NarratorOnlyTaskByData(datas.Narrator_7321915)
    this:DestroySelf()
end

function Q7321923sTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7321923sTrigger
