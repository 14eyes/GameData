require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016432Trigger = class("Q4016432Trigger", GadgetActorProxy)
Q4016432Trigger.defaultAlias = "Q4016432Trigger"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016432Trigger:OnPostDataPrepare()
    print("Q4016432Trigger - OnPostDataPrepare")
    this = self
end

function Q4016432Trigger:OnPostComponentPrepare()
    print("Q4016432Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016432Trigger:TriggerIn()
    print("Q4016432Trigger - TriggerIn")
    actorMgr:GetActor("40164"):TransmitPlayerByQuestId(4016432, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q4016432Trigger:PreTriggerIn()
    print("Q4016432Trigger - PreTriggerIn")
end

function Q4016432Trigger:LightUpTriggerIn()
    print("Q4016432Trigger - LightUpTriggerIn")
end

function Q4016432Trigger:TriggerOut()
    print("Q4016432Trigger - TriggerOut")
end

return Q4016432Trigger
