require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73289Trigger5 = class("Q73289Trigger5", GadgetActorProxy)
Q73289Trigger5.defaultAlias = "Q73289Trigger5"
local Q73289ClientConfig = require("Quest/Client/Q73289ClientConfig")

local subIDs = Q73289ClientConfig.SubIDs
local npcs = Q73289ClientConfig.Npcs
local datas = Q73289ClientConfig.Datas

function Q73289Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73289Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73289Trigger5:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328931)
    self:DestroySelf()
end

function Q73289Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q73289Trigger5
