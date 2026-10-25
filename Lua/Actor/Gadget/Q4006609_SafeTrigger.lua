require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006609_SafeTrigger = class("Q4006609_SafeTrigger", GadgetActorProxy)
Q4006609_SafeTrigger.defaultAlias = "Q4006609_SafeTrigger"
local Q40066ClientConfig = require("Quest/Client/Q40066ClientConfig")

local subIDs = Q40066ClientConfig.SubIDs
local npcs = Q40066ClientConfig.Npcs
local datas = Q40066ClientConfig.Datas

function Q4006609_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006609_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 10, 9, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006609_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006609)
    self:DestroySelf()
end

function Q4006609_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006609_SafeTrigger
