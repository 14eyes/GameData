require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016455Trigger = class("Q4016455Trigger", GadgetActorProxy)
Q4016455Trigger.defaultAlias = "Q4016455Trigger"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016455Trigger:OnPostDataPrepare()
    print("Q4016455Trigger - OnPostDataPrepare")
    this = self
end

function Q4016455Trigger:OnPostComponentPrepare()
    print("Q4016455Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016455Trigger:TriggerIn()
    print("Q4016455Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4016455)
    this:DestroySelf()
end

function Q4016455Trigger:PreTriggerIn()
    print("Q4016455Trigger - PreTriggerIn")
end

function Q4016455Trigger:LightUpTriggerIn()
    print("Q4016455Trigger - LightUpTriggerIn")
end

function Q4016455Trigger:TriggerOut()
    print("Q4016455Trigger - TriggerOut")
end

return Q4016455Trigger
