require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11200Trigger = class("Q11200Trigger", GadgetActorProxy)
Q11200Trigger.defaultAlias = "Q11200Trigger"
local Q11200ClientConfig = require("Quest/Client/Q11200ClientConfig")

local mainID = Q11200ClientConfig.MainID
local actorAlias = Q11200ClientConfig.ActorAlias
local subIDs = Q11200ClientConfig.SubIDs
local npcs = Q11200ClientConfig.Npcs
local points = Q11200ClientConfig.Points
local datas = Q11200ClientConfig.Datas

function Q11200Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11200Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15.17213, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11200Trigger:TriggerIn()
    print("TriggerIn")
    self:StartTalk()
end

function Q11200Trigger:TriggerOut()
    print("TriggerOut")
end

function Q11200Trigger:StartTalk()
    actorMgr:GetActor("11200"):RequestInteraction(Npc10233Data.alias)
    print("request interaction")
end

return Q11200Trigger
