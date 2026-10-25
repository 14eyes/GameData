require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73035Trigger_7303508 = class("Q73035Trigger_7303508", GadgetActorProxy)
Q73035Trigger_7303508.defaultAlias = "Q73035Trigger_7303508"
local Q73035ClientConfig = require("Quest/Client/Q73035ClientConfig")

local subIDs = Q73035ClientConfig.SubIDs
local npcs = Q73035ClientConfig.Npcs
local datas = Q73035ClientConfig.Datas

function Q73035Trigger_7303508:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73035Trigger_7303508:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73035Trigger_7303508:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303508)
    self:DestroySelf()
end

function Q73035Trigger_7303508:TriggerOut()
    print("TriggerOut")
end

return Q73035Trigger_7303508
