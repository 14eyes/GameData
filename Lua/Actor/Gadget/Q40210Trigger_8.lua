require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40210Trigger_8 = class("Q40210Trigger_8", GadgetActorProxy)
Q40210Trigger_8.defaultAlias = "Q40210Trigger_8"
local Q40210ClientConfig = require("Quest/Client/Q40210ClientConfig")

local this
local subIDs = Q40210ClientConfig.SubIDs
local datas = Q40210ClientConfig.Datas
local npcs = Q40210ClientConfig.Npcs
local points = Q40210ClientConfig.Points

function Q40210Trigger_8:OnPostDataPrepare()
    print("Q40210Trigger_8 - OnPostDataPrepare")
    this = self
end

function Q40210Trigger_8:OnPostComponentPrepare()
    print("Q40210Trigger_8 - OnPostComponentPrepare")
    this:AddComponentTrigger(32, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40210)
end

function Q40210Trigger_8:TriggerIn()
    print("Q40210Trigger_8 - TriggerIn")
    actorMgr:GetActor("40210"):DeployStoryByQuest(134021000)
end

function Q40210Trigger_8:PreTriggerIn()
    print("Q40210Trigger_8 - PreTriggerIn")
end

function Q40210Trigger_8:LightUpTriggerIn()
    print("Q40210Trigger_8 - LightUpTriggerIn")
end

function Q40210Trigger_8:TriggerOut()
    print("Q40210Trigger_8 - TriggerOut")
    actorMgr:GetActor("40210"):CancelStoryByQuest(134021000)
end

return Q40210Trigger_8
