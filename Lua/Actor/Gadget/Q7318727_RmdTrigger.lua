require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318727_RmdTrigger = class("Q7318727_RmdTrigger", GadgetActorProxy)
Q7318727_RmdTrigger.defaultAlias = "Q7318727_RmdTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318727_RmdTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318727_RmdTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318727_RmdTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73187"):NarratorOnlyTaskByData(datas.s7318727_Rmd)
    this:DestroySelf()
end

function Q7318727_RmdTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318727_RmdTrigger
