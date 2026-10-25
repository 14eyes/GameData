require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7103504Trigger = class("Q7103504Trigger", GadgetActorProxy)
Q7103504Trigger.defaultAlias = "Q7103504Trigger"
local Q71035ClientConfig = require("Quest/Client/Q71035ClientConfig")

local subIDs = Q71035ClientConfig.SubIDs
local npcs = Q71035ClientConfig.Npcs
local datas = Q71035ClientConfig.Datas

function Q7103504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7103504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7103504Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71035"):FinishQuestID(false, 7103504)
end

function Q7103504Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7103504Trigger
