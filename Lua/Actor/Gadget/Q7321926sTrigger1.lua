require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321926sTrigger1 = class("Q7321926sTrigger1", GadgetActorProxy)
Q7321926sTrigger1.defaultAlias = "Q7321926sTrigger1"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321926sTrigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321926sTrigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321926sTrigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73219"):NarratorOnlyTaskByData(datas.Narrator_7321932)
    this:DestroySelf()
end

function Q7321926sTrigger1:TriggerOut()
    print("TriggerOut")
end

return Q7321926sTrigger1
