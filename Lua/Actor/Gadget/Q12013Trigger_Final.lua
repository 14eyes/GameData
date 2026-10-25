require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12013Trigger_Final = class("Q12013Trigger_Final", GadgetActorProxy)
Q12013Trigger_Final.defaultAlias = "Q12013Trigger_Final"
local Q12013ClientConfig = require("Quest/Client/Q12013ClientConfig")

local subIDs = Q12013ClientConfig.SubIDs
local npcs = Q12013ClientConfig.Npcs
local gadgets = Q12013ClientConfig.Gadgets
local datas = Q12013ClientConfig.Datas

function Q12013Trigger_Final:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12013Trigger_Final:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12013Trigger_Final:TriggerIn()
    print("TriggerIn")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("12013"):FinishQuestID(false, 1201308)
    end, nil, nil, "")

    self:DestroySelf()
end

function Q12013Trigger_Final:TriggerOut()
    print("TriggerOut")
end

return Q12013Trigger_Final
