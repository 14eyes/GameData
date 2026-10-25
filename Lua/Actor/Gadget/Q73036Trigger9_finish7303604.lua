require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger9_finish7303604 = class("Q73036Trigger9_finish7303604", GadgetActorProxy)
Q73036Trigger9_finish7303604.defaultAlias = "Q73036Trigger9_finish7303604"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger9_finish7303604:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger9_finish7303604:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger9_finish7303604:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303604)
    this:DestroySelf()
end

function Q73036Trigger9_finish7303604:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger9_finish7303604
