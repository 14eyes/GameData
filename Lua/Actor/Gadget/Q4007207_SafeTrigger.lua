require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007207_SafeTrigger = class("Q4007207_SafeTrigger", GadgetActorProxy)
Q4007207_SafeTrigger.defaultAlias = "Q4007207_SafeTrigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local datas = Q40072ClientConfig.Datas

function Q4007207_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007207_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(53.34583, 67.52502, 25.13296, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007207_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007207)
    self:DestroySelf()
end

function Q4007207_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4007207_SafeTrigger
