require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310356_EnterTrigger = class("Q7310356_EnterTrigger", GadgetActorProxy)
Q7310356_EnterTrigger.defaultAlias = "Q7310356_EnterTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310356_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310356_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310356_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73103"):NarratorOnlyTaskByData(datas.N7310356, function(arg1)
        actorUtils.FinishQuestID(false, 7310356)
    end)

    this:DestroySelf()
end

function Q7310356_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310356_EnterTrigger
