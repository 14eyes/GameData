require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger7_finish7303620 = class("Q73036Trigger7_finish7303620", GadgetActorProxy)
Q73036Trigger7_finish7303620.defaultAlias = "Q73036Trigger7_finish7303620"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger7_finish7303620:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73036Trigger7_finish7303620:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger7_finish7303620:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303620)
    self:DestroySelf()
end

function Q73036Trigger7_finish7303620:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger7_finish7303620
