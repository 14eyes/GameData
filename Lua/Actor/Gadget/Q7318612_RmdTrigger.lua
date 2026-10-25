require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318612_RmdTrigger = class("Q7318612_RmdTrigger", GadgetActorProxy)
Q7318612_RmdTrigger.defaultAlias = "Q7318612_RmdTrigger"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318612_RmdTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318612_RmdTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, function(arg1) end)
end

function Q7318612_RmdTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73186"):NarratorOnlyTaskByData(datas.Rmd_7318612_Door)
    this:DestroySelf()
end

function Q7318612_RmdTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318612_RmdTrigger
