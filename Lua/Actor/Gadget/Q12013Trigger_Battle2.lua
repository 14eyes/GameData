require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12013Trigger_Battle2 = class("Q12013Trigger_Battle2", GadgetActorProxy)
Q12013Trigger_Battle2.defaultAlias = "Q12013Trigger_Battle2"
local Q12013ClientConfig = require("Quest/Client/Q12013ClientConfig")

local subIDs = Q12013ClientConfig.SubIDs
local npcs = Q12013ClientConfig.Npcs
local gadgets = Q12013ClientConfig.Gadgets
local datas = Q12013ClientConfig.Datas

function Q12013Trigger_Battle2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12013Trigger_Battle2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12013Trigger_Battle2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12013"):RequestInteraction(npcs.Npc12026Data.alias)
    self:DestroySelf()
end

function Q12013Trigger_Battle2:TriggerOut()
    print("TriggerOut")
end

return Q12013Trigger_Battle2
