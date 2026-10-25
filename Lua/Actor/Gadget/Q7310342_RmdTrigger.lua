require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310342_RmdTrigger = class("Q7310342_RmdTrigger", GadgetActorProxy)
Q7310342_RmdTrigger.defaultAlias = "Q7310342_RmdTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310342_RmdTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310342_RmdTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310342_RmdTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73103")
    actor:ClearNarratorTask()
    actor:NarratorOnlyTaskByData(datas.N_7310342)
    this:DestroySelf()
end

function Q7310342_RmdTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310342_RmdTrigger
