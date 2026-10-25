require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007DormTrigger = class("Q3007DormTrigger", GadgetActorProxy)
Q3007DormTrigger.defaultAlias = "Q3007DormTrigger"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007DormTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007DormTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007DormTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300707)
    self:DestroySelf()
end

function Q3007DormTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3007DormTrigger
