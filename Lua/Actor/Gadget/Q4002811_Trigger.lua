require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002811_Trigger = class("Q4002811_Trigger", GadgetActorProxy)
Q4002811_Trigger.defaultAlias = "Q4002811_Trigger"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q4002811_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002811_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002811_Trigger:TriggerIn()
    print("TriggerIn")
end

function Q4002811_Trigger:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("40028")
    actor:ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "", false, true)
    actor:FinishQuestID(true, 4002811)
    self:DestroySelf()
end

return Q4002811_Trigger
