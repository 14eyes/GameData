require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318618EnterTrigger = class("Q7318618EnterTrigger", GadgetActorProxy)
Q7318618EnterTrigger.defaultAlias = "Q7318618EnterTrigger"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318618EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318618EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318618EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73186"):NarratorOnlyTaskByData(datas.Rmd_7318618_fin, function(arg1)
        actorUtils.FinishQuestID(false, 7318618)
    end, 73186)

    this:DestroySelf()
end

function Q7318618EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318618EnterTrigger
