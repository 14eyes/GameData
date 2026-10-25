require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006807_SafeTrigger = class("Q4006807_SafeTrigger", GadgetActorProxy)
Q4006807_SafeTrigger.defaultAlias = "Q4006807_SafeTrigger"
local Q40068ClientConfig = require("Quest/Client/Q40068ClientConfig")

local subIDs = Q40068ClientConfig.SubIDs
local npcs = Q40068ClientConfig.Npcs
local datas = Q40068ClientConfig.Datas

function Q4006807_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006807_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006807_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006807)
    self:DestroySelf()
end

function Q4006807_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006807_SafeTrigger
