require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12013Trigger_Children = class("Q12013Trigger_Children", GadgetActorProxy)
Q12013Trigger_Children.defaultAlias = "Q12013Trigger_Children"
local Q12013ClientConfig = require("Quest/Client/Q12013ClientConfig")

local subIDs = Q12013ClientConfig.SubIDs
local npcs = Q12013ClientConfig.Npcs
local gadgets = Q12013ClientConfig.Gadgets
local datas = Q12013ClientConfig.Datas

function Q12013Trigger_Children:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12013Trigger_Children:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12013Trigger_Children:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12013"):FinishQuestID(false, 1201310)
    self:DestroySelf()
end

function Q12013Trigger_Children:TriggerOut()
    print("TriggerOut")
end

return Q12013Trigger_Children
