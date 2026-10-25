require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007205_SafeTrigger = class("Q4007205_SafeTrigger", GadgetActorProxy)
Q4007205_SafeTrigger.defaultAlias = "Q4007205_SafeTrigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local datas = Q40072ClientConfig.Datas

function Q4007205_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007205_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(89.46806, 75.52798, 30.76719, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007205_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007205)
    self:DestroySelf()
end

function Q4007205_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4007205_SafeTrigger
