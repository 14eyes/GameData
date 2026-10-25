require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7068401Trigger = class("Q7068401Trigger", GadgetActorProxy)
Q7068401Trigger.defaultAlias = "Q7068401Trigger"
local Q70684ClientConfig = require("Quest/Client/Q70684ClientConfig")

local this
local subIDs = Q70684ClientConfig.SubIDs
local datas = Q70684ClientConfig.Datas
local npcs = Q70684ClientConfig.Npcs
local points = Q70684ClientConfig.Points

function Q7068401Trigger:OnPostDataPrepare()
    print("Q7068401Trigger - OnPostDataPrepare")
    this = self
end

function Q7068401Trigger:OnPostComponentPrepare()
    print("Q7068401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70684)
end

function Q7068401Trigger:TriggerIn()
    print("Q7068401Trigger - TriggerIn")
    actorMgr:GetActor("70684"):QuestNarratorTask(datas.narrator_7068401, nil)
    this:DestroySelf()
end

function Q7068401Trigger:PreTriggerIn()
    print("Q7068401Trigger - PreTriggerIn")
end

function Q7068401Trigger:LightUpTriggerIn()
    print("Q7068401Trigger - LightUpTriggerIn")
end

function Q7068401Trigger:TriggerOut()
    print("Q7068401Trigger - TriggerOut")
end

return Q7068401Trigger
