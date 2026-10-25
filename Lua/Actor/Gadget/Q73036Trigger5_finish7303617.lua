require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger5_finish7303617 = class("Q73036Trigger5_finish7303617", GadgetActorProxy)
Q73036Trigger5_finish7303617.defaultAlias = "Q73036Trigger5_finish7303617"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger5_finish7303617:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73036Trigger5_finish7303617:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(44.02415, 41.74923, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger5_finish7303617:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303617)
    self:DestroySelf()
end

function Q73036Trigger5_finish7303617:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger5_finish7303617
