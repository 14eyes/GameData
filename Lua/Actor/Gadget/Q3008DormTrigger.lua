require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3008DormTrigger = class("Q3008DormTrigger", GadgetActorProxy)
Q3008DormTrigger.defaultAlias = "Q3008DormTrigger"
local Q3008ClientConfig = require("Quest/Client/Q3008ClientConfig")

local subIDs = Q3008ClientConfig.SubIDs
local npcs = Q3008ClientConfig.Npcs
local datas = Q3008ClientConfig.Datas

function Q3008DormTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3008DormTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3008DormTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300808)
    self:DestroySelf()
end

function Q3008DormTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3008DormTrigger
