require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310350_EnterTrigger = class("Q7310350_EnterTrigger", GadgetActorProxy)
Q7310350_EnterTrigger.defaultAlias = "Q7310350_EnterTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310350_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310350_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310350_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7310350)
    actorMgr:GetActor("73103"):NarratorOnlyTaskByData(datas.N_7310350R2)
    this:DestroySelf()
end

function Q7310350_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310350_EnterTrigger
