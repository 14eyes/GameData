require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7082504Trigger = class("Q7082504Trigger", GadgetActorProxy)
Q7082504Trigger.defaultAlias = "Q7082504Trigger"
local Q70825ClientConfig = require("Quest/Client/Q70825ClientConfig")

local subIDs = Q70825ClientConfig.SubIDs
local npcs = Q70825ClientConfig.Npcs
local gadgets = Q70825ClientConfig.Gadgets
local points = Q70825ClientConfig.Points
local datas = Q70825ClientConfig.Datas
local q7082502Trigger = datas.Q7082502Trigger_
local paimonReminder02 = datas.PaimonReminder02
local paimonReminder04 = datas.PaimonReminder04
local paimonReminder06 = datas.PaimonReminder06
local paimonReminder08 = datas.PaimonReminder08
local q7082504Trigger = datas.Q7082504Trigger_
local q7082506Trigger = datas.Q7082506Trigger_

function Q7082504Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7082504Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7082504Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q70825ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7082504)
        self:DestroySelf()
    end
end

function Q7082504Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7082504Trigger
