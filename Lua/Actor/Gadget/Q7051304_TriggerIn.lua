require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7051304_TriggerIn = class("Q7051304_TriggerIn", GadgetActorProxy)
Q7051304_TriggerIn.defaultAlias = "Q7051304_TriggerIn"
local Q70513ClientConfig = require("Quest/Client/Q70513ClientConfig")

local subIDs = Q70513ClientConfig.SubIDs
local npcs = Q70513ClientConfig.Npcs
local datas = Q70513ClientConfig.Datas

function Q7051304_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7051304_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7051304_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7051304)
    self:DestroySelf()
end

function Q7051304_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q7051304_TriggerIn
