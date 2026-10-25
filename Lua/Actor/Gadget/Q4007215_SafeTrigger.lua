require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007215_SafeTrigger = class("Q4007215_SafeTrigger", GadgetActorProxy)
Q4007215_SafeTrigger.defaultAlias = "Q4007215_SafeTrigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local datas = Q40072ClientConfig.Datas

function Q4007215_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007215_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(108.1158, 50.94028, 16.75415, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007215_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007215)
    self:DestroySelf()
end

function Q4007215_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4007215_SafeTrigger
