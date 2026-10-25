require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318642_RmdTrigger = class("Q7318642_RmdTrigger", GadgetActorProxy)
Q7318642_RmdTrigger.defaultAlias = "Q7318642_RmdTrigger"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318642_RmdTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318642_RmdTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7318642_RmdTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73186"):NarratorOnlyTaskByData(datas.Rmd_7318642)
    this:DestroySelf()
end

function Q7318642_RmdTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7318642_RmdTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7318642_RmdTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318642_RmdTrigger
