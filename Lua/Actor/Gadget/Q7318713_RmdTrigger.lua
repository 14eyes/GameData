require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318713_RmdTrigger = class("Q7318713_RmdTrigger", GadgetActorProxy)
Q7318713_RmdTrigger.defaultAlias = "Q7318713_RmdTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318713_RmdTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318713_RmdTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7318713_RmdTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73187"):NarratorOnlyTaskByData(datas.s7318713_Rmd_2)
    this:DestroySelf()
end

function Q7318713_RmdTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7318713_RmdTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7318713_RmdTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318713_RmdTrigger
