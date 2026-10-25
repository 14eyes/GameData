require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016427Trigger = class("Q4016427Trigger", GadgetActorProxy)
Q4016427Trigger.defaultAlias = "Q4016427Trigger"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016427Trigger:OnPostDataPrepare()
    print("Q4016427Trigger - OnPostDataPrepare")
    this = self
end

function Q4016427Trigger:OnPostComponentPrepare()
    print("Q4016427Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016427Trigger:TriggerIn()
    print("Q4016427Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4016427)
    this:DestroySelf()
end

function Q4016427Trigger:PreTriggerIn()
    print("Q4016427Trigger - PreTriggerIn")
end

function Q4016427Trigger:LightUpTriggerIn()
    print("Q4016427Trigger - LightUpTriggerIn")
end

function Q4016427Trigger:TriggerOut()
    print("Q4016427Trigger - TriggerOut")
end

return Q4016427Trigger
