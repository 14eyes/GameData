require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12013Trigger_Battle_Out = class("Q12013Trigger_Battle_Out", GadgetActorProxy)
Q12013Trigger_Battle_Out.defaultAlias = "Q12013Trigger_Battle_Out"
local Q12013ClientConfig = require("Quest/Client/Q12013ClientConfig")

local subIDs = Q12013ClientConfig.SubIDs
local npcs = Q12013ClientConfig.Npcs
local gadgets = Q12013ClientConfig.Gadgets
local datas = Q12013ClientConfig.Datas

function Q12013Trigger_Battle_Out:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12013Trigger_Battle_Out:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12013Trigger_Battle_Out:TriggerIn()
    print("TriggerIn")
end

function Q12013Trigger_Battle_Out:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12013"):FinishQuestID(true, 1201303)
    self:DestroySelf()
end

return Q12013Trigger_Battle_Out
