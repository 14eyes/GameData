require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010207_TriggerIn = class("Q4010207_TriggerIn", GadgetActorProxy)
Q4010207_TriggerIn.defaultAlias = "Q4010207_TriggerIn"
local Q40102ClientConfig = require("Quest/Client/Q40102ClientConfig")

local this
local subIDs = Q40102ClientConfig.SubIDs
local npcs = Q40102ClientConfig.Npcs
local points = Q40102ClientConfig.Points
local datas = Q40102ClientConfig.Datas

function Q4010207_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010207_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(18, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010207_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4010207)
    this:DestroySelf()
end

function Q4010207_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010207_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010207_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010207_TriggerIn
