require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2502704Trigger = class("Q2502704Trigger", GadgetActorProxy)
Q2502704Trigger.defaultAlias = "Q2502704Trigger"
local Q25027ClientConfig = require("Quest/Client/Q25027ClientConfig")

local this
local subIDs = Q25027ClientConfig.SubIDs
local datas = Q25027ClientConfig.Datas
local npcs = Q25027ClientConfig.Npcs
local points = Q25027ClientConfig.Points

function Q2502704Trigger:OnPostDataPrepare()
    print("Q2502704Trigger - OnPostDataPrepare")
    this = self
end

function Q2502704Trigger:OnPostComponentPrepare()
    print("Q2502704Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25027)
end

function Q2502704Trigger:TriggerIn()
    print("Q2502704Trigger - TriggerIn")
    actorMgr:GetActor("25027"):QuestNarratorTask(datas.Narrator_2502701, nil)
    this:DestroySelf()
end

function Q2502704Trigger:PreTriggerIn()
    print("Q2502704Trigger - PreTriggerIn")
end

function Q2502704Trigger:LightUpTriggerIn()
    print("Q2502704Trigger - LightUpTriggerIn")
end

function Q2502704Trigger:TriggerOut()
    print("Q2502704Trigger - TriggerOut")
end

return Q2502704Trigger
