require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310320_RmdTrigger = class("Q7310320_RmdTrigger", GadgetActorProxy)
Q7310320_RmdTrigger.defaultAlias = "Q7310320_RmdTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310320_RmdTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310320_RmdTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310320_RmdTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73103"):NarratorOnlyTaskByData(datas.N_7310320)
    this:DestroySelf()
end

function Q7310320_RmdTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310320_RmdTrigger
