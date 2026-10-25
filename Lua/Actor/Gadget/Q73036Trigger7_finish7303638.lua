require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger7_finish7303638 = class("Q73036Trigger7_finish7303638", GadgetActorProxy)
Q73036Trigger7_finish7303638.defaultAlias = "Q73036Trigger7_finish7303638"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger7_finish7303638:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger7_finish7303638:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 5, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger7_finish7303638:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303638)
    this:DestroySelf()
end

function Q73036Trigger7_finish7303638:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger7_finish7303638
