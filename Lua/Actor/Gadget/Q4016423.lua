require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016423 = class("Q4016423", GadgetActorProxy)
Q4016423.defaultAlias = "Q4016423"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016423:OnPostDataPrepare()
    print("Q4016423 - OnPostDataPrepare")
    this = self
end

function Q4016423:OnPostComponentPrepare()
    print("Q4016423 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016423:TriggerIn()
    print("Q4016423 - TriggerIn")
    actorUtils.FinishQuestID(false, 4016423)
    this:DestroySelf()
end

function Q4016423:PreTriggerIn()
    print("Q4016423 - PreTriggerIn")
end

function Q4016423:LightUpTriggerIn()
    print("Q4016423 - LightUpTriggerIn")
end

function Q4016423:TriggerOut()
    print("Q4016423 - TriggerOut")
end

return Q4016423
