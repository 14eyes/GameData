require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007216_SafeTrigger = class("Q4007216_SafeTrigger", GadgetActorProxy)
Q4007216_SafeTrigger.defaultAlias = "Q4007216_SafeTrigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local datas = Q40072ClientConfig.Datas

function Q4007216_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007216_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(50, 50, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007216_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007216)
    self:DestroySelf()
end

function Q4007216_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4007216_SafeTrigger
