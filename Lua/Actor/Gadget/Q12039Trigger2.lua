require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12039Trigger2 = class("Q12039Trigger2", GadgetActorProxy)
Q12039Trigger2.defaultAlias = "Q12039Trigger2"
local Q12039ClientConfig = require("Quest/Client/Q12039ClientConfig")

local subIDs = Q12039ClientConfig.SubIDs
local npcs = Q12039ClientConfig.Npcs

function Q12039Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12039Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12039Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1203920)
    self:DestroySelf()
end

function Q12039Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q12039Trigger2
