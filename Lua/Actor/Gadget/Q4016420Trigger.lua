require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016420Trigger = class("Q4016420Trigger", GadgetActorProxy)
Q4016420Trigger.defaultAlias = "Q4016420Trigger"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016420Trigger:OnPostDataPrepare()
    print("Q4016420Trigger - OnPostDataPrepare")
    this = self
end

function Q4016420Trigger:OnPostComponentPrepare()
    print("Q4016420Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016420Trigger:TriggerIn()
    print("Q4016420Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4016420)
    this:DestroySelf()
end

function Q4016420Trigger:PreTriggerIn()
    print("Q4016420Trigger - PreTriggerIn")
end

function Q4016420Trigger:LightUpTriggerIn()
    print("Q4016420Trigger - LightUpTriggerIn")
end

function Q4016420Trigger:TriggerOut()
    print("Q4016420Trigger - TriggerOut")
end

return Q4016420Trigger
