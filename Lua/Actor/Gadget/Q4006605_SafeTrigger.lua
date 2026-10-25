require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006605_SafeTrigger = class("Q4006605_SafeTrigger", GadgetActorProxy)
Q4006605_SafeTrigger.defaultAlias = "Q4006605_SafeTrigger"
local Q40066ClientConfig = require("Quest/Client/Q40066ClientConfig")

local subIDs = Q40066ClientConfig.SubIDs
local npcs = Q40066ClientConfig.Npcs
local datas = Q40066ClientConfig.Datas

function Q4006605_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006605_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 10, 6, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006605_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006605)
    self:DestroySelf()
end

function Q4006605_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006605_SafeTrigger
