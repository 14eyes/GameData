require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7304603jumpTrigger = class("Q7304603jumpTrigger", GadgetActorProxy)
Q7304603jumpTrigger.defaultAlias = "Q7304603jumpTrigger"
local Q73046ClientConfig = require("Quest/Client/Q73046ClientConfig")

local subIDs = Q73046ClientConfig.SubIDs
local npcs = Q73046ClientConfig.Npcs
local datas = Q73046ClientConfig.Datas

function Q7304603jumpTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7304603jumpTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7304603jumpTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7304603)
    self:DestroySelf()
end

function Q7304603jumpTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7304603jumpTrigger
