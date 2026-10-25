require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7304601jumpTrigger = class("Q7304601jumpTrigger", GadgetActorProxy)
Q7304601jumpTrigger.defaultAlias = "Q7304601jumpTrigger"
local Q73046ClientConfig = require("Quest/Client/Q73046ClientConfig")

local subIDs = Q73046ClientConfig.SubIDs
local npcs = Q73046ClientConfig.Npcs
local datas = Q73046ClientConfig.Datas

function Q7304601jumpTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7304601jumpTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(50, 140, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7304601jumpTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7304601)
    self:DestroySelf()
end

function Q7304601jumpTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7304601jumpTrigger
