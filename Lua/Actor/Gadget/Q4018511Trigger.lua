require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018511Trigger = class("Q4018511Trigger", GadgetActorProxy)
Q4018511Trigger.defaultAlias = "Q4018511Trigger"
local Q40185ClientConfig = require("Quest/Client/Q40185ClientConfig")

local this
local subIDs = Q40185ClientConfig.SubIDs
local datas = Q40185ClientConfig.Datas
local npcs = Q40185ClientConfig.Npcs
local points = Q40185ClientConfig.Points

function Q4018511Trigger:OnPostDataPrepare()
    print("Q4018511Trigger - OnPostDataPrepare")
    this = self
end

function Q4018511Trigger:OnPostComponentPrepare()
    print("Q4018511Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40185)
end

function Q4018511Trigger:TriggerIn()
    print("Q4018511Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4018511)
    this:DestroySelf()
end

function Q4018511Trigger:PreTriggerIn()
    print("Q4018511Trigger - PreTriggerIn")
end

function Q4018511Trigger:LightUpTriggerIn()
    print("Q4018511Trigger - LightUpTriggerIn")
end

function Q4018511Trigger:TriggerOut()
    print("Q4018511Trigger - TriggerOut")
end

return Q4018511Trigger
