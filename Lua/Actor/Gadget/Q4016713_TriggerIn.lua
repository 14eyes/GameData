require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016713_TriggerIn = class("Q4016713_TriggerIn", GadgetActorProxy)
Q4016713_TriggerIn.defaultAlias = "Q4016713_TriggerIn"
local Q40167ClientConfig = require("Quest/Client/Q40167ClientConfig")

local this
local subIDs = Q40167ClientConfig.SubIDs
local datas = Q40167ClientConfig.Datas
local npcs = Q40167ClientConfig.Npcs
local points = Q40167ClientConfig.Points

function Q4016713_TriggerIn:OnPostDataPrepare()
    print("Q4016713_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q4016713_TriggerIn:OnPostComponentPrepare()
    print("Q4016713_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40167)
end

function Q4016713_TriggerIn:TriggerIn()
    print("Q4016713_TriggerIn - TriggerIn")
    actorUtils.FinishQuestID(false, 4016713)
    this:DestroySelf()
end

function Q4016713_TriggerIn:PreTriggerIn()
    print("Q4016713_TriggerIn - PreTriggerIn")
end

function Q4016713_TriggerIn:LightUpTriggerIn()
    print("Q4016713_TriggerIn - LightUpTriggerIn")
end

function Q4016713_TriggerIn:TriggerOut()
    print("Q4016713_TriggerIn - TriggerOut")
end

return Q4016713_TriggerIn
