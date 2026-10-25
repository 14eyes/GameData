require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303515_TriggerIn = class("Q303515_TriggerIn", GadgetActorProxy)
Q303515_TriggerIn.defaultAlias = "Q303515_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303515_TriggerIn:OnPostDataPrepare()
    print("Q303515_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303515_TriggerIn:OnPostComponentPrepare()
    print("Q303515_TriggerIn - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(35, 20, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303515_TriggerIn:TriggerIn()
    print("Q303515_TriggerIn - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {303515})
    this:DestroySelf()
end

function Q303515_TriggerIn:PreTriggerIn()
    print("Q303515_TriggerIn - PreTriggerIn")
end

function Q303515_TriggerIn:LightUpTriggerIn()
    print("Q303515_TriggerIn - LightUpTriggerIn")
end

function Q303515_TriggerIn:TriggerOut()
    print("Q303515_TriggerIn - TriggerOut")
end

return Q303515_TriggerIn
