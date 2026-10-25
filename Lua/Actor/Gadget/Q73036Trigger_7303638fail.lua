require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger_7303638fail = class("Q73036Trigger_7303638fail", GadgetActorProxy)
Q73036Trigger_7303638fail.defaultAlias = "Q73036Trigger_7303638fail"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger_7303638fail:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger_7303638fail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 200, 100, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger_7303638fail:TriggerIn()
    print("TriggerIn")
end

function Q73036Trigger_7303638fail:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7303638)
    this:DestroySelf()
end

return Q73036Trigger_7303638fail
