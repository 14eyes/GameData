require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006705_SafeTrigger = class("Q4006705_SafeTrigger", GadgetActorProxy)
Q4006705_SafeTrigger.defaultAlias = "Q4006705_SafeTrigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006705_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006705_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(53.62684, 41.98093, 65, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006705_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006705)
    self:DestroySelf()
end

function Q4006705_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006705_SafeTrigger
