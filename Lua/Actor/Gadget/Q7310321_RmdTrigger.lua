require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310321_RmdTrigger = class("Q7310321_RmdTrigger", GadgetActorProxy)
Q7310321_RmdTrigger.defaultAlias = "Q7310321_RmdTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310321_RmdTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310321_RmdTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310321_RmdTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73103"):NarratorOnlyTaskByData(datas.N_7310321)
    this:DestroySelf()
end

function Q7310321_RmdTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310321_RmdTrigger
