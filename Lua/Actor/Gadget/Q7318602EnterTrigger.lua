require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318602EnterTrigger = class("Q7318602EnterTrigger", GadgetActorProxy)
Q7318602EnterTrigger.defaultAlias = "Q7318602EnterTrigger"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318602EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318602EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318602EnterTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73186"):NarratorOnlyTaskByData(datas.Rmd_7318602, function(arg1)
        actorUtils.FinishQuestID(false, 7318602)
    end)

    this:DestroySelf()
end

function Q7318602EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318602EnterTrigger
