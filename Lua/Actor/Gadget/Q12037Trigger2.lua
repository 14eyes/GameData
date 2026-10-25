require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12037Trigger2 = class("Q12037Trigger2", GadgetActorProxy)
Q12037Trigger2.defaultAlias = "Q12037Trigger2"
local Q12037ClientConfig = require("Quest/Client/Q12037ClientConfig")

local subIDs = Q12037ClientConfig.SubIDs
local npcs = Q12037ClientConfig.Npcs
local datas = Q12037ClientConfig.Datas

function Q12037Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12037Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12037Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12037"):RequestInteraction(npcs.Npc12589Data.alias)
    self:DestroySelf()
end

function Q12037Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q12037Trigger2
