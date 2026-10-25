require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007611_SafeTrigger = class("Q4007611_SafeTrigger", GadgetActorProxy)
Q4007611_SafeTrigger.defaultAlias = "Q4007611_SafeTrigger"
local Q40076ClientConfig = require("Quest/Client/Q40076ClientConfig")

local subIDs = Q40076ClientConfig.SubIDs
local npcs = Q40076ClientConfig.Npcs
local datas = Q40076ClientConfig.Datas

function Q4007611_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007611_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(50, 50, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007611_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007611)
    self:DestroySelf()
end

function Q4007611_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4007611_SafeTrigger
