require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12039Trigger1 = class("Q12039Trigger1", GadgetActorProxy)
Q12039Trigger1.defaultAlias = "Q12039Trigger1"
local Q12039ClientConfig = require("Quest/Client/Q12039ClientConfig")

local subIDs = Q12039ClientConfig.SubIDs
local npcs = Q12039ClientConfig.Npcs

function Q12039Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12039Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12039Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1203902)
    self:DestroySelf()
end

function Q12039Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q12039Trigger1
