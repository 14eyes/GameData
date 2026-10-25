require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006717_SafeTrigger = class("Q4006717_SafeTrigger", GadgetActorProxy)
Q4006717_SafeTrigger.defaultAlias = "Q4006717_SafeTrigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006717_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006717_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(75.01516, 71.88142, 40.18171, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006717_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006717)
    self:DestroySelf()
end

function Q4006717_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006717_SafeTrigger
