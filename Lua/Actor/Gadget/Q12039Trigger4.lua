require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12039Trigger4 = class("Q12039Trigger4", GadgetActorProxy)
Q12039Trigger4.defaultAlias = "Q12039Trigger4"
local Q12039ClientConfig = require("Quest/Client/Q12039ClientConfig")

local subIDs = Q12039ClientConfig.SubIDs
local npcs = Q12039ClientConfig.Npcs

function Q12039Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12039Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(55, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12039Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12039"):RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q12039Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q12039Trigger4
