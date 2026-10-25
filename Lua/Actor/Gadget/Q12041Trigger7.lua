require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12041Trigger7 = class("Q12041Trigger7", GadgetActorProxy)
Q12041Trigger7.defaultAlias = "Q12041Trigger7"
local Q12041ClientConfig = require("Quest/Client/Q12041ClientConfig")

local subIDs = Q12041ClientConfig.SubIDs
local npcs = Q12041ClientConfig.Npcs
local datas = Q12041ClientConfig.Datas

function Q12041Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12041Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12041Trigger7:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12041"):RequestInteraction(npcs.Npc1005Data.alias)
    self:DestroySelf()
end

function Q12041Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q12041Trigger7
