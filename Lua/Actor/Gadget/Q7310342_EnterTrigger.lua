require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310342_EnterTrigger = class("Q7310342_EnterTrigger", GadgetActorProxy)
Q7310342_EnterTrigger.defaultAlias = "Q7310342_EnterTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310342_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310342_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310342_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7310342)
    actorMgr:GetActor("73103"):NarratorOnlyTaskByData(datas.N_7310343_Enter)
    this:DestroySelf()
end

function Q7310342_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310342_EnterTrigger
