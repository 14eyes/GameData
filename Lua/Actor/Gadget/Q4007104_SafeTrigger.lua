require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007104_SafeTrigger = class("Q4007104_SafeTrigger", GadgetActorProxy)
Q4007104_SafeTrigger.defaultAlias = "Q4007104_SafeTrigger"
local Q40071ClientConfig = require("Quest/Client/Q40071ClientConfig")

local subIDs = Q40071ClientConfig.SubIDs
local npcs = Q40071ClientConfig.Npcs
local datas = Q40071ClientConfig.Datas

function Q4007104_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007104_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(23, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007104_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007104)
    self:DestroySelf()
end

function Q4007104_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4007104_SafeTrigger
