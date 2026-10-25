require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007305_SafeTrigger = class("Q4007305_SafeTrigger", GadgetActorProxy)
Q4007305_SafeTrigger.defaultAlias = "Q4007305_SafeTrigger"
local Q40073ClientConfig = require("Quest/Client/Q40073ClientConfig")

local subIDs = Q40073ClientConfig.SubIDs
local npcs = Q40073ClientConfig.Npcs
local datas = Q40073ClientConfig.Datas

function Q4007305_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007305_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007305_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007305)
    self:DestroySelf()
end

function Q4007305_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4007305_SafeTrigger
