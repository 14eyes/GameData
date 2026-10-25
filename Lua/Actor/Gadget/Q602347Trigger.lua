require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602347Trigger = class("Q602347Trigger", GadgetActorProxy)
Q602347Trigger.defaultAlias = "Q602347Trigger"
local Q6023ClientConfig = require("Quest/Client/Q6023ClientConfig")

local this
local subIDs = Q6023ClientConfig.SubIDs
local datas = Q6023ClientConfig.Datas
local npcs = Q6023ClientConfig.Npcs
local points = Q6023ClientConfig.Points

function Q602347Trigger:OnPostDataPrepare()
    print("Q602347Trigger - OnPostDataPrepare")
    this = self
end

function Q602347Trigger:OnPostComponentPrepare()
    print("Q602347Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6023)
end

function Q602347Trigger:TriggerIn()
    print("Q602347Trigger - TriggerIn")
end

function Q602347Trigger:PreTriggerIn()
    print("Q602347Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602347)
    this:DestroySelf()
end

function Q602347Trigger:LightUpTriggerIn()
    print("Q602347Trigger - LightUpTriggerIn")
end

function Q602347Trigger:TriggerOut()
    print("Q602347Trigger - TriggerOut")
end

return Q602347Trigger
