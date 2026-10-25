require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120017Trigger = class("Q1120017Trigger", GadgetActorProxy)
Q1120017Trigger.defaultAlias = "Q1120017Trigger"
local Q11200ClientConfig = require("Quest/Client/Q11200ClientConfig")

local mainID = Q11200ClientConfig.MainID
local actorAlias = Q11200ClientConfig.ActorAlias
local subIDs = Q11200ClientConfig.SubIDs
local npcs = Q11200ClientConfig.Npcs
local points = Q11200ClientConfig.Points
local datas = Q11200ClientConfig.Datas

function Q1120017Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120017Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5.868882, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120017Trigger:TriggerIn()
    local actor = actorMgr:GetActor("11200")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120017)
    end

    print("trigger in")
end

function Q1120017Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1120017Trigger
