require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501603Trigger = class("Q501603Trigger", GadgetActorProxy)
Q501603Trigger.defaultAlias = "Q501603Trigger"
local Q5016ClientConfig = require("Quest/Client/Q5016ClientConfig")

local this
local subIDs = Q5016ClientConfig.SubIDs
local datas = Q5016ClientConfig.Datas
local npcs = Q5016ClientConfig.Npcs
local points = Q5016ClientConfig.Points

function Q501603Trigger:OnPostDataPrepare()
    print("Q501603Trigger - OnPostDataPrepare")
    this = self
end

function Q501603Trigger:OnPostComponentPrepare()
    print("Q501603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5016)
end

function Q501603Trigger:TriggerIn()
    print("Q501603Trigger - TriggerIn")
    actorMgr:GetActor("5016"):QuestNarratorTask(datas.NarratorWithId501602, nil)
    actorMgr:GetActor("5016"):EnterSceneLookCamera(points.PointQ501603.pos, 0, 5, true, false)
    this:DestroySelf()
end

function Q501603Trigger:PreTriggerIn()
    print("Q501603Trigger - PreTriggerIn")
end

function Q501603Trigger:LightUpTriggerIn()
    print("Q501603Trigger - LightUpTriggerIn")
end

function Q501603Trigger:TriggerOut()
    print("Q501603Trigger - TriggerOut")
end

return Q501603Trigger
