require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12013Trigger_Battle = class("Q12013Trigger_Battle", GadgetActorProxy)
Q12013Trigger_Battle.defaultAlias = "Q12013Trigger_Battle"
local Q12013ClientConfig = require("Quest/Client/Q12013ClientConfig")

local subIDs = Q12013ClientConfig.SubIDs
local npcs = Q12013ClientConfig.Npcs
local gadgets = Q12013ClientConfig.Gadgets
local datas = Q12013ClientConfig.Datas

function Q12013Trigger_Battle:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12013Trigger_Battle:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12013Trigger_Battle:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12013"):FinishQuestID(false, 1201311)
    self:DestroySelf()
end

function Q12013Trigger_Battle:TriggerOut()
    print("TriggerOut")
end

return Q12013Trigger_Battle
