require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger1_finish7303601 = class("Q73036Trigger1_finish7303601", GadgetActorProxy)
Q73036Trigger1_finish7303601.defaultAlias = "Q73036Trigger1_finish7303601"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger1_finish7303601:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger1_finish7303601:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger1_finish7303601:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303601)
    this:DestroySelf()
end

function Q73036Trigger1_finish7303601:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger1_finish7303601
