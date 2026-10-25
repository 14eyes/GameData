require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318724_EnterTrigger = class("Q7318724_EnterTrigger", GadgetActorProxy)
Q7318724_EnterTrigger.defaultAlias = "Q7318724_EnterTrigger"
local Q73187ClientConfig = require("Quest/Client/Q73187ClientConfig")

local this
local subIDs = Q73187ClientConfig.SubIDs
local npcs = Q73187ClientConfig.Npcs
local datas = Q73187ClientConfig.Datas

function Q7318724_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318724_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318724_EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73187"):NarratorOnlyTaskByData(datas.s7318724_Rmd, function(arg1)
        actorUtils.FinishQuestID(false, 7318724)
    end)

    this:DestroySelf()
end

function Q7318724_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318724_EnterTrigger
