require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010308_TriggerIn = class("Q4010308_TriggerIn", GadgetActorProxy)
Q4010308_TriggerIn.defaultAlias = "Q4010308_TriggerIn"
local Q40103ClientConfig = require("Quest/Client/Q40103ClientConfig")

local this
local subIDs = Q40103ClientConfig.SubIDs
local npcs = Q40103ClientConfig.Npcs
local points = Q40103ClientConfig.Points
local datas = Q40103ClientConfig.Datas

function Q4010308_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010308_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 40, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010308_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4010308)
    this:DestroySelf()
end

function Q4010308_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010308_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010308_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010308_TriggerIn
