require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7322524TriggerFinish = class("Q7322524TriggerFinish", GadgetActorProxy)
Q7322524TriggerFinish.defaultAlias = "Q7322524TriggerFinish"
local Q73225ClientConfig = require("Quest/Client/Q73225ClientConfig")

local this
local subIDs = Q73225ClientConfig.SubIDs
local npcs = Q73225ClientConfig.Npcs
local datas = Q73225ClientConfig.Datas

function Q7322524TriggerFinish:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7322524TriggerFinish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7322524TriggerFinish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7322524)
    this:DestroySelf()
end

function Q7322524TriggerFinish:TriggerOut()
    print("TriggerOut")
end

return Q7322524TriggerFinish
