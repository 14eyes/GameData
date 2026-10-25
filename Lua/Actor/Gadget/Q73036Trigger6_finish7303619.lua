require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger6_finish7303619 = class("Q73036Trigger6_finish7303619", GadgetActorProxy)
Q73036Trigger6_finish7303619.defaultAlias = "Q73036Trigger6_finish7303619"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger6_finish7303619:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73036Trigger6_finish7303619:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(35, 30.48796, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger6_finish7303619:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(true, 7303620)
end

function Q73036Trigger6_finish7303619:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 7303619)
end

return Q73036Trigger6_finish7303619
